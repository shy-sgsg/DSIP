// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug 25 15:35:38 2022
// Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top ADC_vio_0_0 -prefix
//               ADC_vio_0_0_ ADC_vio_0_0_stub.v
// Design      : ADC_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.3" *)
module ADC_vio_0_0(clk, probe_in0, probe_in1, probe_out0, 
  probe_out1, probe_out2, probe_out3, probe_out4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[15:0],probe_in1[0:0],probe_out0[15:0],probe_out1[15:0],probe_out2[0:0],probe_out3[0:0],probe_out4[0:0]" */;
  input clk;
  input [15:0]probe_in0;
  input [0:0]probe_in1;
  output [15:0]probe_out0;
  output [15:0]probe_out1;
  output [0:0]probe_out2;
  output [0:0]probe_out3;
  output [0:0]probe_out4;
endmodule
