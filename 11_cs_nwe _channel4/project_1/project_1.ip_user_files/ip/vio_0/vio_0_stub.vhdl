-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Aug 13 16:05:37 2023
-- Host        : GL-0301-949 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/work_panyanjiao/2306_yth_pingguban/8T8R/project_vivado18.3_YTH2_ADDA_yzb3/project_1/project_1.srcs/sources_1/ip/vio_0/vio_0_stub.vhdl
-- Design      : vio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end vio_0;

architecture stub of vio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_out0[15:0],probe_out1[15:0],probe_out2[15:0],probe_out3[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2018.3";
begin
end;
