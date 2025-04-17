-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Dec 26 14:56:26 2024
-- Host        : DESKTOP-8PN6IMS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/DSIP/DSIP_EB_banji_kaifa/chengdu_BIT/project_vivado18.3_YTH2_ADDA_pgb4_3.2/project_1/project_1.srcs/sources_1/ip/jesd204_tx/jesd204_tx_stub.vhdl
-- Design      : jesd204_tx
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jesd204_tx is
  Port ( 
    tx_reset : in STD_LOGIC;
    tx_core_clk : in STD_LOGIC;
    tx_sysref : in STD_LOGIC;
    tx_sync : in STD_LOGIC;
    tx_aresetn : out STD_LOGIC;
    tx_start_of_frame : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_start_of_multiframe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_tready : out STD_LOGIC;
    tx_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    tx_reset_gt : out STD_LOGIC;
    tx_reset_done : in STD_LOGIC;
    gt0_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt4_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt4_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt5_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt5_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt6_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt6_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt7_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt7_txcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt_prbssel_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );

end jesd204_tx;

architecture stub of jesd204_tx is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tx_reset,tx_core_clk,tx_sysref,tx_sync,tx_aresetn,tx_start_of_frame[3:0],tx_start_of_multiframe[3:0],tx_tready,tx_tdata[255:0],tx_reset_gt,tx_reset_done,gt0_txdata[31:0],gt0_txcharisk[3:0],gt1_txdata[31:0],gt1_txcharisk[3:0],gt2_txdata[31:0],gt2_txcharisk[3:0],gt3_txdata[31:0],gt3_txcharisk[3:0],gt4_txdata[31:0],gt4_txcharisk[3:0],gt5_txdata[31:0],gt5_txcharisk[3:0],gt6_txdata[31:0],gt6_txcharisk[3:0],gt7_txdata[31:0],gt7_txcharisk[3:0],gt_prbssel_out[2:0],s_axi_aclk,s_axi_aresetn,s_axi_awaddr[11:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[11:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "jesd204_v7_2_4,Vivado 2018.3";
begin
end;
