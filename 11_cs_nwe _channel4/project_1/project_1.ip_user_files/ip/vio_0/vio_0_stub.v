// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Aug 13 16:05:37 2023
// Host        : GL-0301-949 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/work_panyanjiao/2306_yth_pingguban/8T8R/project_vivado18.3_YTH2_ADDA_yzb3/project_1/project_1.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.3" *)
module vio_0(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[15:0],probe_out1[15:0],probe_out2[15:0],probe_out3[15:0]" */;
  input clk;
  output [15:0]probe_out0;
  output [15:0]probe_out1;
  output [15:0]probe_out2;
  output [15:0]probe_out3;
endmodule
