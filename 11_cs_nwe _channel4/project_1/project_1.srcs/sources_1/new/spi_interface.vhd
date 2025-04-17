----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/04/29 15:33:27
-- Design Name: 
-- Module Name: spi_interface - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_interface is
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
end spi_interface;

architecture Behavioral of spi_interface is
	type state is (idle, run);
	signal current_state : state   := idle;
	signal next_state    : state   := idle;
	constant num1        : integer := clock_division_ratio / 2;
	signal old_ready     : std_logic;
	signal cnt_num       : integer := 0;
	signal w_data        : std_logic_vector(35 downto 0);
	signal sclk_reg      : std_logic;
begin

	sclk   <= sclk_reg;
	w_data <= addr & x"0" & data_in when addr(15)='1' else addr & x"00000";

	process(clk)
	begin
		if (rising_edge(clk)) then
			old_ready <= ready;
		end if;
	end process;

	process(clk)
	begin
		if (rising_edge(clk)) then
			current_state <= next_state;
		end if;
	end process;

	process(current_state,old_ready,ready,cnt_num,rst)
	begin
		if (rst='1') then
			next_state <= idle;
		else
			case (current_state) is
				when idle =>
					if (old_ready='0' and ready='1') then
						next_state <= run;
					else
						next_state <= idle;
					end if;
				when run =>
					if (cnt_num=36) then
						next_state <= idle;
					else
						next_state <= run;
					end if;
				when others =>
					next_state <= idle;
			end case;
		end if;
	end process;

	process(clk)
		variable cnt_clk : integer := 0;
	begin
		if (rising_edge(clk)) then
			case (next_state) is
				when idle =>
					cnt_clk  := 0;
					cnt_num  <= 0;
					cs_n     <= '1';
					sclk_reg <= '0';
					mosi     <= '0';
					busy     <= '0';
				when run =>
					busy <= '1';
					cs_n <= '0';
					if (cnt_clk<clock_division_ratio-1) then
						cnt_clk := cnt_clk+1;
					else
						cnt_num <= cnt_num + 1;
						cnt_clk := 0;
					end if;
					if (cnt_clk < num1) then
						sclk_reg <= '0';
					else
						sclk_reg <= '1';
					end if;
					mosi <= w_data(35-cnt_num);
					if (cnt_num>=19 and cnt_num <= 34 and sclk_reg='1') then
						data_out(34-cnt_num) <= miso;
					end if;
				when others =>
					null;
			end case;
		end if;
	end process;
end Behavioral;
