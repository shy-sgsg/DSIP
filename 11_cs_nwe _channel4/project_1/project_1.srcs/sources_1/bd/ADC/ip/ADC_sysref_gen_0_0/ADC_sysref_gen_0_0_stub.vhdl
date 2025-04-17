-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Aug 17 17:21:57 2023
-- Host        : GL-0301-949 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/work_panyanjiao/2306_yth_pingguban/8T8R/project_vivado18.3_YTH2_ADDA_pgb4/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_sysref_gen_0_0/ADC_sysref_gen_0_0_stub.vhdl
-- Design      : ADC_sysref_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC_sysref_gen_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    div_cfg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysref_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysref : out STD_LOGIC
  );

end ADC_sysref_gen_0_0;

architecture stub of ADC_sysref_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,div_cfg[7:0],sysref_num[7:0],sysref";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sysref_gen,Vivado 2018.3";
begin
end;
