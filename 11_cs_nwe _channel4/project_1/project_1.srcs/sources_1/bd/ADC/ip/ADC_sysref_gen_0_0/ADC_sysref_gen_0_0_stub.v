// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug 17 17:21:57 2023
// Host        : GL-0301-949 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/work_panyanjiao/2306_yth_pingguban/8T8R/project_vivado18.3_YTH2_ADDA_pgb4/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_sysref_gen_0_0/ADC_sysref_gen_0_0_stub.v
// Design      : ADC_sysref_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sysref_gen,Vivado 2018.3" *)
module ADC_sysref_gen_0_0(clk, rst, div_cfg, sysref_num, sysref)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,div_cfg[7:0],sysref_num[7:0],sysref" */;
  input clk;
  input rst;
  input [7:0]div_cfg;
  input [7:0]sysref_num;
  output sysref;
endmodule
