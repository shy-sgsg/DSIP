// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug 10 14:54:29 2023
// Host        : GL-0301-949 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jesd204_0_stub.v
// Design      : jesd204_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "jesd204_v7_2_4,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rx_reset, rx_core_clk, rx_sysref, rx_sync, 
  rx_aresetn, rx_start_of_frame, rx_end_of_frame, rx_start_of_multiframe, 
  rx_end_of_multiframe, rx_frame_error, rx_tvalid, rx_tdata, rx_reset_gt, rxencommaalign_out, 
  rx_reset_done, gt0_rxdata, gt0_rxcharisk, gt0_rxdisperr, gt0_rxnotintable, gt1_rxdata, 
  gt1_rxcharisk, gt1_rxdisperr, gt1_rxnotintable, gt2_rxdata, gt2_rxcharisk, gt2_rxdisperr, 
  gt2_rxnotintable, gt3_rxdata, gt3_rxcharisk, gt3_rxdisperr, gt3_rxnotintable, gt4_rxdata, 
  gt4_rxcharisk, gt4_rxdisperr, gt4_rxnotintable, gt5_rxdata, gt5_rxcharisk, gt5_rxdisperr, 
  gt5_rxnotintable, gt6_rxdata, gt6_rxcharisk, gt6_rxdisperr, gt6_rxnotintable, gt7_rxdata, 
  gt7_rxcharisk, gt7_rxdisperr, gt7_rxnotintable, s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="rx_reset,rx_core_clk,rx_sysref,rx_sync,rx_aresetn,rx_start_of_frame[3:0],rx_end_of_frame[3:0],rx_start_of_multiframe[3:0],rx_end_of_multiframe[3:0],rx_frame_error[31:0],rx_tvalid,rx_tdata[255:0],rx_reset_gt,rxencommaalign_out,rx_reset_done,gt0_rxdata[31:0],gt0_rxcharisk[3:0],gt0_rxdisperr[3:0],gt0_rxnotintable[3:0],gt1_rxdata[31:0],gt1_rxcharisk[3:0],gt1_rxdisperr[3:0],gt1_rxnotintable[3:0],gt2_rxdata[31:0],gt2_rxcharisk[3:0],gt2_rxdisperr[3:0],gt2_rxnotintable[3:0],gt3_rxdata[31:0],gt3_rxcharisk[3:0],gt3_rxdisperr[3:0],gt3_rxnotintable[3:0],gt4_rxdata[31:0],gt4_rxcharisk[3:0],gt4_rxdisperr[3:0],gt4_rxnotintable[3:0],gt5_rxdata[31:0],gt5_rxcharisk[3:0],gt5_rxdisperr[3:0],gt5_rxnotintable[3:0],gt6_rxdata[31:0],gt6_rxcharisk[3:0],gt6_rxdisperr[3:0],gt6_rxnotintable[3:0],gt7_rxdata[31:0],gt7_rxcharisk[3:0],gt7_rxdisperr[3:0],gt7_rxnotintable[3:0],s_axi_aclk,s_axi_aresetn,s_axi_awaddr[11:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[11:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready" */;
  input rx_reset;
  input rx_core_clk;
  input rx_sysref;
  output rx_sync;
  output rx_aresetn;
  output [3:0]rx_start_of_frame;
  output [3:0]rx_end_of_frame;
  output [3:0]rx_start_of_multiframe;
  output [3:0]rx_end_of_multiframe;
  output [31:0]rx_frame_error;
  output rx_tvalid;
  output [255:0]rx_tdata;
  output rx_reset_gt;
  output rxencommaalign_out;
  input rx_reset_done;
  input [31:0]gt0_rxdata;
  input [3:0]gt0_rxcharisk;
  input [3:0]gt0_rxdisperr;
  input [3:0]gt0_rxnotintable;
  input [31:0]gt1_rxdata;
  input [3:0]gt1_rxcharisk;
  input [3:0]gt1_rxdisperr;
  input [3:0]gt1_rxnotintable;
  input [31:0]gt2_rxdata;
  input [3:0]gt2_rxcharisk;
  input [3:0]gt2_rxdisperr;
  input [3:0]gt2_rxnotintable;
  input [31:0]gt3_rxdata;
  input [3:0]gt3_rxcharisk;
  input [3:0]gt3_rxdisperr;
  input [3:0]gt3_rxnotintable;
  input [31:0]gt4_rxdata;
  input [3:0]gt4_rxcharisk;
  input [3:0]gt4_rxdisperr;
  input [3:0]gt4_rxnotintable;
  input [31:0]gt5_rxdata;
  input [3:0]gt5_rxcharisk;
  input [3:0]gt5_rxdisperr;
  input [3:0]gt5_rxnotintable;
  input [31:0]gt6_rxdata;
  input [3:0]gt6_rxcharisk;
  input [3:0]gt6_rxdisperr;
  input [3:0]gt6_rxnotintable;
  input [31:0]gt7_rxdata;
  input [3:0]gt7_rxcharisk;
  input [3:0]gt7_rxdisperr;
  input [3:0]gt7_rxnotintable;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [11:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
endmodule
