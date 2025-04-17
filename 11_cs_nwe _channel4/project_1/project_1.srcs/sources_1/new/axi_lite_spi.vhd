library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_lite_spi is
	generic (
		-- users to add parameters here

		-- user parameters ends
		-- do not modify the parameters beyond this line

		-- width of s_axi data bus
		c_s_axi_data_width : integer := 32;
		-- width of s_axi address bus
		c_s_axi_addr_width : integer := 6
	);
	port (
		-- users to add ports here

		-- user ports ends
		-- do not modify the ports beyond this line

		-- global clock signal
		s_axi_aclk : in std_logic;
		-- global reset signal. this signal is active low
		s_axi_aresetn : in std_logic;
		-- write address (issued by master, acceped by slave)
		s_axi_awaddr : in std_logic_vector(c_s_axi_addr_width-1 downto 0);
		-- write channel protection type. this signal indicates the
		-- privilege and security level of the transaction, and whether
		-- the transaction is a data access or an instruction access.
		s_axi_awprot : in std_logic_vector(2 downto 0);
		-- write address valid. this signal indicates that the master signaling
		-- valid write address and control information.
		s_axi_awvalid : in std_logic;
		-- write address ready. this signal indicates that the slave is ready
		-- to accept an address and associated control signals.
		s_axi_awready : out std_logic;
		-- write data (issued by master, acceped by slave) 
		s_axi_wdata : in std_logic_vector(c_s_axi_data_width-1 downto 0);
		-- write strobes. this signal indicates which byte lanes hold
		-- valid data. there is one write strobe bit for each eight
		-- bits of the write data bus.    
		s_axi_wstrb : in std_logic_vector((c_s_axi_data_width/8)-1 downto 0);
		-- write valid. this signal indicates that valid write
		-- data and strobes are available.
		s_axi_wvalid : in std_logic;
		-- write ready. this signal indicates that the slave
		-- can accept the write data.
		s_axi_wready : out std_logic;
		-- write response. this signal indicates the status
		-- of the write transaction.
		s_axi_bresp : out std_logic_vector(1 downto 0);
		-- write response valid. this signal indicates that the channel
		-- is signaling a valid write response.
		s_axi_bvalid : out std_logic;
		-- response ready. this signal indicates that the master
		-- can accept a write response.
		s_axi_bready : in std_logic;
		-- read address (issued by master, acceped by slave)
		s_axi_araddr : in std_logic_vector(c_s_axi_addr_width-1 downto 0);
		-- protection type. this signal indicates the privilege
		-- and security level of the transaction, and whether the
		-- transaction is a data access or an instruction access.
		s_axi_arprot : in std_logic_vector(2 downto 0);
		-- read address valid. this signal indicates that the channel
		-- is signaling valid read address and control information.
		s_axi_arvalid : in std_logic;
		-- read address ready. this signal indicates that the slave is
		-- ready to accept an address and associated control signals.
		s_axi_arready : out std_logic;
		-- read data (issued by slave)
		s_axi_rdata : out std_logic_vector(c_s_axi_data_width-1 downto 0);
		-- read response. this signal indicates the status of the
		-- read transfer.
		s_axi_rresp : out std_logic_vector(1 downto 0);
		-- read valid. this signal indicates that the channel is
		-- signaling the required read data.
		s_axi_rvalid : out std_logic;
		-- read ready. this signal indicates that the master can
		-- accept the read data and response information.
		s_axi_rready : in std_logic;

		rst  : out std_logic;
		sclk : out std_logic;
		cs_n : out std_logic;
		mosi : out std_logic;
		miso : in  std_logic
	);
end axi_lite_spi;

architecture arch_imp of axi_lite_spi is

	-- axi4lite signals
	signal axi_awaddr  : std_logic_vector(c_s_axi_addr_width-1 downto 0);
	signal axi_awready : std_logic;
	signal axi_wready  : std_logic;
	signal axi_bresp   : std_logic_vector(1 downto 0);
	signal axi_bvalid  : std_logic;
	signal axi_araddr  : std_logic_vector(c_s_axi_addr_width-1 downto 0);
	signal axi_arready : std_logic;
	signal axi_rdata   : std_logic_vector(c_s_axi_data_width-1 downto 0);
	signal axi_rresp   : std_logic_vector(1 downto 0);
	signal axi_rvalid  : std_logic;

	-- example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit c_s_axi_data_width
	-- addr_lsb is used for addressing 32/64 bit registers/memories
	-- addr_lsb = 2 for 32 bits (n downto 2)
	-- addr_lsb = 3 for 64 bits (n downto 3)
	constant addr_lsb          : integer := (c_s_axi_data_width/32)+ 1;
	constant opt_mem_addr_bits : integer := 3;
	------------------------------------------------
	---- signals for user logic register space example
	--------------------------------------------------
	---- number of slave registers 16
	signal slv_reg0     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x00
	signal slv_reg1     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x04
	signal slv_reg2     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x08
	signal slv_reg3     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x0c
	signal slv_reg4     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x10
	signal slv_reg5     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x14
	signal slv_reg6     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x18
	signal slv_reg7     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x1c
	signal slv_reg8     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x20
	signal slv_reg9     : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x24
	signal slv_reg10    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x28
	signal slv_reg11    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x2c
	signal slv_reg12    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x30
	signal slv_reg13    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x34
	signal slv_reg14    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x38
	signal slv_reg15    : std_logic_vector(c_s_axi_data_width-1 downto 0); --0x3c
	signal slv_reg_rden : std_logic;
	signal slv_reg_wren : std_logic;
	signal reg_data_out : std_logic_vector(c_s_axi_data_width-1 downto 0);
	signal byte_index   : integer;
	signal aw_en        : std_logic;

	component spi_interface is
		generic
		(
			number_of_nop        : integer := 4;
			clock_division_ratio : integer := 100
		);
		port
		(
			rst      : in  std_logic;
			clk      : in  std_logic;
			addr     : in  std_logic_vector (15 downto 0);
			data_in  : in  std_logic_vector (15 downto 0);
			data_out : out std_logic_vector (15 downto 0);
			ready    : in  std_logic;
			busy     : out std_logic;
			sclk     : out std_logic;
			cs_n     : out std_logic;
			mosi     : out std_logic;
			miso     : in  std_logic
		);
	end component spi_interface;

	signal rst_reg      : std_logic;                     --0x00
	signal wr_reg       : std_logic;                     --0x04
	signal addr_reg     : std_logic_vector(15 downto 0); --0x08
	signal data_in_reg  : std_logic_vector(15 downto 0); --0x0c
	signal data_out_reg : std_logic_vector(15 downto 0); --0x10
	signal ready_reg    : std_logic;                     --0x14
	signal busy_reg     : std_logic;                     --0x18
begin
	-- i/o connections assignments

	s_axi_awready <= axi_awready;
	s_axi_wready  <= axi_wready;
	s_axi_bresp   <= axi_bresp;
	s_axi_bvalid  <= axi_bvalid;
	s_axi_arready <= axi_arready;
	s_axi_rdata   <= axi_rdata;
	s_axi_rresp   <= axi_rresp;
	s_axi_rvalid  <= axi_rvalid;
	-- implement axi_awready generation
	-- axi_awready is asserted for one s_axi_aclk clock cycle when both
	-- s_axi_awvalid and s_axi_wvalid are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_awready <= '0';
				aw_en       <= '1';
			else
				if (axi_awready = '0' and s_axi_awvalid = '1' and s_axi_wvalid = '1' and aw_en = '1') then
					-- slave is ready to accept write address when
					-- there is a valid write address and write data
					-- on the write address and data bus. this design 
					-- expects no outstanding transactions. 
					axi_awready <= '1';
					aw_en       <= '0';
				elsif (s_axi_bready = '1' and axi_bvalid = '1') then
					aw_en       <= '1';
					axi_awready <= '0';
				else
					axi_awready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- implement axi_awaddr latching
	-- this process is used to latch the address when both 
	-- s_axi_awvalid and s_axi_wvalid are valid. 

	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_awaddr <= (others => '0');
			else
				if (axi_awready = '0' and s_axi_awvalid = '1' and s_axi_wvalid = '1' and aw_en = '1') then
					-- write address latching
					axi_awaddr <= s_axi_awaddr;
				end if;
			end if;
		end if;
	end process;

	-- implement axi_wready generation
	-- axi_wready is asserted for one s_axi_aclk clock cycle when both
	-- s_axi_awvalid and s_axi_wvalid are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_wready <= '0';
			else
				if (axi_wready = '0' and s_axi_wvalid = '1' and s_axi_awvalid = '1' and aw_en = '1') then
					-- slave is ready to accept write data when 
					-- there is a valid write address and write data
					-- on the write address and data bus. this design 
					-- expects no outstanding transactions.           
					axi_wready <= '1';
				else
					axi_wready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- implement memory mapped register select and write logic generation
	-- the write data is accepted and written to memory mapped registers when
	-- axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. write strobes are used to
	-- select byte enables of slave registers while writing.
	-- these registers are cleared when reset (active low) is applied.
	-- slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and s_axi_wvalid and axi_awready and s_axi_awvalid ;

	process (s_axi_aclk)
		variable loc_addr : std_logic_vector(opt_mem_addr_bits downto 0);
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				slv_reg0  <= (others => '0');
				slv_reg1  <= (others => '0');
				slv_reg2  <= (others => '0');
				slv_reg3  <= (others => '0');
				slv_reg4  <= (others => '0');
				slv_reg5  <= (others => '0');
				slv_reg6  <= (others => '0');
				slv_reg7  <= (others => '0');
				slv_reg8  <= (others => '0');
				slv_reg9  <= (others => '0');
				slv_reg10 <= (others => '0');
				slv_reg11 <= (others => '0');
				slv_reg12 <= (others => '0');
				slv_reg13 <= (others => '0');
				slv_reg14 <= (others => '0');
				slv_reg15 <= (others => '0');
			else
				loc_addr := axi_awaddr(addr_lsb + opt_mem_addr_bits downto addr_lsb);
				if (slv_reg_wren = '1') then
					case loc_addr is
						when b"0000" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 0
									slv_reg0(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0001" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 1
									slv_reg1(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0010" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 2
									slv_reg2(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0011" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 3
									slv_reg3(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0100" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 4
									slv_reg4(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0101" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 5
									slv_reg5(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0110" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 6
									slv_reg6(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"0111" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 7
									slv_reg7(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1000" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 8
									slv_reg8(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1001" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 9
									slv_reg9(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1010" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 10
									slv_reg10(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1011" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 11
									slv_reg11(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1100" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 12
									slv_reg12(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1101" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 13
									slv_reg13(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1110" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 14
									slv_reg14(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"1111" =>
							for byte_index in 0 to (c_s_axi_data_width/8-1) loop
								if ( s_axi_wstrb(byte_index) = '1' ) then
									-- respective byte enables are asserted as per write strobes                   
									-- slave registor 15
									slv_reg15(byte_index*8+7 downto byte_index*8) <= s_axi_wdata(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when others =>
							slv_reg0  <= slv_reg0;
							slv_reg1  <= slv_reg1;
							slv_reg2  <= slv_reg2;
							slv_reg3  <= slv_reg3;
							slv_reg4  <= slv_reg4;
							slv_reg5  <= slv_reg5;
							slv_reg6  <= slv_reg6;
							slv_reg7  <= slv_reg7;
							slv_reg8  <= slv_reg8;
							slv_reg9  <= slv_reg9;
							slv_reg10 <= slv_reg10;
							slv_reg11 <= slv_reg11;
							slv_reg12 <= slv_reg12;
							slv_reg13 <= slv_reg13;
							slv_reg14 <= slv_reg14;
							slv_reg15 <= slv_reg15;
					end case;
				end if;
			end if;
		end if;
	end process;

	-- implement write response logic generation
	-- the write response and response valid signals are asserted by the slave 
	-- when axi_wready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted.  
	-- this marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_bvalid <= '0';
				axi_bresp  <= "00"; --need to work more on the responses
			else
				if (axi_awready = '1' and s_axi_awvalid = '1' and axi_wready = '1' and s_axi_wvalid = '1' and axi_bvalid = '0' ) then
					axi_bvalid <= '1';
					axi_bresp  <= "00";
				elsif (s_axi_bready = '1' and axi_bvalid = '1') then --check if bready is asserted while bvalid is high)
					axi_bvalid <= '0';                               -- (there is a possibility that bready is always asserted high)
				end if;
			end if;
		end if;
	end process;

	-- implement axi_arready generation
	-- axi_arready is asserted for one s_axi_aclk clock cycle when
	-- s_axi_arvalid is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- the read address is also latched when s_axi_arvalid is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_arready <= '0';
				axi_araddr  <= (others => '1');
			else
				if (axi_arready = '0' and s_axi_arvalid = '1') then
					-- indicates that the slave has acceped the valid read address
					axi_arready <= '1';
					-- read address latching 
					axi_araddr <= s_axi_araddr;
				else
					axi_arready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- implement axi_arvalid generation
	-- axi_rvalid is asserted for one s_axi_aclk clock cycle when both 
	-- s_axi_arvalid and axi_arready are asserted. the slave registers 
	-- data are available on the axi_rdata bus at this instance. the 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (s_axi_aclk)
	begin
		if rising_edge(s_axi_aclk) then
			if s_axi_aresetn = '0' then
				axi_rvalid <= '0';
				axi_rresp  <= "00";
			else
				if (axi_arready = '1' and s_axi_arvalid = '1' and axi_rvalid = '0') then
					-- valid read data is available at the read data bus
					axi_rvalid <= '1';
					axi_rresp  <= "00"; -- 'okay' response
				elsif (axi_rvalid = '1' and s_axi_rready = '1') then
					-- read data is accepted by the master
					axi_rvalid <= '0';
				end if;
			end if;
		end if;
	end process;

	-- implement memory mapped register select and read logic generation
	-- slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and s_axi_arvalid and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, axi_araddr, s_axi_aresetn, slv_reg_rden)
		variable loc_addr : std_logic_vector(opt_mem_addr_bits downto 0);
	begin
		-- address decoding for reading registers
		loc_addr := axi_araddr(addr_lsb + opt_mem_addr_bits downto addr_lsb);
		case loc_addr is
			when b"0000" =>
				reg_data_out <= slv_reg0;
			when b"0001" =>
				reg_data_out <= slv_reg1;
			when b"0010" =>
				reg_data_out <= slv_reg2;
			when b"0011" =>
				reg_data_out <= slv_reg3;
			when b"0100" =>
				reg_data_out <= x"0000" & data_out_reg;
			when b"0101" =>
				reg_data_out <= slv_reg5;
			when b"0110" =>
				reg_data_out <= x"0000000" & b"000" & busy_reg;
			when b"0111" =>
				reg_data_out <= slv_reg7;
			when b"1000" =>
				reg_data_out <= slv_reg8;
			when b"1001" =>
				reg_data_out <= slv_reg9;
			when b"1010" =>
				reg_data_out <= slv_reg10;
			when b"1011" =>
				reg_data_out <= slv_reg11;
			when b"1100" =>
				reg_data_out <= slv_reg12;
			when b"1101" =>
				reg_data_out <= slv_reg13;
			when b"1110" =>
				reg_data_out <= slv_reg14;
			when b"1111" =>
				reg_data_out <= slv_reg15;
			when others =>
				reg_data_out <= (others => '0');
		end case;
	end process;

	-- output register or memory read data
	process( s_axi_aclk ) is
	begin
		if (rising_edge (s_axi_aclk)) then
			if ( s_axi_aresetn = '0' ) then
				axi_rdata <= (others => '0');
			else
				if (slv_reg_rden = '1') then
					-- when there is a valid read address (s_axi_arvalid) with 
					-- acceptance of read address by the slave (axi_arready), 
					-- output the read dada 
					-- read address mux
					axi_rdata <= reg_data_out; -- register read data
				end if;
			end if;
		end if;
	end process;


	-- add user logic here
	rst_reg     <= slv_reg0(0);                    --0x00
	wr_reg      <= slv_reg1(0);                    --0x04
	addr_reg    <= wr_reg & slv_reg2(14 downto 0); --0x08
	data_in_reg <= slv_reg3(15 downto 0);          --0x0c
	ready_reg   <= slv_reg5(0);                    --0x14

	rst <= rst_reg;

	spi_interface_1 : spi_interface
		generic map
		(
			number_of_nop        => 4,
			clock_division_ratio => 100
		)
		port map
		(
			rst      => rst_reg,
			clk      => s_axi_aclk,
			addr     => addr_reg,
			data_in  => data_in_reg,
			data_out => data_out_reg,
			ready    => ready_reg,
			busy     => busy_reg,
			sclk     => sclk,
			cs_n     => cs_n,
			mosi     => mosi,
			miso     => miso
		);
	-- user logic ends

end arch_imp;
