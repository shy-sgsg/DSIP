-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 26 17:17:49 2022
-- Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/work_panyanjiao/37_YTH2/new_2/pro/ad/project_vivado18.3_YTH2_AD_0825/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_ADC_spi_interface_0_0_0_0/ADC_ADC_spi_interface_0_0_0_0_stub.vhdl
-- Design      : ADC_ADC_spi_interface_0_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC_ADC_spi_interface_0_0_0_0 is
  Port ( 
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

end ADC_ADC_spi_interface_0_0_0_0;

architecture stub of ADC_ADC_spi_interface_0_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,addr[15:0],data_in[15:0],data_out[15:0],ready,busy,sclk,cs_n,mosi,miso";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_spi_interface_0_0,Vivado 2018.3";
begin
end;
