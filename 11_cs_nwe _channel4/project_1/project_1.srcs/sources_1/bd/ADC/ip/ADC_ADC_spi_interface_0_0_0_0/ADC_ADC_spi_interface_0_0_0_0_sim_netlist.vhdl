-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 26 17:17:49 2022
-- Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/work_panyanjiao/37_YTH2/new_2/pro/ad/project_vivado18.3_YTH2_AD_0825/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_ADC_spi_interface_0_0_0_0/ADC_ADC_spi_interface_0_0_0_0_sim_netlist.vhdl
-- Design      : ADC_ADC_spi_interface_0_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_ADC_spi_interface_0_0_0_0_spi_interface is
  port (
    busy : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ready : in STD_LOGIC;
    clk : in STD_LOGIC;
    miso : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ADC_ADC_spi_interface_0_0_0_0_spi_interface : entity is "spi_interface";
end ADC_ADC_spi_interface_0_0_0_0_spi_interface;

architecture STRUCTURE of ADC_ADC_spi_interface_0_0_0_0_spi_interface is
  signal \^busy\ : STD_LOGIC;
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
  signal \^data_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out1 : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  signal \data_out_reg[15]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_13_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_15_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_16_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_27_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_36_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_1\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_2\ : STD_LOGIC;
  signal \data_out_reg[15]_i_9_n_3\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of current_state_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[11]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[13]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[14]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[15]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mosi_i_18 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mosi_i_19 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mosi_i_21 : label is "soft_lutpair3";
begin
  busy <= \^busy\;
  data_out(15 downto 0) <= \^data_out\(15 downto 0);
  sclk <= \^sclk\;
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      I2 => \^busy\,
      I3 => old_ready,
      I4 => ready,
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
      I1 => \^busy\,
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
      C => clk,
      CE => '1',
      D => next_state1_out,
      Q => \^busy\,
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
      I5 => \^data_out\(0),
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
      I5 => \^data_out\(10),
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
      I5 => \^data_out\(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => data_out1(2),
      I1 => \data_out[15]_i_5_n_0\,
      I2 => \data_out[15]_i_6_n_0\,
      I3 => \data_out[15]_i_7_n_0\,
      I4 => data_out1(3),
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
      I5 => \^data_out\(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_out1(1),
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
      I5 => \^data_out\(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_out1(1),
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
      I5 => \^data_out\(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt_num_reg(0),
      I1 => data_out1(1),
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
      I5 => \^data_out\(15),
      O => \data_out[15]_i_1_n_0\
    );
\data_out[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(13),
      I1 => data_out1(12),
      I2 => data_out1(15),
      I3 => data_out1(14),
      O => \data_out[15]_i_10_n_0\
    );
\data_out[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(9),
      I1 => data_out1(8),
      I2 => data_out1(11),
      I3 => data_out1(10),
      O => \data_out[15]_i_11_n_0\
    );
\data_out[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(29),
      I1 => data_out1(28),
      I2 => data_out1(31),
      I3 => data_out1(30),
      O => \data_out[15]_i_14_n_0\
    );
\data_out[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(21),
      I1 => data_out1(20),
      I2 => data_out1(23),
      I3 => data_out1(22),
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
      I3 => data_out1(3),
      I4 => data_out1(2),
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
      I0 => data_out1(1),
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
      I0 => data_out1(6),
      I1 => data_out1(7),
      I2 => data_out1(4),
      I3 => data_out1(5),
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
      I0 => data_out1(26),
      I1 => data_out1(27),
      I2 => data_out1(24),
      I3 => data_out1(25),
      I4 => \data_out[15]_i_14_n_0\,
      O => \data_out[15]_i_6_n_0\
    );
\data_out[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_out1(18),
      I1 => data_out1(19),
      I2 => data_out1(16),
      I3 => data_out1(17),
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
      I5 => \^data_out\(1),
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
      I5 => \^data_out\(2),
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
      I5 => \^data_out\(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_out1(2),
      I1 => data_out1(3),
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
      I5 => \^data_out\(4),
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
      I5 => \^data_out\(5),
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
      I5 => \^data_out\(6),
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
      I5 => \^data_out\(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => data_out1(3),
      I1 => \data_out[15]_i_5_n_0\,
      I2 => \data_out[15]_i_6_n_0\,
      I3 => \data_out[15]_i_7_n_0\,
      I4 => data_out1(2),
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
      I5 => \^data_out\(8),
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
      I5 => \^data_out\(9),
      O => \data_out[9]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \^data_out\(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[10]_i_1_n_0\,
      Q => \^data_out\(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[11]_i_1_n_0\,
      Q => \^data_out\(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[12]_i_1_n_0\,
      Q => \^data_out\(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[13]_i_1_n_0\,
      Q => \^data_out\(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[14]_i_1_n_0\,
      Q => \^data_out\(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[15]_i_1_n_0\,
      Q => \^data_out\(15),
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
      O(3 downto 0) => data_out1(28 downto 25),
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
      O(3 downto 0) => data_out1(24 downto 21),
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
      O(3 downto 0) => data_out1(20 downto 17),
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
      O(3 downto 0) => data_out1(16 downto 13),
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
      O(3 downto 0) => data_out1(12 downto 9),
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
      O(2 downto 0) => data_out1(31 downto 29),
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
      O(3 downto 0) => data_out1(4 downto 1),
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
      O(3 downto 0) => data_out1(8 downto 5),
      S(3 downto 1) => p_0_in(8 downto 6),
      S(0) => cnt_num_reg(5)
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \^data_out\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \^data_out\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \^data_out\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \^data_out\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \^data_out\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \^data_out\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \^data_out\(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[8]_i_1_n_0\,
      Q => \^data_out\(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[9]_i_1_n_0\,
      Q => \^data_out\(9),
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
      O => p_0_in(2)
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
      I0 => data_in(14),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(15),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_18_n_0,
      O => mosi_i_14_n_0
    );
mosi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => data_in(10),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(11),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_19_n_0,
      O => mosi_i_15_n_0
    );
mosi_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => data_in(6),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(7),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_20_n_0,
      O => mosi_i_16_n_0
    );
mosi_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => data_in(2),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(3),
      I4 => mosi_reg_i_5_n_7,
      I5 => mosi_i_21_n_0,
      O => mosi_i_17_n_0
    );
mosi_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => data_in(12),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(13),
      O => mosi_i_18_n_0
    );
mosi_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => data_in(8),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(9),
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
      I0 => data_in(4),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(5),
      O => mosi_i_20_n_0
    );
mosi_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => data_in(0),
      I1 => cnt_num_reg(0),
      I2 => addr(15),
      I3 => data_in(1),
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
      C => clk,
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
      DI(1) => p_0_in(2),
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
      C => clk,
      CE => '1',
      D => ready,
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
      C => clk,
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
entity ADC_ADC_spi_interface_0_0_0_0_ADC_spi_interface_0_0 is
  port (
    busy : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ready : in STD_LOGIC;
    clk : in STD_LOGIC;
    miso : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ADC_ADC_spi_interface_0_0_0_0_ADC_spi_interface_0_0 : entity is "ADC_spi_interface_0_0";
end ADC_ADC_spi_interface_0_0_0_0_ADC_spi_interface_0_0;

architecture STRUCTURE of ADC_ADC_spi_interface_0_0_0_0_ADC_spi_interface_0_0 is
begin
inst: entity work.ADC_ADC_spi_interface_0_0_0_0_spi_interface
     port map (
      addr(15 downto 0) => addr(15 downto 0),
      busy => busy,
      clk => clk,
      cs_n => cs_n,
      data_in(15 downto 0) => data_in(15 downto 0),
      data_out(15 downto 0) => data_out(15 downto 0),
      miso => miso,
      mosi => mosi,
      ready => ready,
      rst => rst,
      sclk => sclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_ADC_spi_interface_0_0_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    busy : out STD_LOGIC;
    sclk : out STD_LOGIC;
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADC_ADC_spi_interface_0_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADC_ADC_spi_interface_0_0_0_0 : entity is "ADC_ADC_spi_interface_0_0_0_0,ADC_spi_interface_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ADC_ADC_spi_interface_0_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ADC_ADC_spi_interface_0_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ADC_ADC_spi_interface_0_0_0_0 : entity is "ADC_spi_interface_0_0,Vivado 2018.3";
end ADC_ADC_spi_interface_0_0_0_0;

architecture STRUCTURE of ADC_ADC_spi_interface_0_0_0_0 is
  attribute X_CORE_INFO of inst : label is "spi_interface,Vivado 2019.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, CLK_DOMAIN ADC_slowest_sync_clk_0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ADC_ADC_spi_interface_0_0_0_0_ADC_spi_interface_0_0
     port map (
      addr(15 downto 0) => addr(15 downto 0),
      busy => busy,
      clk => clk,
      cs_n => cs_n,
      data_in(15 downto 0) => data_in(15 downto 0),
      data_out(15 downto 0) => data_out(15 downto 0),
      miso => miso,
      mosi => mosi,
      ready => ready,
      rst => rst,
      sclk => sclk
    );
end STRUCTURE;
