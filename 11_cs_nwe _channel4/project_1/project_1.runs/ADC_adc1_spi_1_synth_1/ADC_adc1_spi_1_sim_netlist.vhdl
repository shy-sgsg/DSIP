-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu May 16 19:27:38 2024
-- Host        : GL-0301-950 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_adc1_spi_1_sim_netlist.vhdl
-- Design      : ADC_adc1_spi_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface is
  port (
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mosi_i_6_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[15]_i_2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    miso : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface is
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal cnt_clk : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \cnt_clk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_clk1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_clk1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_clk1_carry__2_n_3\ : STD_LOGIC;
  signal cnt_clk1_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_5_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_6_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_i_7_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_n_0 : STD_LOGIC;
  signal cnt_clk1_carry_n_1 : STD_LOGIC;
  signal cnt_clk1_carry_n_2 : STD_LOGIC;
  signal cnt_clk1_carry_n_3 : STD_LOGIC;
  signal \cnt_clk[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[28]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[28]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_clk[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_clk_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_clk_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_num[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_num[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[28]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[28]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_num[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_num[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_num[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_num_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_num_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_num_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cs_n_i_1_n_0 : STD_LOGIC;
  signal current_state_i_10_n_0 : STD_LOGIC;
  signal current_state_i_2_n_0 : STD_LOGIC;
  signal current_state_i_3_n_0 : STD_LOGIC;
  signal current_state_i_4_n_0 : STD_LOGIC;
  signal current_state_i_5_n_0 : STD_LOGIC;
  signal current_state_i_6_n_0 : STD_LOGIC;
  signal current_state_i_7_n_0 : STD_LOGIC;
  signal current_state_i_8_n_0 : STD_LOGIC;
  signal current_state_i_9_n_0 : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_out1__1\ : STD_LOGIC;
  signal data_out3 : STD_LOGIC;
  signal data_out32_in : STD_LOGIC;
  signal \data_out3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_n_1\ : STD_LOGIC;
  signal \data_out3_carry__0_n_2\ : STD_LOGIC;
  signal \data_out3_carry__0_n_3\ : STD_LOGIC;
  signal \data_out3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out3_carry__1_n_0\ : STD_LOGIC;
  signal \data_out3_carry__1_n_1\ : STD_LOGIC;
  signal \data_out3_carry__1_n_2\ : STD_LOGIC;
  signal \data_out3_carry__1_n_3\ : STD_LOGIC;
  signal \data_out3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out3_carry__2_n_1\ : STD_LOGIC;
  signal \data_out3_carry__2_n_2\ : STD_LOGIC;
  signal \data_out3_carry__2_n_3\ : STD_LOGIC;
  signal data_out3_carry_i_1_n_0 : STD_LOGIC;
  signal data_out3_carry_i_2_n_0 : STD_LOGIC;
  signal data_out3_carry_i_3_n_0 : STD_LOGIC;
  signal data_out3_carry_i_4_n_0 : STD_LOGIC;
  signal data_out3_carry_i_5_n_0 : STD_LOGIC;
  signal data_out3_carry_i_6_n_0 : STD_LOGIC;
  signal data_out3_carry_n_0 : STD_LOGIC;
  signal data_out3_carry_n_1 : STD_LOGIC;
  signal data_out3_carry_n_2 : STD_LOGIC;
  signal data_out3_carry_n_3 : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_20_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_21_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_22_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_12_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_7\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_4\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_5\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_6\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal mosi_i_10_n_0 : STD_LOGIC;
  signal mosi_i_14_n_0 : STD_LOGIC;
  signal mosi_i_15_n_0 : STD_LOGIC;
  signal mosi_i_16_n_0 : STD_LOGIC;
  signal mosi_i_17_n_0 : STD_LOGIC;
  signal mosi_i_18_n_0 : STD_LOGIC;
  signal mosi_i_19_n_0 : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_20_n_0 : STD_LOGIC;
  signal mosi_i_21_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal mosi_i_6_n_0 : STD_LOGIC;
  signal mosi_i_7_n_0 : STD_LOGIC;
  signal mosi_i_8_n_0 : STD_LOGIC;
  signal mosi_i_9_n_0 : STD_LOGIC;
  signal mosi_reg_i_3_n_7 : STD_LOGIC;
  signal mosi_reg_i_5_n_0 : STD_LOGIC;
  signal mosi_reg_i_5_n_1 : STD_LOGIC;
  signal mosi_reg_i_5_n_2 : STD_LOGIC;
  signal mosi_reg_i_5_n_3 : STD_LOGIC;
  signal mosi_reg_i_5_n_4 : STD_LOGIC;
  signal mosi_reg_i_5_n_5 : STD_LOGIC;
  signal mosi_reg_i_5_n_6 : STD_LOGIC;
  signal mosi_reg_i_5_n_7 : STD_LOGIC;
  signal next_state1_out : STD_LOGIC;
  signal old_ready : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sclk\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_4\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_5_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_4\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_i_6_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_4\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_5_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_4\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_i_6_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_6_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_6_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_6_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_6_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_6_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_3\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_4\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_5\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_6\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_i_7_n_7\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_n_0\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_n_1\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \sclk_reg0_carry__2_n_3\ : STD_LOGIC;
  signal sclk_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_1 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_2 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_3 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_4 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_5 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_6 : STD_LOGIC;
  signal sclk_reg0_carry_i_7_n_7 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_1 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_2 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_3 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_4 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_5 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_6 : STD_LOGIC;
  signal sclk_reg0_carry_i_8_n_7 : STD_LOGIC;
  signal sclk_reg0_carry_n_0 : STD_LOGIC;
  signal sclk_reg0_carry_n_1 : STD_LOGIC;
  signal sclk_reg0_carry_n_2 : STD_LOGIC;
  signal sclk_reg0_carry_n_3 : STD_LOGIC;
  signal sclk_reg_i_1_n_0 : STD_LOGIC;
  signal NLW_cnt_clk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_clk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_clk1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_clk1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_clk_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_num_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_data_out3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out3_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_reg[15]_i_36_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_out_reg[15]_i_36_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_mosi_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mosi_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_sclk_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk_reg0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk_reg0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk_reg0_carry__2_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sclk_reg0_carry__2_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[11]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[13]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[14]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[15]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mosi_i_18 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mosi_i_19 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mosi_i_20 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mosi_i_21 : label is "soft_lutpair5";
begin
  sclk <= \^sclk\;
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(0),
      I1 => busy,
      I2 => \axi_rdata_reg[0]\(1),
      I3 => Q(0),
      I4 => \axi_rdata_reg[0]\(0),
      I5 => data_out(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(10),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(10),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(10),
      O => \axi_rdata[10]_i_5_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(11),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(11),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(11),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(12),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(12),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(12),
      O => \axi_rdata[12]_i_5_n_0\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(13),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(13),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(13),
      O => \axi_rdata[13]_i_5_n_0\
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(14),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(14),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(14),
      O => \axi_rdata[14]_i_5_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(15),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(15),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(15),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(1),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(1),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(1),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(2),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(2),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(2),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(3),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(3),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(3),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(4),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(4),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(5),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(5),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(5),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(6),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(6),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(6),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(7),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(7),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(8),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(8),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(8),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_0\(9),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => Q(9),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => data_out(9),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]_0\,
      O => D(0),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[0]_1\,
      I1 => \axi_rdata[0]_i_5_n_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[10]_i_2_n_0\,
      I1 => \axi_rdata_reg[10]\,
      O => D(10),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[10]_0\,
      I1 => \axi_rdata[10]_i_5_n_0\,
      O => \axi_rdata_reg[10]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[11]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\,
      O => D(11),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[11]_0\,
      I1 => \axi_rdata[11]_i_5_n_0\,
      O => \axi_rdata_reg[11]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[12]_i_2_n_0\,
      I1 => \axi_rdata_reg[12]\,
      O => D(12),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[12]_0\,
      I1 => \axi_rdata[12]_i_5_n_0\,
      O => \axi_rdata_reg[12]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[13]_i_2_n_0\,
      I1 => \axi_rdata_reg[13]\,
      O => D(13),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[13]_0\,
      I1 => \axi_rdata[13]_i_5_n_0\,
      O => \axi_rdata_reg[13]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[14]_i_2_n_0\,
      I1 => \axi_rdata_reg[14]\,
      O => D(14),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[14]_0\,
      I1 => \axi_rdata[14]_i_5_n_0\,
      O => \axi_rdata_reg[14]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[15]_i_2_n_0\,
      I1 => \axi_rdata_reg[15]\,
      O => D(15),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[15]_0\,
      I1 => \axi_rdata[15]_i_5_n_0\,
      O => \axi_rdata_reg[15]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      O => D(1),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[1]_0\,
      I1 => \axi_rdata[1]_i_5_n_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[2]_i_2_n_0\,
      I1 => \axi_rdata_reg[2]\,
      O => D(2),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[2]_0\,
      I1 => \axi_rdata[2]_i_5_n_0\,
      O => \axi_rdata_reg[2]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[3]\,
      O => D(3),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[3]_0\,
      I1 => \axi_rdata[3]_i_5_n_0\,
      O => \axi_rdata_reg[3]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[4]_i_2_n_0\,
      I1 => \axi_rdata_reg[4]\,
      O => D(4),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[4]_0\,
      I1 => \axi_rdata[4]_i_5_n_0\,
      O => \axi_rdata_reg[4]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[5]\,
      O => D(5),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[5]_0\,
      I1 => \axi_rdata[5]_i_5_n_0\,
      O => \axi_rdata_reg[5]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[6]\,
      O => D(6),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[6]_0\,
      I1 => \axi_rdata[6]_i_5_n_0\,
      O => \axi_rdata_reg[6]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[7]_i_2_n_0\,
      I1 => \axi_rdata_reg[7]\,
      O => D(7),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[7]_0\,
      I1 => \axi_rdata[7]_i_5_n_0\,
      O => \axi_rdata_reg[7]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[8]_i_2_n_0\,
      I1 => \axi_rdata_reg[8]\,
      O => D(8),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[8]_0\,
      I1 => \axi_rdata[8]_i_5_n_0\,
      O => \axi_rdata_reg[8]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[9]\,
      O => D(9),
      S => \axi_rdata_reg[0]\(3)
    );
\axi_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata_reg[9]_0\,
      I1 => \axi_rdata[9]_i_5_n_0\,
      O => \axi_rdata_reg[9]_i_2_n_0\,
      S => \axi_rdata_reg[0]\(2)
    );
cnt_clk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_clk1_carry_n_0,
      CO(2) => cnt_clk1_carry_n_1,
      CO(1) => cnt_clk1_carry_n_2,
      CO(0) => cnt_clk1_carry_n_3,
      CYINIT => '0',
      DI(3) => cnt_clk1_carry_i_1_n_0,
      DI(2) => cnt_clk1_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => cnt_clk1_carry_i_3_n_0,
      O(3 downto 0) => NLW_cnt_clk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_clk1_carry_i_4_n_0,
      S(2) => cnt_clk1_carry_i_5_n_0,
      S(1) => cnt_clk1_carry_i_6_n_0,
      S(0) => cnt_clk1_carry_i_7_n_0
    );
\cnt_clk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_clk1_carry_n_0,
      CO(3) => \cnt_clk1_carry__0_n_0\,
      CO(2) => \cnt_clk1_carry__0_n_1\,
      CO(1) => \cnt_clk1_carry__0_n_2\,
      CO(0) => \cnt_clk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_clk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_clk1_carry__0_i_1_n_0\,
      S(2) => \cnt_clk1_carry__0_i_2_n_0\,
      S(1) => \cnt_clk1_carry__0_i_3_n_0\,
      S(0) => \cnt_clk1_carry__0_i_4_n_0\
    );
\cnt_clk1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(14),
      I1 => cnt_clk_reg(15),
      O => \cnt_clk1_carry__0_i_1_n_0\
    );
\cnt_clk1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(12),
      I1 => cnt_clk_reg(13),
      O => \cnt_clk1_carry__0_i_2_n_0\
    );
\cnt_clk1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(10),
      I1 => cnt_clk_reg(11),
      O => \cnt_clk1_carry__0_i_3_n_0\
    );
\cnt_clk1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(8),
      I1 => cnt_clk_reg(9),
      O => \cnt_clk1_carry__0_i_4_n_0\
    );
\cnt_clk1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk1_carry__0_n_0\,
      CO(3) => \cnt_clk1_carry__1_n_0\,
      CO(2) => \cnt_clk1_carry__1_n_1\,
      CO(1) => \cnt_clk1_carry__1_n_2\,
      CO(0) => \cnt_clk1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_clk1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_clk1_carry__1_i_1_n_0\,
      S(2) => \cnt_clk1_carry__1_i_2_n_0\,
      S(1) => \cnt_clk1_carry__1_i_3_n_0\,
      S(0) => \cnt_clk1_carry__1_i_4_n_0\
    );
\cnt_clk1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(22),
      I1 => cnt_clk_reg(23),
      O => \cnt_clk1_carry__1_i_1_n_0\
    );
\cnt_clk1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(20),
      I1 => cnt_clk_reg(21),
      O => \cnt_clk1_carry__1_i_2_n_0\
    );
\cnt_clk1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(18),
      I1 => cnt_clk_reg(19),
      O => \cnt_clk1_carry__1_i_3_n_0\
    );
\cnt_clk1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(16),
      I1 => cnt_clk_reg(17),
      O => \cnt_clk1_carry__1_i_4_n_0\
    );
\cnt_clk1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk1_carry__1_n_0\,
      CO(3) => \cnt_clk1_carry__2_n_0\,
      CO(2) => \cnt_clk1_carry__2_n_1\,
      CO(1) => \cnt_clk1_carry__2_n_2\,
      CO(0) => \cnt_clk1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => cnt_clk_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_cnt_clk1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_clk1_carry__2_i_1_n_0\,
      S(2) => \cnt_clk1_carry__2_i_2_n_0\,
      S(1) => \cnt_clk1_carry__2_i_3_n_0\,
      S(0) => \cnt_clk1_carry__2_i_4_n_0\
    );
\cnt_clk1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(30),
      I1 => cnt_clk_reg(31),
      O => \cnt_clk1_carry__2_i_1_n_0\
    );
\cnt_clk1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(28),
      I1 => cnt_clk_reg(29),
      O => \cnt_clk1_carry__2_i_2_n_0\
    );
\cnt_clk1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(26),
      I1 => cnt_clk_reg(27),
      O => \cnt_clk1_carry__2_i_3_n_0\
    );
\cnt_clk1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(24),
      I1 => cnt_clk_reg(25),
      O => \cnt_clk1_carry__2_i_4_n_0\
    );
cnt_clk1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(6),
      I1 => cnt_clk_reg(7),
      O => cnt_clk1_carry_i_1_n_0
    );
cnt_clk1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(5),
      O => cnt_clk1_carry_i_2_n_0
    );
cnt_clk1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_clk_reg(0),
      I1 => cnt_clk_reg(1),
      O => cnt_clk1_carry_i_3_n_0
    );
cnt_clk1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_clk_reg(6),
      I1 => cnt_clk_reg(7),
      O => cnt_clk1_carry_i_4_n_0
    );
cnt_clk1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_clk_reg(5),
      I1 => cnt_clk_reg(4),
      O => cnt_clk1_carry_i_5_n_0
    );
cnt_clk1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_clk_reg(2),
      I1 => cnt_clk_reg(3),
      O => cnt_clk1_carry_i_6_n_0
    );
cnt_clk1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_clk_reg(0),
      I1 => cnt_clk_reg(1),
      O => cnt_clk1_carry_i_7_n_0
    );
\cnt_clk[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(3),
      O => \cnt_clk[0]_i_2_n_0\
    );
\cnt_clk[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(2),
      O => \cnt_clk[0]_i_3_n_0\
    );
\cnt_clk[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(1),
      O => \cnt_clk[0]_i_4_n_0\
    );
\cnt_clk[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cnt_clk_reg(0),
      I1 => \cnt_clk1_carry__2_n_0\,
      O => \cnt_clk[0]_i_5_n_0\
    );
\cnt_clk[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(15),
      O => \cnt_clk[12]_i_2_n_0\
    );
\cnt_clk[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(14),
      O => \cnt_clk[12]_i_3_n_0\
    );
\cnt_clk[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(13),
      O => \cnt_clk[12]_i_4_n_0\
    );
\cnt_clk[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(12),
      O => \cnt_clk[12]_i_5_n_0\
    );
\cnt_clk[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(19),
      O => \cnt_clk[16]_i_2_n_0\
    );
\cnt_clk[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(18),
      O => \cnt_clk[16]_i_3_n_0\
    );
\cnt_clk[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(17),
      O => \cnt_clk[16]_i_4_n_0\
    );
\cnt_clk[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(16),
      O => \cnt_clk[16]_i_5_n_0\
    );
\cnt_clk[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(23),
      O => \cnt_clk[20]_i_2_n_0\
    );
\cnt_clk[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(22),
      O => \cnt_clk[20]_i_3_n_0\
    );
\cnt_clk[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(21),
      O => \cnt_clk[20]_i_4_n_0\
    );
\cnt_clk[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(20),
      O => \cnt_clk[20]_i_5_n_0\
    );
\cnt_clk[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(27),
      O => \cnt_clk[24]_i_2_n_0\
    );
\cnt_clk[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(26),
      O => \cnt_clk[24]_i_3_n_0\
    );
\cnt_clk[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(25),
      O => \cnt_clk[24]_i_4_n_0\
    );
\cnt_clk[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(24),
      O => \cnt_clk[24]_i_5_n_0\
    );
\cnt_clk[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(31),
      O => \cnt_clk[28]_i_2_n_0\
    );
\cnt_clk[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(30),
      O => \cnt_clk[28]_i_3_n_0\
    );
\cnt_clk[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(29),
      O => \cnt_clk[28]_i_4_n_0\
    );
\cnt_clk[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(28),
      O => \cnt_clk[28]_i_5_n_0\
    );
\cnt_clk[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(7),
      O => \cnt_clk[4]_i_2_n_0\
    );
\cnt_clk[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(6),
      O => \cnt_clk[4]_i_3_n_0\
    );
\cnt_clk[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(5),
      O => \cnt_clk[4]_i_4_n_0\
    );
\cnt_clk[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(4),
      O => \cnt_clk[4]_i_5_n_0\
    );
\cnt_clk[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(11),
      O => \cnt_clk[8]_i_2_n_0\
    );
\cnt_clk[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(10),
      O => \cnt_clk[8]_i_3_n_0\
    );
\cnt_clk[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(9),
      O => \cnt_clk[8]_i_4_n_0\
    );
\cnt_clk[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => cnt_clk_reg(8),
      O => \cnt_clk[8]_i_5_n_0\
    );
\cnt_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[0]_i_1_n_7\,
      Q => cnt_clk_reg(0),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_clk_reg[0]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[0]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[0]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt_clk1_carry__2_n_0\,
      O(3) => \cnt_clk_reg[0]_i_1_n_4\,
      O(2) => \cnt_clk_reg[0]_i_1_n_5\,
      O(1) => \cnt_clk_reg[0]_i_1_n_6\,
      O(0) => \cnt_clk_reg[0]_i_1_n_7\,
      S(3) => \cnt_clk[0]_i_2_n_0\,
      S(2) => \cnt_clk[0]_i_3_n_0\,
      S(1) => \cnt_clk[0]_i_4_n_0\,
      S(0) => \cnt_clk[0]_i_5_n_0\
    );
\cnt_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[8]_i_1_n_5\,
      Q => cnt_clk_reg(10),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[8]_i_1_n_4\,
      Q => cnt_clk_reg(11),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[12]_i_1_n_7\,
      Q => cnt_clk_reg(12),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[8]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[12]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[12]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[12]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[12]_i_1_n_4\,
      O(2) => \cnt_clk_reg[12]_i_1_n_5\,
      O(1) => \cnt_clk_reg[12]_i_1_n_6\,
      O(0) => \cnt_clk_reg[12]_i_1_n_7\,
      S(3) => \cnt_clk[12]_i_2_n_0\,
      S(2) => \cnt_clk[12]_i_3_n_0\,
      S(1) => \cnt_clk[12]_i_4_n_0\,
      S(0) => \cnt_clk[12]_i_5_n_0\
    );
\cnt_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[12]_i_1_n_6\,
      Q => cnt_clk_reg(13),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[12]_i_1_n_5\,
      Q => cnt_clk_reg(14),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[12]_i_1_n_4\,
      Q => cnt_clk_reg(15),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[16]_i_1_n_7\,
      Q => cnt_clk_reg(16),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[12]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[16]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[16]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[16]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[16]_i_1_n_4\,
      O(2) => \cnt_clk_reg[16]_i_1_n_5\,
      O(1) => \cnt_clk_reg[16]_i_1_n_6\,
      O(0) => \cnt_clk_reg[16]_i_1_n_7\,
      S(3) => \cnt_clk[16]_i_2_n_0\,
      S(2) => \cnt_clk[16]_i_3_n_0\,
      S(1) => \cnt_clk[16]_i_4_n_0\,
      S(0) => \cnt_clk[16]_i_5_n_0\
    );
\cnt_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[16]_i_1_n_6\,
      Q => cnt_clk_reg(17),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[16]_i_1_n_5\,
      Q => cnt_clk_reg(18),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[16]_i_1_n_4\,
      Q => cnt_clk_reg(19),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[0]_i_1_n_6\,
      Q => cnt_clk_reg(1),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[20]_i_1_n_7\,
      Q => cnt_clk_reg(20),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[16]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[20]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[20]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[20]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[20]_i_1_n_4\,
      O(2) => \cnt_clk_reg[20]_i_1_n_5\,
      O(1) => \cnt_clk_reg[20]_i_1_n_6\,
      O(0) => \cnt_clk_reg[20]_i_1_n_7\,
      S(3) => \cnt_clk[20]_i_2_n_0\,
      S(2) => \cnt_clk[20]_i_3_n_0\,
      S(1) => \cnt_clk[20]_i_4_n_0\,
      S(0) => \cnt_clk[20]_i_5_n_0\
    );
\cnt_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[20]_i_1_n_6\,
      Q => cnt_clk_reg(21),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[20]_i_1_n_5\,
      Q => cnt_clk_reg(22),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[20]_i_1_n_4\,
      Q => cnt_clk_reg(23),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[24]_i_1_n_7\,
      Q => cnt_clk_reg(24),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[20]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[24]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[24]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[24]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[24]_i_1_n_4\,
      O(2) => \cnt_clk_reg[24]_i_1_n_5\,
      O(1) => \cnt_clk_reg[24]_i_1_n_6\,
      O(0) => \cnt_clk_reg[24]_i_1_n_7\,
      S(3) => \cnt_clk[24]_i_2_n_0\,
      S(2) => \cnt_clk[24]_i_3_n_0\,
      S(1) => \cnt_clk[24]_i_4_n_0\,
      S(0) => \cnt_clk[24]_i_5_n_0\
    );
\cnt_clk_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[24]_i_1_n_6\,
      Q => cnt_clk_reg(25),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[24]_i_1_n_5\,
      Q => cnt_clk_reg(26),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[24]_i_1_n_4\,
      Q => cnt_clk_reg(27),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[28]_i_1_n_7\,
      Q => cnt_clk_reg(28),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_clk_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_clk_reg[28]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[28]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[28]_i_1_n_4\,
      O(2) => \cnt_clk_reg[28]_i_1_n_5\,
      O(1) => \cnt_clk_reg[28]_i_1_n_6\,
      O(0) => \cnt_clk_reg[28]_i_1_n_7\,
      S(3) => \cnt_clk[28]_i_2_n_0\,
      S(2) => \cnt_clk[28]_i_3_n_0\,
      S(1) => \cnt_clk[28]_i_4_n_0\,
      S(0) => \cnt_clk[28]_i_5_n_0\
    );
\cnt_clk_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[28]_i_1_n_6\,
      Q => cnt_clk_reg(29),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[0]_i_1_n_5\,
      Q => cnt_clk_reg(2),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[28]_i_1_n_5\,
      Q => cnt_clk_reg(30),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[28]_i_1_n_4\,
      Q => cnt_clk_reg(31),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[0]_i_1_n_4\,
      Q => cnt_clk_reg(3),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[4]_i_1_n_7\,
      Q => cnt_clk_reg(4),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[0]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[4]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[4]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[4]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[4]_i_1_n_4\,
      O(2) => \cnt_clk_reg[4]_i_1_n_5\,
      O(1) => \cnt_clk_reg[4]_i_1_n_6\,
      O(0) => \cnt_clk_reg[4]_i_1_n_7\,
      S(3) => \cnt_clk[4]_i_2_n_0\,
      S(2) => \cnt_clk[4]_i_3_n_0\,
      S(1) => \cnt_clk[4]_i_4_n_0\,
      S(0) => \cnt_clk[4]_i_5_n_0\
    );
\cnt_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[4]_i_1_n_6\,
      Q => cnt_clk_reg(5),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[4]_i_1_n_5\,
      Q => cnt_clk_reg(6),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[4]_i_1_n_4\,
      Q => cnt_clk_reg(7),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[8]_i_1_n_7\,
      Q => cnt_clk_reg(8),
      R => cs_n_i_1_n_0
    );
\cnt_clk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[4]_i_1_n_0\,
      CO(3) => \cnt_clk_reg[8]_i_1_n_0\,
      CO(2) => \cnt_clk_reg[8]_i_1_n_1\,
      CO(1) => \cnt_clk_reg[8]_i_1_n_2\,
      CO(0) => \cnt_clk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[8]_i_1_n_4\,
      O(2) => \cnt_clk_reg[8]_i_1_n_5\,
      O(1) => \cnt_clk_reg[8]_i_1_n_6\,
      O(0) => \cnt_clk_reg[8]_i_1_n_7\,
      S(3) => \cnt_clk[8]_i_2_n_0\,
      S(2) => \cnt_clk[8]_i_3_n_0\,
      S(1) => \cnt_clk[8]_i_4_n_0\,
      S(0) => \cnt_clk[8]_i_5_n_0\
    );
\cnt_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_clk_reg[8]_i_1_n_6\,
      Q => cnt_clk_reg(9),
      R => cs_n_i_1_n_0
    );
\cnt_num[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => next_state1_out,
      I1 => \cnt_clk1_carry__2_n_0\,
      O => \cnt_num[0]_i_1_n_0\
    );
\cnt_num[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(0),
      O => \cnt_num[0]_i_3_n_0\
    );
\cnt_num[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(3),
      O => \cnt_num[0]_i_4_n_0\
    );
\cnt_num[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(2),
      O => \cnt_num[0]_i_5_n_0\
    );
\cnt_num[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(1),
      O => \cnt_num[0]_i_6_n_0\
    );
\cnt_num[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cnt_num_reg(0),
      I1 => next_state1_out,
      O => \cnt_num[0]_i_7_n_0\
    );
\cnt_num[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(15),
      O => \cnt_num[12]_i_2_n_0\
    );
\cnt_num[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(14),
      O => \cnt_num[12]_i_3_n_0\
    );
\cnt_num[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(13),
      O => \cnt_num[12]_i_4_n_0\
    );
\cnt_num[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(12),
      O => \cnt_num[12]_i_5_n_0\
    );
\cnt_num[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(19),
      O => \cnt_num[16]_i_2_n_0\
    );
\cnt_num[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(18),
      O => \cnt_num[16]_i_3_n_0\
    );
\cnt_num[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(17),
      O => \cnt_num[16]_i_4_n_0\
    );
\cnt_num[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(16),
      O => \cnt_num[16]_i_5_n_0\
    );
\cnt_num[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(23),
      O => \cnt_num[20]_i_2_n_0\
    );
\cnt_num[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(22),
      O => \cnt_num[20]_i_3_n_0\
    );
\cnt_num[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(21),
      O => \cnt_num[20]_i_4_n_0\
    );
\cnt_num[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(20),
      O => \cnt_num[20]_i_5_n_0\
    );
\cnt_num[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(27),
      O => \cnt_num[24]_i_2_n_0\
    );
\cnt_num[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(26),
      O => \cnt_num[24]_i_3_n_0\
    );
\cnt_num[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(25),
      O => \cnt_num[24]_i_4_n_0\
    );
\cnt_num[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(24),
      O => \cnt_num[24]_i_5_n_0\
    );
\cnt_num[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(31),
      O => \cnt_num[28]_i_2_n_0\
    );
\cnt_num[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(30),
      O => \cnt_num[28]_i_3_n_0\
    );
\cnt_num[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(29),
      O => \cnt_num[28]_i_4_n_0\
    );
\cnt_num[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(28),
      O => \cnt_num[28]_i_5_n_0\
    );
\cnt_num[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(7),
      O => \cnt_num[4]_i_2_n_0\
    );
\cnt_num[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(6),
      O => \cnt_num[4]_i_3_n_0\
    );
\cnt_num[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(5),
      O => \cnt_num[4]_i_4_n_0\
    );
\cnt_num[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(4),
      O => \cnt_num[4]_i_5_n_0\
    );
\cnt_num[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(11),
      O => \cnt_num[8]_i_2_n_0\
    );
\cnt_num[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(10),
      O => \cnt_num[8]_i_3_n_0\
    );
\cnt_num[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(9),
      O => \cnt_num[8]_i_4_n_0\
    );
\cnt_num[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state1_out,
      I1 => cnt_num_reg(8),
      O => \cnt_num[8]_i_5_n_0\
    );
\cnt_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[0]_i_2_n_7\,
      Q => cnt_num_reg(0),
      R => '0'
    );
\cnt_num_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_num_reg[0]_i_2_n_0\,
      CO(2) => \cnt_num_reg[0]_i_2_n_1\,
      CO(1) => \cnt_num_reg[0]_i_2_n_2\,
      CO(0) => \cnt_num_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt_num[0]_i_3_n_0\,
      O(3) => \cnt_num_reg[0]_i_2_n_4\,
      O(2) => \cnt_num_reg[0]_i_2_n_5\,
      O(1) => \cnt_num_reg[0]_i_2_n_6\,
      O(0) => \cnt_num_reg[0]_i_2_n_7\,
      S(3) => \cnt_num[0]_i_4_n_0\,
      S(2) => \cnt_num[0]_i_5_n_0\,
      S(1) => \cnt_num[0]_i_6_n_0\,
      S(0) => \cnt_num[0]_i_7_n_0\
    );
\cnt_num_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[8]_i_1_n_5\,
      Q => cnt_num_reg(10),
      R => '0'
    );
\cnt_num_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[8]_i_1_n_4\,
      Q => cnt_num_reg(11),
      R => '0'
    );
\cnt_num_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[12]_i_1_n_7\,
      Q => cnt_num_reg(12),
      R => '0'
    );
\cnt_num_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[8]_i_1_n_0\,
      CO(3) => \cnt_num_reg[12]_i_1_n_0\,
      CO(2) => \cnt_num_reg[12]_i_1_n_1\,
      CO(1) => \cnt_num_reg[12]_i_1_n_2\,
      CO(0) => \cnt_num_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[12]_i_1_n_4\,
      O(2) => \cnt_num_reg[12]_i_1_n_5\,
      O(1) => \cnt_num_reg[12]_i_1_n_6\,
      O(0) => \cnt_num_reg[12]_i_1_n_7\,
      S(3) => \cnt_num[12]_i_2_n_0\,
      S(2) => \cnt_num[12]_i_3_n_0\,
      S(1) => \cnt_num[12]_i_4_n_0\,
      S(0) => \cnt_num[12]_i_5_n_0\
    );
\cnt_num_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[12]_i_1_n_6\,
      Q => cnt_num_reg(13),
      R => '0'
    );
\cnt_num_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[12]_i_1_n_5\,
      Q => cnt_num_reg(14),
      R => '0'
    );
\cnt_num_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[12]_i_1_n_4\,
      Q => cnt_num_reg(15),
      R => '0'
    );
\cnt_num_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[16]_i_1_n_7\,
      Q => cnt_num_reg(16),
      R => '0'
    );
\cnt_num_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[12]_i_1_n_0\,
      CO(3) => \cnt_num_reg[16]_i_1_n_0\,
      CO(2) => \cnt_num_reg[16]_i_1_n_1\,
      CO(1) => \cnt_num_reg[16]_i_1_n_2\,
      CO(0) => \cnt_num_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[16]_i_1_n_4\,
      O(2) => \cnt_num_reg[16]_i_1_n_5\,
      O(1) => \cnt_num_reg[16]_i_1_n_6\,
      O(0) => \cnt_num_reg[16]_i_1_n_7\,
      S(3) => \cnt_num[16]_i_2_n_0\,
      S(2) => \cnt_num[16]_i_3_n_0\,
      S(1) => \cnt_num[16]_i_4_n_0\,
      S(0) => \cnt_num[16]_i_5_n_0\
    );
\cnt_num_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[16]_i_1_n_6\,
      Q => cnt_num_reg(17),
      R => '0'
    );
\cnt_num_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[16]_i_1_n_5\,
      Q => cnt_num_reg(18),
      R => '0'
    );
\cnt_num_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[16]_i_1_n_4\,
      Q => cnt_num_reg(19),
      R => '0'
    );
\cnt_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[0]_i_2_n_6\,
      Q => cnt_num_reg(1),
      R => '0'
    );
\cnt_num_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[20]_i_1_n_7\,
      Q => cnt_num_reg(20),
      R => '0'
    );
\cnt_num_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[16]_i_1_n_0\,
      CO(3) => \cnt_num_reg[20]_i_1_n_0\,
      CO(2) => \cnt_num_reg[20]_i_1_n_1\,
      CO(1) => \cnt_num_reg[20]_i_1_n_2\,
      CO(0) => \cnt_num_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[20]_i_1_n_4\,
      O(2) => \cnt_num_reg[20]_i_1_n_5\,
      O(1) => \cnt_num_reg[20]_i_1_n_6\,
      O(0) => \cnt_num_reg[20]_i_1_n_7\,
      S(3) => \cnt_num[20]_i_2_n_0\,
      S(2) => \cnt_num[20]_i_3_n_0\,
      S(1) => \cnt_num[20]_i_4_n_0\,
      S(0) => \cnt_num[20]_i_5_n_0\
    );
\cnt_num_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[20]_i_1_n_6\,
      Q => cnt_num_reg(21),
      R => '0'
    );
\cnt_num_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[20]_i_1_n_5\,
      Q => cnt_num_reg(22),
      R => '0'
    );
\cnt_num_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[20]_i_1_n_4\,
      Q => cnt_num_reg(23),
      R => '0'
    );
\cnt_num_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[24]_i_1_n_7\,
      Q => cnt_num_reg(24),
      R => '0'
    );
\cnt_num_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[20]_i_1_n_0\,
      CO(3) => \cnt_num_reg[24]_i_1_n_0\,
      CO(2) => \cnt_num_reg[24]_i_1_n_1\,
      CO(1) => \cnt_num_reg[24]_i_1_n_2\,
      CO(0) => \cnt_num_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[24]_i_1_n_4\,
      O(2) => \cnt_num_reg[24]_i_1_n_5\,
      O(1) => \cnt_num_reg[24]_i_1_n_6\,
      O(0) => \cnt_num_reg[24]_i_1_n_7\,
      S(3) => \cnt_num[24]_i_2_n_0\,
      S(2) => \cnt_num[24]_i_3_n_0\,
      S(1) => \cnt_num[24]_i_4_n_0\,
      S(0) => \cnt_num[24]_i_5_n_0\
    );
\cnt_num_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[24]_i_1_n_6\,
      Q => cnt_num_reg(25),
      R => '0'
    );
\cnt_num_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[24]_i_1_n_5\,
      Q => cnt_num_reg(26),
      R => '0'
    );
\cnt_num_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[24]_i_1_n_4\,
      Q => cnt_num_reg(27),
      R => '0'
    );
\cnt_num_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[28]_i_1_n_7\,
      Q => cnt_num_reg(28),
      R => '0'
    );
\cnt_num_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_num_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_num_reg[28]_i_1_n_1\,
      CO(1) => \cnt_num_reg[28]_i_1_n_2\,
      CO(0) => \cnt_num_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[28]_i_1_n_4\,
      O(2) => \cnt_num_reg[28]_i_1_n_5\,
      O(1) => \cnt_num_reg[28]_i_1_n_6\,
      O(0) => \cnt_num_reg[28]_i_1_n_7\,
      S(3) => \cnt_num[28]_i_2_n_0\,
      S(2) => \cnt_num[28]_i_3_n_0\,
      S(1) => \cnt_num[28]_i_4_n_0\,
      S(0) => \cnt_num[28]_i_5_n_0\
    );
\cnt_num_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[28]_i_1_n_6\,
      Q => cnt_num_reg(29),
      R => '0'
    );
\cnt_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[0]_i_2_n_5\,
      Q => cnt_num_reg(2),
      R => '0'
    );
\cnt_num_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[28]_i_1_n_5\,
      Q => cnt_num_reg(30),
      R => '0'
    );
\cnt_num_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[28]_i_1_n_4\,
      Q => cnt_num_reg(31),
      R => '0'
    );
\cnt_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[0]_i_2_n_4\,
      Q => cnt_num_reg(3),
      R => '0'
    );
\cnt_num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[4]_i_1_n_7\,
      Q => cnt_num_reg(4),
      R => '0'
    );
\cnt_num_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[0]_i_2_n_0\,
      CO(3) => \cnt_num_reg[4]_i_1_n_0\,
      CO(2) => \cnt_num_reg[4]_i_1_n_1\,
      CO(1) => \cnt_num_reg[4]_i_1_n_2\,
      CO(0) => \cnt_num_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[4]_i_1_n_4\,
      O(2) => \cnt_num_reg[4]_i_1_n_5\,
      O(1) => \cnt_num_reg[4]_i_1_n_6\,
      O(0) => \cnt_num_reg[4]_i_1_n_7\,
      S(3) => \cnt_num[4]_i_2_n_0\,
      S(2) => \cnt_num[4]_i_3_n_0\,
      S(1) => \cnt_num[4]_i_4_n_0\,
      S(0) => \cnt_num[4]_i_5_n_0\
    );
\cnt_num_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[4]_i_1_n_6\,
      Q => cnt_num_reg(5),
      R => '0'
    );
\cnt_num_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[4]_i_1_n_5\,
      Q => cnt_num_reg(6),
      R => '0'
    );
\cnt_num_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[4]_i_1_n_4\,
      Q => cnt_num_reg(7),
      R => '0'
    );
\cnt_num_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[8]_i_1_n_7\,
      Q => cnt_num_reg(8),
      R => '0'
    );
\cnt_num_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_num_reg[4]_i_1_n_0\,
      CO(3) => \cnt_num_reg[8]_i_1_n_0\,
      CO(2) => \cnt_num_reg[8]_i_1_n_1\,
      CO(1) => \cnt_num_reg[8]_i_1_n_2\,
      CO(0) => \cnt_num_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_num_reg[8]_i_1_n_4\,
      O(2) => \cnt_num_reg[8]_i_1_n_5\,
      O(1) => \cnt_num_reg[8]_i_1_n_6\,
      O(0) => \cnt_num_reg[8]_i_1_n_7\,
      S(3) => \cnt_num[8]_i_2_n_0\,
      S(2) => \cnt_num[8]_i_3_n_0\,
      S(1) => \cnt_num[8]_i_4_n_0\,
      S(0) => \cnt_num[8]_i_5_n_0\
    );
\cnt_num_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \cnt_num[0]_i_1_n_0\,
      D => \cnt_num_reg[8]_i_1_n_6\,
      Q => cnt_num_reg(9),
      R => '0'
    );
cs_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => next_state1_out,
      O => cs_n_i_1_n_0
    );
cs_n_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => cs_n,
      S => cs_n_i_1_n_0
    );
current_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000070777070"
    )
        port map (
      I0 => cnt_num_reg(5),
      I1 => current_state_i_2_n_0,
      I2 => busy,
      I3 => old_ready,
      I4 => Q(0),
      I5 => rst,
      O => next_state1_out
    );
current_state_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_num_reg(30),
      I1 => cnt_num_reg(3),
      I2 => cnt_num_reg(0),
      I3 => cnt_num_reg(1),
      O => current_state_i_10_n_0
    );
current_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => current_state_i_3_n_0,
      I1 => current_state_i_4_n_0,
      I2 => current_state_i_5_n_0,
      I3 => cnt_num_reg(27),
      I4 => cnt_num_reg(26),
      I5 => current_state_i_6_n_0,
      O => current_state_i_2_n_0
    );
current_state_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_num_reg(21),
      I1 => cnt_num_reg(20),
      I2 => cnt_num_reg(23),
      I3 => cnt_num_reg(22),
      I4 => current_state_i_7_n_0,
      O => current_state_i_3_n_0
    );
current_state_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt_num_reg(2),
      I1 => busy,
      I2 => cnt_num_reg(28),
      I3 => cnt_num_reg(31),
      O => current_state_i_4_n_0
    );
current_state_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(25),
      I1 => cnt_num_reg(24),
      O => current_state_i_5_n_0
    );
current_state_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => current_state_i_8_n_0,
      I1 => cnt_num_reg(14),
      I2 => cnt_num_reg(15),
      I3 => cnt_num_reg(12),
      I4 => cnt_num_reg(13),
      I5 => current_state_i_9_n_0,
      O => current_state_i_6_n_0
    );
current_state_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_num_reg(18),
      I1 => cnt_num_reg(19),
      I2 => cnt_num_reg(16),
      I3 => cnt_num_reg(17),
      O => current_state_i_7_n_0
    );
current_state_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_num_reg(10),
      I1 => cnt_num_reg(11),
      I2 => cnt_num_reg(8),
      I3 => cnt_num_reg(9),
      O => current_state_i_8_n_0
    );
current_state_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_num_reg(29),
      I1 => cnt_num_reg(4),
      I2 => cnt_num_reg(7),
      I3 => cnt_num_reg(6),
      I4 => current_state_i_10_n_0,
      O => current_state_i_9_n_0
    );
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state1_out,
      Q => busy,
      R => '0'
    );
data_out3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out3_carry_n_0,
      CO(2) => data_out3_carry_n_1,
      CO(1) => data_out3_carry_n_2,
      CO(0) => data_out3_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => data_out3_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => data_out3_carry_i_2_n_0,
      O(3 downto 0) => NLW_data_out3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_out3_carry_i_3_n_0,
      S(2) => data_out3_carry_i_4_n_0,
      S(1) => data_out3_carry_i_5_n_0,
      S(0) => data_out3_carry_i_6_n_0
    );
\data_out3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_out3_carry_n_0,
      CO(3) => \data_out3_carry__0_n_0\,
      CO(2) => \data_out3_carry__0_n_1\,
      CO(1) => \data_out3_carry__0_n_2\,
      CO(0) => \data_out3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_out3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \data_out3_carry__0_i_1_n_0\,
      S(2) => \data_out3_carry__0_i_2_n_0\,
      S(1) => \data_out3_carry__0_i_3_n_0\,
      S(0) => \data_out3_carry__0_i_4_n_0\
    );
\data_out3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(14),
      I1 => cnt_num_reg(15),
      O => \data_out3_carry__0_i_1_n_0\
    );
\data_out3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(12),
      I1 => cnt_num_reg(13),
      O => \data_out3_carry__0_i_2_n_0\
    );
\data_out3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(10),
      I1 => cnt_num_reg(11),
      O => \data_out3_carry__0_i_3_n_0\
    );
\data_out3_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(8),
      I1 => cnt_num_reg(9),
      O => \data_out3_carry__0_i_4_n_0\
    );
\data_out3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out3_carry__0_n_0\,
      CO(3) => \data_out3_carry__1_n_0\,
      CO(2) => \data_out3_carry__1_n_1\,
      CO(1) => \data_out3_carry__1_n_2\,
      CO(0) => \data_out3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_out3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \data_out3_carry__1_i_1_n_0\,
      S(2) => \data_out3_carry__1_i_2_n_0\,
      S(1) => \data_out3_carry__1_i_3_n_0\,
      S(0) => \data_out3_carry__1_i_4_n_0\
    );
\data_out3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(22),
      I1 => cnt_num_reg(23),
      O => \data_out3_carry__1_i_1_n_0\
    );
\data_out3_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(20),
      I1 => cnt_num_reg(21),
      O => \data_out3_carry__1_i_2_n_0\
    );
\data_out3_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(18),
      I1 => cnt_num_reg(19),
      O => \data_out3_carry__1_i_3_n_0\
    );
\data_out3_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(16),
      I1 => cnt_num_reg(17),
      O => \data_out3_carry__1_i_4_n_0\
    );
\data_out3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out3_carry__1_n_0\,
      CO(3) => data_out3,
      CO(2) => \data_out3_carry__2_n_1\,
      CO(1) => \data_out3_carry__2_n_2\,
      CO(0) => \data_out3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => cnt_num_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_data_out3_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \data_out3_carry__2_i_1_n_0\,
      S(2) => \data_out3_carry__2_i_2_n_0\,
      S(1) => \data_out3_carry__2_i_3_n_0\,
      S(0) => \data_out3_carry__2_i_4_n_0\
    );
\data_out3_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(30),
      I1 => cnt_num_reg(31),
      O => \data_out3_carry__2_i_1_n_0\
    );
\data_out3_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(28),
      I1 => cnt_num_reg(29),
      O => \data_out3_carry__2_i_2_n_0\
    );
\data_out3_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(26),
      I1 => cnt_num_reg(27),
      O => \data_out3_carry__2_i_3_n_0\
    );
\data_out3_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(24),
      I1 => cnt_num_reg(25),
      O => \data_out3_carry__2_i_4_n_0\
    );
data_out3_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(5),
      O => data_out3_carry_i_1_n_0
    );
data_out3_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(1),
      O => data_out3_carry_i_2_n_0
    );
data_out3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(6),
      I1 => cnt_num_reg(7),
      O => data_out3_carry_i_3_n_0
    );
data_out3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_num_reg(5),
      I1 => cnt_num_reg(4),
      O => data_out3_carry_i_4_n_0
    );
data_out3_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(2),
      I1 => cnt_num_reg(3),
      O => data_out3_carry_i_5_n_0
    );
data_out3_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_num_reg(1),
      I1 => cnt_num_reg(0),
      O => data_out3_carry_i_6_n_0
    );
\data_out3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out3_inferred__0/i__carry_n_0\,
      CO(2) => \data_out3_inferred__0/i__carry_n_1\,
      CO(1) => \data_out3_inferred__0/i__carry_n_2\,
      CO(0) => \data_out3_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => cnt_num_reg(5),
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\data_out3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out3_inferred__0/i__carry_n_0\,
      CO(3) => \data_out3_inferred__0/i__carry__0_n_0\,
      CO(2) => \data_out3_inferred__0/i__carry__0_n_1\,
      CO(1) => \data_out3_inferred__0/i__carry__0_n_2\,
      CO(0) => \data_out3_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\data_out3_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out3_inferred__0/i__carry__0_n_0\,
      CO(3) => \data_out3_inferred__0/i__carry__1_n_0\,
      CO(2) => \data_out3_inferred__0/i__carry__1_n_1\,
      CO(1) => \data_out3_inferred__0/i__carry__1_n_2\,
      CO(0) => \data_out3_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_data_out3_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\data_out3_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out3_inferred__0/i__carry__1_n_0\,
      CO(3) => data_out32_in,
      CO(2) => \data_out3_inferred__0/i__carry__2_n_1\,
      CO(1) => \data_out3_inferred__0/i__carry__2_n_2\,
      CO(0) => \data_out3_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_data_out3_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[3]_i_2_n_0\,
      I3 => \data_out[12]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[11]_i_2_n_0\,
      I3 => \data_out[14]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[11]_i_2_n_0\,
      I3 => \data_out[15]_i_3_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_6\,
      I1 => \data_out[15]_i_5_n_0\,
      I2 => \data_out[15]_i_6_n_0\,
      I3 => \data_out[15]_i_7_n_0\,
      I4 => \data_out_reg[15]_i_8_n_5\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => \data_out[12]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_7\,
      I1 => cnt_num_reg(0),
      O => \data_out[12]_i_2_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => \data_out[13]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_7\,
      I1 => cnt_num_reg(0),
      O => \data_out[13]_i_2_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => \data_out[14]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt_num_reg(0),
      I1 => \data_out_reg[15]_i_8_n_7\,
      O => \data_out[14]_i_2_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => \data_out[15]_i_3_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(15),
      O => \data_out[15]_i_1_n_0\
    );
\data_out[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_16_n_7\,
      I1 => \data_out_reg[15]_i_27_n_4\,
      I2 => \data_out_reg[15]_i_16_n_5\,
      I3 => \data_out_reg[15]_i_16_n_6\,
      O => \data_out[15]_i_10_n_0\
    );
\data_out[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_27_n_7\,
      I1 => \data_out_reg[15]_i_9_n_4\,
      I2 => \data_out_reg[15]_i_27_n_5\,
      I3 => \data_out_reg[15]_i_27_n_6\,
      O => \data_out[15]_i_11_n_0\
    );
\data_out[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_36_n_7\,
      I1 => \data_out_reg[15]_i_12_n_4\,
      I2 => \data_out_reg[15]_i_36_n_5\,
      I3 => \data_out_reg[15]_i_36_n_6\,
      O => \data_out[15]_i_14_n_0\
    );
\data_out[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_13_n_7\,
      I1 => \data_out_reg[15]_i_15_n_4\,
      I2 => \data_out_reg[15]_i_13_n_5\,
      I3 => \data_out_reg[15]_i_13_n_6\,
      O => \data_out[15]_i_17_n_0\
    );
\data_out[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(0),
      O => p_0_in(0)
    );
\data_out[15]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(1),
      O => \data_out[15]_i_19_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \data_out[15]_i_5_n_0\,
      I1 => \data_out[15]_i_6_n_0\,
      I2 => \data_out[15]_i_7_n_0\,
      I3 => \data_out_reg[15]_i_8_n_5\,
      I4 => \data_out_reg[15]_i_8_n_6\,
      O => \data_out[15]_i_2_n_0\
    );
\data_out[15]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(4),
      O => \data_out[15]_i_20_n_0\
    );
\data_out[15]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(3),
      O => \data_out[15]_i_21_n_0\
    );
\data_out[15]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(2),
      O => \data_out[15]_i_22_n_0\
    );
\data_out[15]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(5),
      O => p_0_in(5)
    );
\data_out[15]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(8),
      O => p_0_in(8)
    );
\data_out[15]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(7),
      O => p_0_in(7)
    );
\data_out[15]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(6),
      O => p_0_in(6)
    );
\data_out[15]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(28),
      O => p_0_in(28)
    );
\data_out[15]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(27),
      O => p_0_in(27)
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_7\,
      I1 => cnt_num_reg(0),
      O => \data_out[15]_i_3_n_0\
    );
\data_out[15]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(26),
      O => p_0_in(26)
    );
\data_out[15]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(25),
      O => p_0_in(25)
    );
\data_out[15]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(24),
      O => p_0_in(24)
    );
\data_out[15]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(23),
      O => p_0_in(23)
    );
\data_out[15]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(22),
      O => p_0_in(22)
    );
\data_out[15]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(21),
      O => p_0_in(21)
    );
\data_out[15]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(20),
      O => p_0_in(20)
    );
\data_out[15]_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(19),
      O => p_0_in(19)
    );
\data_out[15]_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(18),
      O => p_0_in(18)
    );
\data_out[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data_out32_in,
      I1 => data_out3,
      I2 => \^sclk\,
      O => \data_out1__1\
    );
\data_out[15]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(17),
      O => p_0_in(17)
    );
\data_out[15]_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(16),
      O => p_0_in(16)
    );
\data_out[15]_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(15),
      O => p_0_in(15)
    );
\data_out[15]_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(14),
      O => p_0_in(14)
    );
\data_out[15]_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(13),
      O => p_0_in(13)
    );
\data_out[15]_i_45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(12),
      O => p_0_in(12)
    );
\data_out[15]_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(11),
      O => p_0_in(11)
    );
\data_out[15]_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(10),
      O => p_0_in(10)
    );
\data_out[15]_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(9),
      O => p_0_in(9)
    );
\data_out[15]_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(31),
      O => p_0_in(31)
    );
\data_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_9_n_6\,
      I1 => \data_out_reg[15]_i_9_n_5\,
      I2 => \data_out_reg[15]_i_8_n_4\,
      I3 => \data_out_reg[15]_i_9_n_7\,
      I4 => \data_out[15]_i_10_n_0\,
      I5 => \data_out[15]_i_11_n_0\,
      O => \data_out[15]_i_5_n_0\
    );
\data_out[15]_i_50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(30),
      O => p_0_in(30)
    );
\data_out[15]_i_51\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(29),
      O => p_0_in(29)
    );
\data_out[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_12_n_6\,
      I1 => \data_out_reg[15]_i_12_n_5\,
      I2 => \data_out_reg[15]_i_13_n_4\,
      I3 => \data_out_reg[15]_i_12_n_7\,
      I4 => \data_out[15]_i_14_n_0\,
      O => \data_out[15]_i_6_n_0\
    );
\data_out[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_15_n_6\,
      I1 => \data_out_reg[15]_i_15_n_5\,
      I2 => \data_out_reg[15]_i_16_n_4\,
      I3 => \data_out_reg[15]_i_15_n_7\,
      I4 => \data_out[15]_i_17_n_0\,
      O => \data_out[15]_i_7_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[3]_i_2_n_0\,
      I3 => \data_out[13]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[3]_i_2_n_0\,
      I3 => \data_out[14]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[3]_i_2_n_0\,
      I3 => \data_out[15]_i_3_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_6\,
      I1 => \data_out_reg[15]_i_8_n_5\,
      I2 => \data_out[15]_i_5_n_0\,
      I3 => \data_out[15]_i_6_n_0\,
      I4 => \data_out[15]_i_7_n_0\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[12]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[13]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[14]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[15]_i_3_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \data_out_reg[15]_i_8_n_5\,
      I1 => \data_out[15]_i_5_n_0\,
      I2 => \data_out[15]_i_6_n_0\,
      I3 => \data_out[15]_i_7_n_0\,
      I4 => \data_out_reg[15]_i_8_n_6\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[11]_i_2_n_0\,
      I3 => \data_out[12]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => miso,
      I1 => next_state1_out,
      I2 => \data_out[11]_i_2_n_0\,
      I3 => \data_out[13]_i_2_n_0\,
      I4 => \data_out1__1\,
      I5 => data_out(9),
      O => \data_out[9]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[10]_i_1_n_0\,
      Q => data_out(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[11]_i_1_n_0\,
      Q => data_out(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[12]_i_1_n_0\,
      Q => data_out(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[13]_i_1_n_0\,
      Q => data_out(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[14]_i_1_n_0\,
      Q => data_out(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[15]_i_1_n_0\,
      Q => data_out(15),
      R => '0'
    );
\data_out_reg[15]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_13_n_0\,
      CO(3) => \data_out_reg[15]_i_12_n_0\,
      CO(2) => \data_out_reg[15]_i_12_n_1\,
      CO(1) => \data_out_reg[15]_i_12_n_2\,
      CO(0) => \data_out_reg[15]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_reg[15]_i_12_n_4\,
      O(2) => \data_out_reg[15]_i_12_n_5\,
      O(1) => \data_out_reg[15]_i_12_n_6\,
      O(0) => \data_out_reg[15]_i_12_n_7\,
      S(3 downto 0) => p_0_in(28 downto 25)
    );
\data_out_reg[15]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_15_n_0\,
      CO(3) => \data_out_reg[15]_i_13_n_0\,
      CO(2) => \data_out_reg[15]_i_13_n_1\,
      CO(1) => \data_out_reg[15]_i_13_n_2\,
      CO(0) => \data_out_reg[15]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_reg[15]_i_13_n_4\,
      O(2) => \data_out_reg[15]_i_13_n_5\,
      O(1) => \data_out_reg[15]_i_13_n_6\,
      O(0) => \data_out_reg[15]_i_13_n_7\,
      S(3 downto 0) => p_0_in(24 downto 21)
    );
\data_out_reg[15]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_16_n_0\,
      CO(3) => \data_out_reg[15]_i_15_n_0\,
      CO(2) => \data_out_reg[15]_i_15_n_1\,
      CO(1) => \data_out_reg[15]_i_15_n_2\,
      CO(0) => \data_out_reg[15]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_reg[15]_i_15_n_4\,
      O(2) => \data_out_reg[15]_i_15_n_5\,
      O(1) => \data_out_reg[15]_i_15_n_6\,
      O(0) => \data_out_reg[15]_i_15_n_7\,
      S(3 downto 0) => p_0_in(20 downto 17)
    );
\data_out_reg[15]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_27_n_0\,
      CO(3) => \data_out_reg[15]_i_16_n_0\,
      CO(2) => \data_out_reg[15]_i_16_n_1\,
      CO(1) => \data_out_reg[15]_i_16_n_2\,
      CO(0) => \data_out_reg[15]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_reg[15]_i_16_n_4\,
      O(2) => \data_out_reg[15]_i_16_n_5\,
      O(1) => \data_out_reg[15]_i_16_n_6\,
      O(0) => \data_out_reg[15]_i_16_n_7\,
      S(3 downto 0) => p_0_in(16 downto 13)
    );
\data_out_reg[15]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_9_n_0\,
      CO(3) => \data_out_reg[15]_i_27_n_0\,
      CO(2) => \data_out_reg[15]_i_27_n_1\,
      CO(1) => \data_out_reg[15]_i_27_n_2\,
      CO(0) => \data_out_reg[15]_i_27_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_reg[15]_i_27_n_4\,
      O(2) => \data_out_reg[15]_i_27_n_5\,
      O(1) => \data_out_reg[15]_i_27_n_6\,
      O(0) => \data_out_reg[15]_i_27_n_7\,
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\data_out_reg[15]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_12_n_0\,
      CO(3 downto 2) => \NLW_data_out_reg[15]_i_36_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_out_reg[15]_i_36_n_2\,
      CO(0) => \data_out_reg[15]_i_36_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_data_out_reg[15]_i_36_O_UNCONNECTED\(3),
      O(2) => \data_out_reg[15]_i_36_n_5\,
      O(1) => \data_out_reg[15]_i_36_n_6\,
      O(0) => \data_out_reg[15]_i_36_n_7\,
      S(3) => '0',
      S(2 downto 0) => p_0_in(31 downto 29)
    );
\data_out_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out_reg[15]_i_8_n_0\,
      CO(2) => \data_out_reg[15]_i_8_n_1\,
      CO(1) => \data_out_reg[15]_i_8_n_2\,
      CO(0) => \data_out_reg[15]_i_8_n_3\,
      CYINIT => p_0_in(0),
      DI(3 downto 1) => B"000",
      DI(0) => \data_out[15]_i_19_n_0\,
      O(3) => \data_out_reg[15]_i_8_n_4\,
      O(2) => \data_out_reg[15]_i_8_n_5\,
      O(1) => \data_out_reg[15]_i_8_n_6\,
      O(0) => \data_out_reg[15]_i_8_n_7\,
      S(3) => \data_out[15]_i_20_n_0\,
      S(2) => \data_out[15]_i_21_n_0\,
      S(1) => \data_out[15]_i_22_n_0\,
      S(0) => cnt_num_reg(1)
    );
\data_out_reg[15]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_reg[15]_i_8_n_0\,
      CO(3) => \data_out_reg[15]_i_9_n_0\,
      CO(2) => \data_out_reg[15]_i_9_n_1\,
      CO(1) => \data_out_reg[15]_i_9_n_2\,
      CO(0) => \data_out_reg[15]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in(5),
      O(3) => \data_out_reg[15]_i_9_n_4\,
      O(2) => \data_out_reg[15]_i_9_n_5\,
      O(1) => \data_out_reg[15]_i_9_n_6\,
      O(0) => \data_out_reg[15]_i_9_n_7\,
      S(3 downto 1) => p_0_in(8 downto 6),
      S(0) => cnt_num_reg(5)
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => data_out(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[8]_i_1_n_0\,
      Q => data_out(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_out[9]_i_1_n_0\,
      Q => data_out(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(14),
      I1 => cnt_num_reg(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(12),
      I1 => cnt_num_reg(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(10),
      I1 => cnt_num_reg(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(8),
      I1 => cnt_num_reg(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(14),
      I1 => cnt_num_reg(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(12),
      I1 => cnt_num_reg(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(10),
      I1 => cnt_num_reg(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(8),
      I1 => cnt_num_reg(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(22),
      I1 => cnt_num_reg(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(20),
      I1 => cnt_num_reg(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(18),
      I1 => cnt_num_reg(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(16),
      I1 => cnt_num_reg(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(22),
      I1 => cnt_num_reg(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(20),
      I1 => cnt_num_reg(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(18),
      I1 => cnt_num_reg(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(16),
      I1 => cnt_num_reg(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_num_reg(30),
      I1 => cnt_num_reg(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(28),
      I1 => cnt_num_reg(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(26),
      I1 => cnt_num_reg(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(24),
      I1 => cnt_num_reg(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(30),
      I1 => cnt_num_reg(31),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(28),
      I1 => cnt_num_reg(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(26),
      I1 => cnt_num_reg(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(24),
      I1 => cnt_num_reg(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(6),
      I1 => cnt_num_reg(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_num_reg(2),
      I1 => cnt_num_reg(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(6),
      I1 => cnt_num_reg(7),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_num_reg(4),
      I1 => cnt_num_reg(5),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(2),
      I1 => cnt_num_reg(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_num_reg(0),
      I1 => cnt_num_reg(1),
      O => \i__carry_i_6_n_0\
    );
mosi_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mosi_i_2_n_0,
      I1 => mosi_reg_i_3_n_7,
      I2 => mosi_i_4_n_0,
      I3 => mosi_reg_i_5_n_4,
      I4 => mosi_i_6_n_0,
      O => mosi_i_1_n_0
    );
mosi_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(2),
      O => mosi_i_10_n_0
    );
mosi_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(4),
      O => p_0_in(4)
    );
mosi_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(3),
      O => p_0_in(3)
    );
mosi_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_num_reg(1),
      O => p_0_in(1)
    );
mosi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => mosi_i_6_0(14),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(15),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_18_n_0,
      O => mosi_i_14_n_0
    );
mosi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => mosi_i_6_0(10),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(11),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_19_n_0,
      O => mosi_i_15_n_0
    );
mosi_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => mosi_i_6_0(6),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(7),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_20_n_0,
      O => mosi_i_16_n_0
    );
mosi_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => mosi_i_6_0(2),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(3),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_21_n_0,
      O => mosi_i_17_n_0
    );
mosi_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => mosi_i_6_0(12),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(13),
      O => mosi_i_18_n_0
    );
mosi_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => mosi_i_6_0(8),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(9),
      O => mosi_i_19_n_0
    );
mosi_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => addr(14),
      I1 => addr(15),
      I2 => mosi_reg_i_5_n_7,
      I3 => addr(12),
      I4 => cnt_num_reg(0),
      I5 => addr(13),
      O => mosi_i_2_n_0
    );
mosi_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => mosi_i_6_0(4),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(5),
      O => mosi_i_20_n_0
    );
mosi_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => mosi_i_6_0(0),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => mosi_i_6_0(1),
      O => mosi_i_21_n_0
    );
mosi_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mosi_i_7_n_0,
      I1 => mosi_i_8_n_0,
      I2 => mosi_reg_i_5_n_5,
      I3 => mosi_reg_i_5_n_6,
      I4 => mosi_i_9_n_0,
      O => mosi_i_4_n_0
    );
mosi_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mosi_i_14_n_0,
      I1 => mosi_i_15_n_0,
      I2 => mosi_reg_i_5_n_5,
      I3 => mosi_i_16_n_0,
      I4 => mosi_reg_i_5_n_6,
      I5 => mosi_i_17_n_0,
      O => mosi_i_6_n_0
    );
mosi_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => addr(10),
      I1 => addr(11),
      I2 => mosi_reg_i_5_n_7,
      I3 => addr(8),
      I4 => cnt_num_reg(0),
      I5 => addr(9),
      O => mosi_i_7_n_0
    );
mosi_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => addr(6),
      I1 => addr(7),
      I2 => mosi_reg_i_5_n_7,
      I3 => addr(4),
      I4 => cnt_num_reg(0),
      I5 => addr(5),
      O => mosi_i_8_n_0
    );
mosi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => addr(2),
      I1 => addr(3),
      I2 => mosi_reg_i_5_n_7,
      I3 => addr(0),
      I4 => cnt_num_reg(0),
      I5 => addr(1),
      O => mosi_i_9_n_0
    );
mosi_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mosi_i_1_n_0,
      Q => mosi,
      R => cs_n_i_1_n_0
    );
mosi_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => mosi_reg_i_5_n_0,
      CO(3 downto 0) => NLW_mosi_reg_i_3_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_mosi_reg_i_3_O_UNCONNECTED(3 downto 1),
      O(0) => mosi_reg_i_3_n_7,
      S(3 downto 1) => B"000",
      S(0) => cnt_num_reg(5)
    );
mosi_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mosi_reg_i_5_n_0,
      CO(2) => mosi_reg_i_5_n_1,
      CO(1) => mosi_reg_i_5_n_2,
      CO(0) => mosi_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => mosi_i_10_n_0,
      DI(0) => '0',
      O(3) => mosi_reg_i_5_n_4,
      O(2) => mosi_reg_i_5_n_5,
      O(1) => mosi_reg_i_5_n_6,
      O(0) => mosi_reg_i_5_n_7,
      S(3 downto 2) => p_0_in(4 downto 3),
      S(1) => cnt_num_reg(2),
      S(0) => p_0_in(1)
    );
old_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => old_ready,
      R => '0'
    );
sclk_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sclk_reg0_carry_n_0,
      CO(2) => sclk_reg0_carry_n_1,
      CO(1) => sclk_reg0_carry_n_2,
      CO(0) => sclk_reg0_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sclk_reg0_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => sclk_reg0_carry_i_2_n_0,
      O(3 downto 0) => NLW_sclk_reg0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sclk_reg0_carry_i_3_n_0,
      S(2) => sclk_reg0_carry_i_4_n_0,
      S(1) => sclk_reg0_carry_i_5_n_0,
      S(0) => sclk_reg0_carry_i_6_n_0
    );
\sclk_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sclk_reg0_carry_n_0,
      CO(3) => \sclk_reg0_carry__0_n_0\,
      CO(2) => \sclk_reg0_carry__0_n_1\,
      CO(1) => \sclk_reg0_carry__0_n_2\,
      CO(0) => \sclk_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sclk_reg0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sclk_reg0_carry__0_i_1_n_0\,
      S(2) => \sclk_reg0_carry__0_i_2_n_0\,
      S(1) => \sclk_reg0_carry__0_i_3_n_0\,
      S(0) => \sclk_reg0_carry__0_i_4_n_0\
    );
\sclk_reg0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__0_i_5_n_6\,
      I1 => \sclk_reg0_carry__0_i_5_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__0_i_1_n_0\
    );
\sclk_reg0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__0_i_6_n_4\,
      I1 => \sclk_reg0_carry__0_i_5_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__0_i_2_n_0\
    );
\sclk_reg0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__0_i_6_n_6\,
      I1 => \sclk_reg0_carry__0_i_6_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__0_i_3_n_0\
    );
\sclk_reg0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => sclk_reg0_carry_i_8_n_4,
      I1 => \sclk_reg0_carry__0_i_6_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__0_i_4_n_0\
    );
\sclk_reg0_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__0_i_6_n_0\,
      CO(3) => \sclk_reg0_carry__0_i_5_n_0\,
      CO(2) => \sclk_reg0_carry__0_i_5_n_1\,
      CO(1) => \sclk_reg0_carry__0_i_5_n_2\,
      CO(0) => \sclk_reg0_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg0_carry__0_i_5_n_4\,
      O(2) => \sclk_reg0_carry__0_i_5_n_5\,
      O(1) => \sclk_reg0_carry__0_i_5_n_6\,
      O(0) => \sclk_reg0_carry__0_i_5_n_7\,
      S(3 downto 0) => cnt_clk_reg(16 downto 13)
    );
\sclk_reg0_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => sclk_reg0_carry_i_8_n_0,
      CO(3) => \sclk_reg0_carry__0_i_6_n_0\,
      CO(2) => \sclk_reg0_carry__0_i_6_n_1\,
      CO(1) => \sclk_reg0_carry__0_i_6_n_2\,
      CO(0) => \sclk_reg0_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg0_carry__0_i_6_n_4\,
      O(2) => \sclk_reg0_carry__0_i_6_n_5\,
      O(1) => \sclk_reg0_carry__0_i_6_n_6\,
      O(0) => \sclk_reg0_carry__0_i_6_n_7\,
      S(3 downto 0) => cnt_clk_reg(12 downto 9)
    );
\sclk_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__0_n_0\,
      CO(3) => \sclk_reg0_carry__1_n_0\,
      CO(2) => \sclk_reg0_carry__1_n_1\,
      CO(1) => \sclk_reg0_carry__1_n_2\,
      CO(0) => \sclk_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sclk_reg0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \sclk_reg0_carry__1_i_1_n_0\,
      S(2) => \sclk_reg0_carry__1_i_2_n_0\,
      S(1) => \sclk_reg0_carry__1_i_3_n_0\,
      S(0) => \sclk_reg0_carry__1_i_4_n_0\
    );
\sclk_reg0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__1_i_5_n_6\,
      I1 => \sclk_reg0_carry__1_i_5_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__1_i_1_n_0\
    );
\sclk_reg0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__1_i_6_n_4\,
      I1 => \sclk_reg0_carry__1_i_5_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__1_i_2_n_0\
    );
\sclk_reg0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__1_i_6_n_6\,
      I1 => \sclk_reg0_carry__1_i_6_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__1_i_3_n_0\
    );
\sclk_reg0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__0_i_5_n_4\,
      I1 => \sclk_reg0_carry__1_i_6_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__1_i_4_n_0\
    );
\sclk_reg0_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__1_i_6_n_0\,
      CO(3) => \sclk_reg0_carry__1_i_5_n_0\,
      CO(2) => \sclk_reg0_carry__1_i_5_n_1\,
      CO(1) => \sclk_reg0_carry__1_i_5_n_2\,
      CO(0) => \sclk_reg0_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg0_carry__1_i_5_n_4\,
      O(2) => \sclk_reg0_carry__1_i_5_n_5\,
      O(1) => \sclk_reg0_carry__1_i_5_n_6\,
      O(0) => \sclk_reg0_carry__1_i_5_n_7\,
      S(3 downto 0) => cnt_clk_reg(24 downto 21)
    );
\sclk_reg0_carry__1_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__0_i_5_n_0\,
      CO(3) => \sclk_reg0_carry__1_i_6_n_0\,
      CO(2) => \sclk_reg0_carry__1_i_6_n_1\,
      CO(1) => \sclk_reg0_carry__1_i_6_n_2\,
      CO(0) => \sclk_reg0_carry__1_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg0_carry__1_i_6_n_4\,
      O(2) => \sclk_reg0_carry__1_i_6_n_5\,
      O(1) => \sclk_reg0_carry__1_i_6_n_6\,
      O(0) => \sclk_reg0_carry__1_i_6_n_7\,
      S(3 downto 0) => cnt_clk_reg(20 downto 17)
    );
\sclk_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__1_n_0\,
      CO(3) => \sclk_reg0_carry__2_n_0\,
      CO(2) => \sclk_reg0_carry__2_n_1\,
      CO(1) => \sclk_reg0_carry__2_n_2\,
      CO(0) => \sclk_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => cnt_clk(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_sclk_reg0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sclk_reg0_carry__2_i_2_n_0\,
      S(2) => \sclk_reg0_carry__2_i_3_n_0\,
      S(1) => \sclk_reg0_carry__2_i_4_n_0\,
      S(0) => \sclk_reg0_carry__2_i_5_n_0\
    );
\sclk_reg0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_clk1_carry__2_n_0\,
      I1 => \sclk_reg0_carry__2_i_6_n_5\,
      O => cnt_clk(31)
    );
\sclk_reg0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__2_i_6_n_6\,
      I1 => \sclk_reg0_carry__2_i_6_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__2_i_2_n_0\
    );
\sclk_reg0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__2_i_7_n_4\,
      I1 => \sclk_reg0_carry__2_i_6_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__2_i_3_n_0\
    );
\sclk_reg0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__2_i_7_n_6\,
      I1 => \sclk_reg0_carry__2_i_7_n_5\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__2_i_4_n_0\
    );
\sclk_reg0_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sclk_reg0_carry__1_i_5_n_4\,
      I1 => \sclk_reg0_carry__2_i_7_n_7\,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => \sclk_reg0_carry__2_i_5_n_0\
    );
\sclk_reg0_carry__2_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__2_i_7_n_0\,
      CO(3 downto 2) => \NLW_sclk_reg0_carry__2_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sclk_reg0_carry__2_i_6_n_2\,
      CO(0) => \sclk_reg0_carry__2_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sclk_reg0_carry__2_i_6_O_UNCONNECTED\(3),
      O(2) => \sclk_reg0_carry__2_i_6_n_5\,
      O(1) => \sclk_reg0_carry__2_i_6_n_6\,
      O(0) => \sclk_reg0_carry__2_i_6_n_7\,
      S(3) => '0',
      S(2 downto 0) => cnt_clk_reg(31 downto 29)
    );
\sclk_reg0_carry__2_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg0_carry__1_i_5_n_0\,
      CO(3) => \sclk_reg0_carry__2_i_7_n_0\,
      CO(2) => \sclk_reg0_carry__2_i_7_n_1\,
      CO(1) => \sclk_reg0_carry__2_i_7_n_2\,
      CO(0) => \sclk_reg0_carry__2_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg0_carry__2_i_7_n_4\,
      O(2) => \sclk_reg0_carry__2_i_7_n_5\,
      O(1) => \sclk_reg0_carry__2_i_7_n_6\,
      O(0) => \sclk_reg0_carry__2_i_7_n_7\,
      S(3 downto 0) => cnt_clk_reg(28 downto 25)
    );
sclk_reg0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sclk_reg0_carry_i_7_n_4,
      I1 => sclk_reg0_carry_i_8_n_7,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_1_n_0
    );
sclk_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sclk_reg0_carry_i_7_n_7,
      I1 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_2_n_0
    );
sclk_reg0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => sclk_reg0_carry_i_8_n_6,
      I1 => sclk_reg0_carry_i_8_n_5,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_3_n_0
    );
sclk_reg0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sclk_reg0_carry_i_7_n_4,
      I1 => sclk_reg0_carry_i_8_n_7,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_4_n_0
    );
sclk_reg0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => sclk_reg0_carry_i_7_n_6,
      I1 => sclk_reg0_carry_i_7_n_5,
      I2 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_5_n_0
    );
sclk_reg0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sclk_reg0_carry_i_7_n_7,
      I1 => cnt_clk_reg(0),
      I2 => \cnt_clk1_carry__2_n_0\,
      O => sclk_reg0_carry_i_6_n_0
    );
sclk_reg0_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sclk_reg0_carry_i_7_n_0,
      CO(2) => sclk_reg0_carry_i_7_n_1,
      CO(1) => sclk_reg0_carry_i_7_n_2,
      CO(0) => sclk_reg0_carry_i_7_n_3,
      CYINIT => cnt_clk_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => sclk_reg0_carry_i_7_n_4,
      O(2) => sclk_reg0_carry_i_7_n_5,
      O(1) => sclk_reg0_carry_i_7_n_6,
      O(0) => sclk_reg0_carry_i_7_n_7,
      S(3 downto 0) => cnt_clk_reg(4 downto 1)
    );
sclk_reg0_carry_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => sclk_reg0_carry_i_7_n_0,
      CO(3) => sclk_reg0_carry_i_8_n_0,
      CO(2) => sclk_reg0_carry_i_8_n_1,
      CO(1) => sclk_reg0_carry_i_8_n_2,
      CO(0) => sclk_reg0_carry_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => sclk_reg0_carry_i_8_n_4,
      O(2) => sclk_reg0_carry_i_8_n_5,
      O(1) => sclk_reg0_carry_i_8_n_6,
      O(0) => sclk_reg0_carry_i_8_n_7,
      S(3 downto 0) => cnt_clk_reg(8 downto 5)
    );
sclk_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state1_out,
      I1 => \sclk_reg0_carry__2_n_0\,
      O => sclk_reg_i_1_n_0
    );
sclk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sclk_reg_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi is
  port (
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    rst : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sclk : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    miso : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi is
  signal addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rst\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg10[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg11[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg12[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg13[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg14[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg15[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 15 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3__0\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal slv_reg5 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg9[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
begin
  rst <= \^rst\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(0),
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(1),
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(2),
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(3),
      Q => sel0(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(0),
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(1),
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(2),
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(3),
      Q => p_0_in(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => addr(0),
      I2 => sel0(1),
      I3 => addr(15),
      I4 => sel0(0),
      I5 => \^rst\,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => slv_reg10(0),
      I2 => sel0(1),
      I3 => slv_reg9(0),
      I4 => sel0(0),
      I5 => slv_reg8(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(0),
      I1 => slv_reg14(0),
      I2 => sel0(1),
      I3 => slv_reg13(0),
      I4 => sel0(0),
      I5 => slv_reg12(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => addr(10),
      I2 => sel0(1),
      I3 => slv_reg1(10),
      I4 => sel0(0),
      I5 => slv_reg0(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(10),
      I1 => slv_reg10(10),
      I2 => sel0(1),
      I3 => slv_reg9(10),
      I4 => sel0(0),
      I5 => slv_reg8(10),
      O => \axi_rdata[10]_i_6_n_0\
    );
\axi_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(10),
      I1 => slv_reg14(10),
      I2 => sel0(1),
      I3 => slv_reg13(10),
      I4 => sel0(0),
      I5 => slv_reg12(10),
      O => \axi_rdata[10]_i_7_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => addr(11),
      I2 => sel0(1),
      I3 => slv_reg1(11),
      I4 => sel0(0),
      I5 => slv_reg0(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(11),
      I1 => slv_reg10(11),
      I2 => sel0(1),
      I3 => slv_reg9(11),
      I4 => sel0(0),
      I5 => slv_reg8(11),
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(11),
      I1 => slv_reg14(11),
      I2 => sel0(1),
      I3 => slv_reg13(11),
      I4 => sel0(0),
      I5 => slv_reg12(11),
      O => \axi_rdata[11]_i_7_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => addr(12),
      I2 => sel0(1),
      I3 => slv_reg1(12),
      I4 => sel0(0),
      I5 => slv_reg0(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(12),
      I1 => slv_reg10(12),
      I2 => sel0(1),
      I3 => slv_reg9(12),
      I4 => sel0(0),
      I5 => slv_reg8(12),
      O => \axi_rdata[12]_i_6_n_0\
    );
\axi_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(12),
      I1 => slv_reg14(12),
      I2 => sel0(1),
      I3 => slv_reg13(12),
      I4 => sel0(0),
      I5 => slv_reg12(12),
      O => \axi_rdata[12]_i_7_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => addr(13),
      I2 => sel0(1),
      I3 => slv_reg1(13),
      I4 => sel0(0),
      I5 => slv_reg0(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(13),
      I1 => slv_reg10(13),
      I2 => sel0(1),
      I3 => slv_reg9(13),
      I4 => sel0(0),
      I5 => slv_reg8(13),
      O => \axi_rdata[13]_i_6_n_0\
    );
\axi_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(13),
      I1 => slv_reg14(13),
      I2 => sel0(1),
      I3 => slv_reg13(13),
      I4 => sel0(0),
      I5 => slv_reg12(13),
      O => \axi_rdata[13]_i_7_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => addr(14),
      I2 => sel0(1),
      I3 => slv_reg1(14),
      I4 => sel0(0),
      I5 => slv_reg0(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(14),
      I1 => slv_reg10(14),
      I2 => sel0(1),
      I3 => slv_reg9(14),
      I4 => sel0(0),
      I5 => slv_reg8(14),
      O => \axi_rdata[14]_i_6_n_0\
    );
\axi_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(14),
      I1 => slv_reg14(14),
      I2 => sel0(1),
      I3 => slv_reg13(14),
      I4 => sel0(0),
      I5 => slv_reg12(14),
      O => \axi_rdata[14]_i_7_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => slv_reg1(15),
      I4 => sel0(0),
      I5 => slv_reg0(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(15),
      I1 => slv_reg10(15),
      I2 => sel0(1),
      I3 => slv_reg9(15),
      I4 => sel0(0),
      I5 => slv_reg8(15),
      O => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(15),
      I1 => slv_reg14(15),
      I2 => sel0(1),
      I3 => slv_reg13(15),
      I4 => sel0(0),
      I5 => slv_reg12(15),
      O => \axi_rdata[15]_i_7_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[16]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[16]_i_5_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(16),
      I1 => slv_reg14(16),
      I2 => sel0(1),
      I3 => slv_reg13(16),
      I4 => sel0(0),
      I5 => slv_reg12(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(16),
      I1 => slv_reg10(16),
      I2 => sel0(1),
      I3 => slv_reg9(16),
      I4 => sel0(0),
      I5 => slv_reg8(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => slv_reg1(16),
      I4 => sel0(0),
      I5 => slv_reg0(16),
      O => \axi_rdata[16]_i_5_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[17]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[17]_i_5_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(17),
      I1 => slv_reg14(17),
      I2 => sel0(1),
      I3 => slv_reg13(17),
      I4 => sel0(0),
      I5 => slv_reg12(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(17),
      I1 => slv_reg10(17),
      I2 => sel0(1),
      I3 => slv_reg9(17),
      I4 => sel0(0),
      I5 => slv_reg8(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => slv_reg1(17),
      I4 => sel0(0),
      I5 => slv_reg0(17),
      O => \axi_rdata[17]_i_5_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[18]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[18]_i_5_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(18),
      I1 => slv_reg14(18),
      I2 => sel0(1),
      I3 => slv_reg13(18),
      I4 => sel0(0),
      I5 => slv_reg12(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(18),
      I1 => slv_reg10(18),
      I2 => sel0(1),
      I3 => slv_reg9(18),
      I4 => sel0(0),
      I5 => slv_reg8(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => slv_reg1(18),
      I4 => sel0(0),
      I5 => slv_reg0(18),
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[19]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[19]_i_5_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(19),
      I1 => slv_reg14(19),
      I2 => sel0(1),
      I3 => slv_reg13(19),
      I4 => sel0(0),
      I5 => slv_reg12(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(19),
      I1 => slv_reg10(19),
      I2 => sel0(1),
      I3 => slv_reg9(19),
      I4 => sel0(0),
      I5 => slv_reg8(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => slv_reg1(19),
      I4 => sel0(0),
      I5 => slv_reg0(19),
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => addr(1),
      I2 => sel0(1),
      I3 => slv_reg1(1),
      I4 => sel0(0),
      I5 => slv_reg0(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(1),
      I1 => slv_reg10(1),
      I2 => sel0(1),
      I3 => slv_reg9(1),
      I4 => sel0(0),
      I5 => slv_reg8(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(1),
      I1 => slv_reg14(1),
      I2 => sel0(1),
      I3 => slv_reg13(1),
      I4 => sel0(0),
      I5 => slv_reg12(1),
      O => \axi_rdata[1]_i_7_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[20]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[20]_i_5_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(20),
      I1 => slv_reg14(20),
      I2 => sel0(1),
      I3 => slv_reg13(20),
      I4 => sel0(0),
      I5 => slv_reg12(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(20),
      I1 => slv_reg10(20),
      I2 => sel0(1),
      I3 => slv_reg9(20),
      I4 => sel0(0),
      I5 => slv_reg8(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => slv_reg1(20),
      I4 => sel0(0),
      I5 => slv_reg0(20),
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[21]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[21]_i_5_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(21),
      I1 => slv_reg14(21),
      I2 => sel0(1),
      I3 => slv_reg13(21),
      I4 => sel0(0),
      I5 => slv_reg12(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(21),
      I1 => slv_reg10(21),
      I2 => sel0(1),
      I3 => slv_reg9(21),
      I4 => sel0(0),
      I5 => slv_reg8(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => slv_reg1(21),
      I4 => sel0(0),
      I5 => slv_reg0(21),
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[22]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[22]_i_5_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(22),
      I1 => slv_reg14(22),
      I2 => sel0(1),
      I3 => slv_reg13(22),
      I4 => sel0(0),
      I5 => slv_reg12(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(22),
      I1 => slv_reg10(22),
      I2 => sel0(1),
      I3 => slv_reg9(22),
      I4 => sel0(0),
      I5 => slv_reg8(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => slv_reg1(22),
      I4 => sel0(0),
      I5 => slv_reg0(22),
      O => \axi_rdata[22]_i_5_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[23]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[23]_i_5_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(23),
      I1 => slv_reg14(23),
      I2 => sel0(1),
      I3 => slv_reg13(23),
      I4 => sel0(0),
      I5 => slv_reg12(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(23),
      I1 => slv_reg10(23),
      I2 => sel0(1),
      I3 => slv_reg9(23),
      I4 => sel0(0),
      I5 => slv_reg8(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => slv_reg1(23),
      I4 => sel0(0),
      I5 => slv_reg0(23),
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[24]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(24),
      I1 => slv_reg14(24),
      I2 => sel0(1),
      I3 => slv_reg13(24),
      I4 => sel0(0),
      I5 => slv_reg12(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(24),
      I1 => slv_reg10(24),
      I2 => sel0(1),
      I3 => slv_reg9(24),
      I4 => sel0(0),
      I5 => slv_reg8(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => slv_reg1(24),
      I4 => sel0(0),
      I5 => slv_reg0(24),
      O => \axi_rdata[24]_i_5_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[25]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[25]_i_5_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(25),
      I1 => slv_reg14(25),
      I2 => sel0(1),
      I3 => slv_reg13(25),
      I4 => sel0(0),
      I5 => slv_reg12(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(25),
      I1 => slv_reg10(25),
      I2 => sel0(1),
      I3 => slv_reg9(25),
      I4 => sel0(0),
      I5 => slv_reg8(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => slv_reg1(25),
      I4 => sel0(0),
      I5 => slv_reg0(25),
      O => \axi_rdata[25]_i_5_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[26]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[26]_i_5_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(26),
      I1 => slv_reg14(26),
      I2 => sel0(1),
      I3 => slv_reg13(26),
      I4 => sel0(0),
      I5 => slv_reg12(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(26),
      I1 => slv_reg10(26),
      I2 => sel0(1),
      I3 => slv_reg9(26),
      I4 => sel0(0),
      I5 => slv_reg8(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => slv_reg1(26),
      I4 => sel0(0),
      I5 => slv_reg0(26),
      O => \axi_rdata[26]_i_5_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[27]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[27]_i_5_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(27),
      I1 => slv_reg14(27),
      I2 => sel0(1),
      I3 => slv_reg13(27),
      I4 => sel0(0),
      I5 => slv_reg12(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(27),
      I1 => slv_reg10(27),
      I2 => sel0(1),
      I3 => slv_reg9(27),
      I4 => sel0(0),
      I5 => slv_reg8(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => slv_reg1(27),
      I4 => sel0(0),
      I5 => slv_reg0(27),
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[28]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[28]_i_5_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(28),
      I1 => slv_reg14(28),
      I2 => sel0(1),
      I3 => slv_reg13(28),
      I4 => sel0(0),
      I5 => slv_reg12(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(28),
      I1 => slv_reg10(28),
      I2 => sel0(1),
      I3 => slv_reg9(28),
      I4 => sel0(0),
      I5 => slv_reg8(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => slv_reg1(28),
      I4 => sel0(0),
      I5 => slv_reg0(28),
      O => \axi_rdata[28]_i_5_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[29]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[29]_i_5_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(29),
      I1 => slv_reg14(29),
      I2 => sel0(1),
      I3 => slv_reg13(29),
      I4 => sel0(0),
      I5 => slv_reg12(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(29),
      I1 => slv_reg10(29),
      I2 => sel0(1),
      I3 => slv_reg9(29),
      I4 => sel0(0),
      I5 => slv_reg8(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => slv_reg1(29),
      I4 => sel0(0),
      I5 => slv_reg0(29),
      O => \axi_rdata[29]_i_5_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => addr(2),
      I2 => sel0(1),
      I3 => slv_reg1(2),
      I4 => sel0(0),
      I5 => slv_reg0(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(2),
      I1 => slv_reg10(2),
      I2 => sel0(1),
      I3 => slv_reg9(2),
      I4 => sel0(0),
      I5 => slv_reg8(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(2),
      I1 => slv_reg14(2),
      I2 => sel0(1),
      I3 => slv_reg13(2),
      I4 => sel0(0),
      I5 => slv_reg12(2),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[30]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[30]_i_5_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(30),
      I1 => slv_reg14(30),
      I2 => sel0(1),
      I3 => slv_reg13(30),
      I4 => sel0(0),
      I5 => slv_reg12(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(30),
      I1 => slv_reg10(30),
      I2 => sel0(1),
      I3 => slv_reg9(30),
      I4 => sel0(0),
      I5 => slv_reg8(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => slv_reg1(30),
      I4 => sel0(0),
      I5 => slv_reg0(30),
      O => \axi_rdata[30]_i_5_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[31]_i_5_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[31]_i_6_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(31),
      I1 => slv_reg14(31),
      I2 => sel0(1),
      I3 => slv_reg13(31),
      I4 => sel0(0),
      I5 => slv_reg12(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(31),
      I1 => slv_reg10(31),
      I2 => sel0(1),
      I3 => slv_reg9(31),
      I4 => sel0(0),
      I5 => slv_reg8(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \slv_reg5__0\(31),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => slv_reg1(31),
      I4 => sel0(0),
      I5 => slv_reg0(31),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => addr(3),
      I2 => sel0(1),
      I3 => slv_reg1(3),
      I4 => sel0(0),
      I5 => slv_reg0(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(3),
      I1 => slv_reg10(3),
      I2 => sel0(1),
      I3 => slv_reg9(3),
      I4 => sel0(0),
      I5 => slv_reg8(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(3),
      I1 => slv_reg14(3),
      I2 => sel0(1),
      I3 => slv_reg13(3),
      I4 => sel0(0),
      I5 => slv_reg12(3),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => addr(4),
      I2 => sel0(1),
      I3 => slv_reg1(4),
      I4 => sel0(0),
      I5 => slv_reg0(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(4),
      I1 => slv_reg10(4),
      I2 => sel0(1),
      I3 => slv_reg9(4),
      I4 => sel0(0),
      I5 => slv_reg8(4),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(4),
      I1 => slv_reg14(4),
      I2 => sel0(1),
      I3 => slv_reg13(4),
      I4 => sel0(0),
      I5 => slv_reg12(4),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => addr(5),
      I2 => sel0(1),
      I3 => slv_reg1(5),
      I4 => sel0(0),
      I5 => slv_reg0(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(5),
      I1 => slv_reg10(5),
      I2 => sel0(1),
      I3 => slv_reg9(5),
      I4 => sel0(0),
      I5 => slv_reg8(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(5),
      I1 => slv_reg14(5),
      I2 => sel0(1),
      I3 => slv_reg13(5),
      I4 => sel0(0),
      I5 => slv_reg12(5),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => addr(6),
      I2 => sel0(1),
      I3 => slv_reg1(6),
      I4 => sel0(0),
      I5 => slv_reg0(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(6),
      I1 => slv_reg10(6),
      I2 => sel0(1),
      I3 => slv_reg9(6),
      I4 => sel0(0),
      I5 => slv_reg8(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(6),
      I1 => slv_reg14(6),
      I2 => sel0(1),
      I3 => slv_reg13(6),
      I4 => sel0(0),
      I5 => slv_reg12(6),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => addr(7),
      I2 => sel0(1),
      I3 => slv_reg1(7),
      I4 => sel0(0),
      I5 => slv_reg0(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(7),
      I1 => slv_reg10(7),
      I2 => sel0(1),
      I3 => slv_reg9(7),
      I4 => sel0(0),
      I5 => slv_reg8(7),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(7),
      I1 => slv_reg14(7),
      I2 => sel0(1),
      I3 => slv_reg13(7),
      I4 => sel0(0),
      I5 => slv_reg12(7),
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => addr(8),
      I2 => sel0(1),
      I3 => slv_reg1(8),
      I4 => sel0(0),
      I5 => slv_reg0(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(8),
      I1 => slv_reg10(8),
      I2 => sel0(1),
      I3 => slv_reg9(8),
      I4 => sel0(0),
      I5 => slv_reg8(8),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(8),
      I1 => slv_reg14(8),
      I2 => sel0(1),
      I3 => slv_reg13(8),
      I4 => sel0(0),
      I5 => slv_reg12(8),
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => addr(9),
      I2 => sel0(1),
      I3 => slv_reg1(9),
      I4 => sel0(0),
      I5 => slv_reg0(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(9),
      I1 => slv_reg10(9),
      I2 => sel0(1),
      I3 => slv_reg9(9),
      I4 => sel0(0),
      I5 => slv_reg8(9),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(9),
      I1 => slv_reg14(9),
      I2 => sel0(1),
      I3 => slv_reg13(9),
      I4 => sel0(0),
      I5 => slv_reg12(9),
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_6_n_0\,
      I1 => \axi_rdata[0]_i_7_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_6_n_0\,
      I1 => \axi_rdata[10]_i_7_n_0\,
      O => \axi_rdata_reg[10]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_6_n_0\,
      I1 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata_reg[11]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_6_n_0\,
      I1 => \axi_rdata[12]_i_7_n_0\,
      O => \axi_rdata_reg[12]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_6_n_0\,
      I1 => \axi_rdata[13]_i_7_n_0\,
      O => \axi_rdata_reg[13]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_6_n_0\,
      I1 => \axi_rdata[14]_i_7_n_0\,
      O => \axi_rdata_reg[14]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_6_n_0\,
      I1 => \axi_rdata[15]_i_7_n_0\,
      O => \axi_rdata_reg[15]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_6_n_0\,
      I1 => \axi_rdata[1]_i_7_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_6_n_0\,
      I1 => \axi_rdata[2]_i_7_n_0\,
      O => \axi_rdata_reg[2]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_6_n_0\,
      I1 => \axi_rdata[3]_i_7_n_0\,
      O => \axi_rdata_reg[3]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_6_n_0\,
      I1 => \axi_rdata[4]_i_7_n_0\,
      O => \axi_rdata_reg[4]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_6_n_0\,
      I1 => \axi_rdata[5]_i_7_n_0\,
      O => \axi_rdata_reg[5]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_6_n_0\,
      I1 => \axi_rdata[6]_i_7_n_0\,
      O => \axi_rdata_reg[6]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_6_n_0\,
      I1 => \axi_rdata[7]_i_7_n_0\,
      O => \axi_rdata_reg[7]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_6_n_0\,
      I1 => \axi_rdata[8]_i_7_n_0\,
      O => \axi_rdata_reg[8]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_6_n_0\,
      I1 => \axi_rdata[9]_i_7_n_0\,
      O => \axi_rdata_reg[9]_i_3_n_0\,
      S => sel0(2)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg0[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(0),
      Q => \^rst\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg10[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[15]_i_1_n_0\
    );
\slv_reg10[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[23]_i_1_n_0\
    );
\slv_reg10[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[31]_i_1_n_0\
    );
\slv_reg10[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[7]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg10(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg10(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg10(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg10(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg10(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg10(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg10(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg10(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg10(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg10(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg10(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg10(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg10(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg10(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg10(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg10(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg10(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg10(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg10(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg10(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg10(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg10(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg10(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg10(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg10(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg10(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg10(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg10(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg10(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg10(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg10(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg10(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg11[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg11[15]_i_1_n_0\
    );
\slv_reg11[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg11[23]_i_1_n_0\
    );
\slv_reg11[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg11[31]_i_1_n_0\
    );
\slv_reg11[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg11[7]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg11(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg11(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg11(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg11(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg11(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg11(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg11(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg11(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg11(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg11(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg11(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg11(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg11(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg11(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg11(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg11(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg11(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg11(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg11(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg11(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg11(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg11(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg11(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg11(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg11(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg11(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg11(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg11(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg11(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg11(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg11(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg11(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg12[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \slv_reg12[15]_i_1_n_0\
    );
\slv_reg12[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \slv_reg12[23]_i_1_n_0\
    );
\slv_reg12[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \slv_reg12[31]_i_1_n_0\
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \slv_reg12[7]_i_1_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg12(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg12(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg12(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg12(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg12(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg12(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg12(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg12(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg12(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg12(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg12(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg12(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg12(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg12(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg12(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg12(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg12(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg12(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg12(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg12(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg12(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg12(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg12(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg12(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg12(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg12(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg12(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg12(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg12(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg12(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg12(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg12(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg13[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => s_axi_wstrb(1),
      I5 => p_0_in(1),
      O => \slv_reg13[15]_i_1_n_0\
    );
\slv_reg13[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => s_axi_wstrb(2),
      I5 => p_0_in(1),
      O => \slv_reg13[23]_i_1_n_0\
    );
\slv_reg13[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => s_axi_wstrb(3),
      I5 => p_0_in(1),
      O => \slv_reg13[31]_i_1_n_0\
    );
\slv_reg13[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => s_axi_wstrb(0),
      I5 => p_0_in(1),
      O => \slv_reg13[7]_i_1_n_0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg13(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg13(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg13(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg13(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg13(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg13(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg13(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg13(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg13(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg13(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg13(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg13(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg13(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg13(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg13(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg13(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg13(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg13(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg13(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg13(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg13(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg13(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg13(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg13(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg13(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg13(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg13(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg13(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg13(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg13(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg13(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg13(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg14[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => s_axi_wstrb(1),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \slv_reg14[15]_i_1_n_0\
    );
\slv_reg14[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => s_axi_wstrb(2),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \slv_reg14[23]_i_1_n_0\
    );
\slv_reg14[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => s_axi_wstrb(3),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \slv_reg14[31]_i_1_n_0\
    );
\slv_reg14[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => s_axi_wstrb(0),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \slv_reg14[7]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg14(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg14(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg14(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg14(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg14(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg14(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg14(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg14(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg14(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg14(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg14(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg14(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg14(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg14(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg14(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg14(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg14(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg14(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg14(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg14(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg14(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg14(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg14(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg14(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg14(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg14(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg14(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg14(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg14(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg14(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg14(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg14(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg15[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg15[15]_i_1_n_0\
    );
\slv_reg15[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg15[23]_i_1_n_0\
    );
\slv_reg15[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg15[31]_i_1_n_0\
    );
\slv_reg15[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg15[7]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg15(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg15(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg15(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg15(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg15(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg15(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg15(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg15(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg15(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg15(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg15(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg15(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg15(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg15(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg15(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg15(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg15(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg15(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg15(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg15(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg15(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg15(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg15(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg15(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg15(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg15(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg15(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg15(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg15(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg15(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg15(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg15(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => addr(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => addr(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => addr(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => addr(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => addr(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => addr(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => addr(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => addr(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => addr(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => addr(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => addr(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => addr(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => addr(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => addr(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => addr(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => addr(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \slv_reg3__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \slv_reg3__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \slv_reg3__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \slv_reg3__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \slv_reg3__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \slv_reg3__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \slv_reg3__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \slv_reg3__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \slv_reg3__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \slv_reg3__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \slv_reg3__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \slv_reg3__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \slv_reg3__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \slv_reg3__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \slv_reg3__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \slv_reg3__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg5(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \slv_reg5__0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \slv_reg5__0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \slv_reg5__0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \slv_reg5__0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \slv_reg5__0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \slv_reg5__0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \slv_reg5__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \slv_reg5__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \slv_reg5__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \slv_reg5__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \slv_reg5__0\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \slv_reg5__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \slv_reg5__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \slv_reg5__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \slv_reg5__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \slv_reg5__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \slv_reg5__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \slv_reg5__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \slv_reg5__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \slv_reg5__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \slv_reg5__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \slv_reg5__0\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \slv_reg5__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \slv_reg5__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \slv_reg5__0\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \slv_reg5__0\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \slv_reg5__0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \slv_reg5__0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \slv_reg5__0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \slv_reg5__0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \slv_reg5__0\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg7(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg7(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg7(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg7(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg7(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg7(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg7(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg7(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg7(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg7(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg7(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg7(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg7(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg7(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg7(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg7(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg7(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg7(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg7(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg7(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg7(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg7(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg7(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg7(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg7(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg7(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg7(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg7(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg7(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg7(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg7(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg7(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(1),
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(2),
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(3),
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s_axi_wstrb(0),
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg8(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg8(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg8(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg8(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg8(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg8(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg8(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg8(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg8(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg8(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg8(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg8(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg8(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg8(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg8(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg8(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg8(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg8(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg8(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg8(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg8(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg8(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg8(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg8(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg8(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg8(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg8(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg8(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg8(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg8(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg8(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg8(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(1),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg9[15]_i_1_n_0\
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(2),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg9[23]_i_1_n_0\
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(3),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \slv_reg9[7]_i_1_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg9(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg9(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg9(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg9(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg9(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg9(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg9(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg9(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg9(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg9(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg9(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg9(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg9(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg9(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg9(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg9(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg9(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg9(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg9(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg9(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg9(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg9(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg9(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg9(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg9(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg9(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg9(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg9(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg9(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg9(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg9(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg9(9),
      R => axi_awready_i_1_n_0
    );
spi_interface_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface
     port map (
      D(15 downto 0) => reg_data_out(15 downto 0),
      Q(15 downto 1) => \slv_reg5__0\(15 downto 1),
      Q(0) => slv_reg5(0),
      addr(15 downto 0) => addr(15 downto 0),
      \axi_rdata_reg[0]\(3 downto 0) => sel0(3 downto 0),
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_i_3_n_0\,
      \axi_rdata_reg[0]_1\ => \axi_rdata[0]_i_4_n_0\,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]_i_3_n_0\,
      \axi_rdata_reg[10]_0\ => \axi_rdata[10]_i_4_n_0\,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]_i_3_n_0\,
      \axi_rdata_reg[11]_0\ => \axi_rdata[11]_i_4_n_0\,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]_i_3_n_0\,
      \axi_rdata_reg[12]_0\ => \axi_rdata[12]_i_4_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]_i_3_n_0\,
      \axi_rdata_reg[13]_0\ => \axi_rdata[13]_i_4_n_0\,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]_i_3_n_0\,
      \axi_rdata_reg[14]_0\ => \axi_rdata[14]_i_4_n_0\,
      \axi_rdata_reg[15]\ => \axi_rdata_reg[15]_i_3_n_0\,
      \axi_rdata_reg[15]_0\ => \axi_rdata[15]_i_4_n_0\,
      \axi_rdata_reg[15]_i_2_0\(15 downto 0) => slv_reg7(15 downto 0),
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]_i_3_n_0\,
      \axi_rdata_reg[1]_0\ => \axi_rdata[1]_i_4_n_0\,
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]_i_3_n_0\,
      \axi_rdata_reg[2]_0\ => \axi_rdata[2]_i_4_n_0\,
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]_i_3_n_0\,
      \axi_rdata_reg[3]_0\ => \axi_rdata[3]_i_4_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]_i_3_n_0\,
      \axi_rdata_reg[4]_0\ => \axi_rdata[4]_i_4_n_0\,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]_i_3_n_0\,
      \axi_rdata_reg[5]_0\ => \axi_rdata[5]_i_4_n_0\,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]_i_3_n_0\,
      \axi_rdata_reg[6]_0\ => \axi_rdata[6]_i_4_n_0\,
      \axi_rdata_reg[7]\ => \axi_rdata_reg[7]_i_3_n_0\,
      \axi_rdata_reg[7]_0\ => \axi_rdata[7]_i_4_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]_i_3_n_0\,
      \axi_rdata_reg[8]_0\ => \axi_rdata[8]_i_4_n_0\,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]_i_3_n_0\,
      \axi_rdata_reg[9]_0\ => \axi_rdata[9]_i_4_n_0\,
      cs_n => cs_n,
      miso => miso,
      mosi => mosi,
      mosi_i_6_0(15 downto 0) => slv_reg3(15 downto 0),
      rst => \^rst\,
      s_axi_aclk => s_axi_aclk,
      sclk => sclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rst : out STD_LOGIC;
    sclk : out STD_LOGIC;
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ADC_adc1_spi_1,axi_lite_spi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_lite_spi,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ADC_clk_100m, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ADC_clk_100m, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi
     port map (
      cs_n => cs_n,
      miso => miso,
      mosi => mosi,
      rst => rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sclk => sclk
    );
end STRUCTURE;
