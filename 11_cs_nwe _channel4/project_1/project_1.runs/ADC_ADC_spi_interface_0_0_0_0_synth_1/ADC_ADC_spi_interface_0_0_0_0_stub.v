// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 26 17:17:49 2022
// Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_ADC_spi_interface_0_0_0_0_stub.v
// Design      : ADC_ADC_spi_interface_0_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_spi_interface_0_0,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, clk, addr, data_in, data_out, ready, busy, sclk, 
  cs_n, mosi, miso)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,addr[15:0],data_in[15:0],data_out[15:0],ready,busy,sclk,cs_n,mosi,miso" */;
  input rst;
  input clk;
  input [15:0]addr;
  input [15:0]data_in;
  output [15:0]data_out;
  input ready;
  output busy;
  output sclk;
  output cs_n;
  output mosi;
  input miso;
endmodule
