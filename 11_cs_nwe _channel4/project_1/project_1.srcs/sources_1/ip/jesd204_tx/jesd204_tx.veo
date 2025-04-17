// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:jesd204:7.2
// IP Revision: 4

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
jesd204_tx your_instance_name (
  .gt0_txdata(gt0_txdata),                          // output wire [31 : 0] gt0_txdata
  .gt0_txcharisk(gt0_txcharisk),                    // output wire [3 : 0] gt0_txcharisk
  .gt1_txdata(gt1_txdata),                          // output wire [31 : 0] gt1_txdata
  .gt1_txcharisk(gt1_txcharisk),                    // output wire [3 : 0] gt1_txcharisk
  .gt2_txdata(gt2_txdata),                          // output wire [31 : 0] gt2_txdata
  .gt2_txcharisk(gt2_txcharisk),                    // output wire [3 : 0] gt2_txcharisk
  .gt3_txdata(gt3_txdata),                          // output wire [31 : 0] gt3_txdata
  .gt3_txcharisk(gt3_txcharisk),                    // output wire [3 : 0] gt3_txcharisk
  .gt4_txdata(gt4_txdata),                          // output wire [31 : 0] gt4_txdata
  .gt4_txcharisk(gt4_txcharisk),                    // output wire [3 : 0] gt4_txcharisk
  .gt5_txdata(gt5_txdata),                          // output wire [31 : 0] gt5_txdata
  .gt5_txcharisk(gt5_txcharisk),                    // output wire [3 : 0] gt5_txcharisk
  .gt6_txdata(gt6_txdata),                          // output wire [31 : 0] gt6_txdata
  .gt6_txcharisk(gt6_txcharisk),                    // output wire [3 : 0] gt6_txcharisk
  .gt7_txdata(gt7_txdata),                          // output wire [31 : 0] gt7_txdata
  .gt7_txcharisk(gt7_txcharisk),                    // output wire [3 : 0] gt7_txcharisk
  .tx_reset_done(tx_reset_done),                    // input wire tx_reset_done
  .gt_prbssel_out(gt_prbssel_out),                  // output wire [2 : 0] gt_prbssel_out
  .tx_reset_gt(tx_reset_gt),                        // output wire tx_reset_gt
  .tx_core_clk(tx_core_clk),                        // input wire tx_core_clk
  .s_axi_aclk(s_axi_aclk),                          // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),                    // input wire s_axi_aresetn
  .s_axi_awaddr(s_axi_awaddr),                      // input wire [11 : 0] s_axi_awaddr
  .s_axi_awvalid(s_axi_awvalid),                    // input wire s_axi_awvalid
  .s_axi_awready(s_axi_awready),                    // output wire s_axi_awready
  .s_axi_wdata(s_axi_wdata),                        // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),                        // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(s_axi_wvalid),                      // input wire s_axi_wvalid
  .s_axi_wready(s_axi_wready),                      // output wire s_axi_wready
  .s_axi_bresp(s_axi_bresp),                        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),                      // output wire s_axi_bvalid
  .s_axi_bready(s_axi_bready),                      // input wire s_axi_bready
  .s_axi_araddr(s_axi_araddr),                      // input wire [11 : 0] s_axi_araddr
  .s_axi_arvalid(s_axi_arvalid),                    // input wire s_axi_arvalid
  .s_axi_arready(s_axi_arready),                    // output wire s_axi_arready
  .s_axi_rdata(s_axi_rdata),                        // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),                        // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(s_axi_rvalid),                      // output wire s_axi_rvalid
  .s_axi_rready(s_axi_rready),                      // input wire s_axi_rready
  .tx_reset(tx_reset),                              // input wire tx_reset
  .tx_sysref(tx_sysref),                            // input wire tx_sysref
  .tx_start_of_frame(tx_start_of_frame),            // output wire [3 : 0] tx_start_of_frame
  .tx_start_of_multiframe(tx_start_of_multiframe),  // output wire [3 : 0] tx_start_of_multiframe
  .tx_aresetn(tx_aresetn),                          // output wire tx_aresetn
  .tx_tdata(tx_tdata),                              // input wire [255 : 0] tx_tdata
  .tx_tready(tx_tready),                            // output wire tx_tready
  .tx_sync(tx_sync)                                // input wire tx_sync
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file jesd204_tx.v when simulating
// the core, jesd204_tx. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

