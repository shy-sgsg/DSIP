// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:ip:jesd204_phy:4.0
// IP Revision: 4

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
jesd204_tx_phy your_instance_name (
  .qpll_refclk(qpll_refclk),                            // input wire qpll_refclk
  .drpclk(drpclk),                                      // input wire drpclk
  .tx_reset_gt(tx_reset_gt),                            // input wire tx_reset_gt
  .rx_reset_gt(rx_reset_gt),                            // input wire rx_reset_gt
  .tx_sys_reset(tx_sys_reset),                          // input wire tx_sys_reset
  .rx_sys_reset(rx_sys_reset),                          // input wire rx_sys_reset
  .txp_out(txp_out),                                    // output wire [7 : 0] txp_out
  .txn_out(txn_out),                                    // output wire [7 : 0] txn_out
  .rxp_in(rxp_in),                                      // input wire [7 : 0] rxp_in
  .rxn_in(rxn_in),                                      // input wire [7 : 0] rxn_in
  .tx_core_clk(tx_core_clk),                            // input wire tx_core_clk
  .rx_core_clk(rx_core_clk),                            // input wire rx_core_clk
  .txoutclk(txoutclk),                                  // output wire txoutclk
  .rxoutclk(rxoutclk),                                  // output wire rxoutclk
  .gt0_drpaddr(gt0_drpaddr),                            // input wire [8 : 0] gt0_drpaddr
  .gt0_drpen(gt0_drpen),                                // input wire gt0_drpen
  .gt0_drpdi(gt0_drpdi),                                // input wire [15 : 0] gt0_drpdi
  .gt0_drpdo(gt0_drpdo),                                // output wire [15 : 0] gt0_drpdo
  .gt0_drpwe(gt0_drpwe),                                // input wire gt0_drpwe
  .gt0_drprdy(gt0_drprdy),                              // output wire gt0_drprdy
  .gt1_drpaddr(gt1_drpaddr),                            // input wire [8 : 0] gt1_drpaddr
  .gt1_drpen(gt1_drpen),                                // input wire gt1_drpen
  .gt1_drpdi(gt1_drpdi),                                // input wire [15 : 0] gt1_drpdi
  .gt1_drpdo(gt1_drpdo),                                // output wire [15 : 0] gt1_drpdo
  .gt1_drpwe(gt1_drpwe),                                // input wire gt1_drpwe
  .gt1_drprdy(gt1_drprdy),                              // output wire gt1_drprdy
  .gt2_drpaddr(gt2_drpaddr),                            // input wire [8 : 0] gt2_drpaddr
  .gt2_drpen(gt2_drpen),                                // input wire gt2_drpen
  .gt2_drpdi(gt2_drpdi),                                // input wire [15 : 0] gt2_drpdi
  .gt2_drpdo(gt2_drpdo),                                // output wire [15 : 0] gt2_drpdo
  .gt2_drpwe(gt2_drpwe),                                // input wire gt2_drpwe
  .gt2_drprdy(gt2_drprdy),                              // output wire gt2_drprdy
  .gt3_drpaddr(gt3_drpaddr),                            // input wire [8 : 0] gt3_drpaddr
  .gt3_drpen(gt3_drpen),                                // input wire gt3_drpen
  .gt3_drpdi(gt3_drpdi),                                // input wire [15 : 0] gt3_drpdi
  .gt3_drpdo(gt3_drpdo),                                // output wire [15 : 0] gt3_drpdo
  .gt3_drpwe(gt3_drpwe),                                // input wire gt3_drpwe
  .gt3_drprdy(gt3_drprdy),                              // output wire gt3_drprdy
  .gt4_drpaddr(gt4_drpaddr),                            // input wire [8 : 0] gt4_drpaddr
  .gt4_drpen(gt4_drpen),                                // input wire gt4_drpen
  .gt4_drpdi(gt4_drpdi),                                // input wire [15 : 0] gt4_drpdi
  .gt4_drpdo(gt4_drpdo),                                // output wire [15 : 0] gt4_drpdo
  .gt4_drpwe(gt4_drpwe),                                // input wire gt4_drpwe
  .gt4_drprdy(gt4_drprdy),                              // output wire gt4_drprdy
  .gt5_drpaddr(gt5_drpaddr),                            // input wire [8 : 0] gt5_drpaddr
  .gt5_drpen(gt5_drpen),                                // input wire gt5_drpen
  .gt5_drpdi(gt5_drpdi),                                // input wire [15 : 0] gt5_drpdi
  .gt5_drpdo(gt5_drpdo),                                // output wire [15 : 0] gt5_drpdo
  .gt5_drpwe(gt5_drpwe),                                // input wire gt5_drpwe
  .gt5_drprdy(gt5_drprdy),                              // output wire gt5_drprdy
  .gt6_drpaddr(gt6_drpaddr),                            // input wire [8 : 0] gt6_drpaddr
  .gt6_drpen(gt6_drpen),                                // input wire gt6_drpen
  .gt6_drpdi(gt6_drpdi),                                // input wire [15 : 0] gt6_drpdi
  .gt6_drpdo(gt6_drpdo),                                // output wire [15 : 0] gt6_drpdo
  .gt6_drpwe(gt6_drpwe),                                // input wire gt6_drpwe
  .gt6_drprdy(gt6_drprdy),                              // output wire gt6_drprdy
  .gt7_drpaddr(gt7_drpaddr),                            // input wire [8 : 0] gt7_drpaddr
  .gt7_drpen(gt7_drpen),                                // input wire gt7_drpen
  .gt7_drpdi(gt7_drpdi),                                // input wire [15 : 0] gt7_drpdi
  .gt7_drpdo(gt7_drpdo),                                // output wire [15 : 0] gt7_drpdo
  .gt7_drpwe(gt7_drpwe),                                // input wire gt7_drpwe
  .gt7_drprdy(gt7_drprdy),                              // output wire gt7_drprdy
  .gt_prbssel(gt_prbssel),                              // input wire [2 : 0] gt_prbssel
  .gt0_txdata(gt0_txdata),                              // input wire [31 : 0] gt0_txdata
  .gt0_txcharisk(gt0_txcharisk),                        // input wire [3 : 0] gt0_txcharisk
  .gt1_txdata(gt1_txdata),                              // input wire [31 : 0] gt1_txdata
  .gt1_txcharisk(gt1_txcharisk),                        // input wire [3 : 0] gt1_txcharisk
  .gt2_txdata(gt2_txdata),                              // input wire [31 : 0] gt2_txdata
  .gt2_txcharisk(gt2_txcharisk),                        // input wire [3 : 0] gt2_txcharisk
  .gt3_txdata(gt3_txdata),                              // input wire [31 : 0] gt3_txdata
  .gt3_txcharisk(gt3_txcharisk),                        // input wire [3 : 0] gt3_txcharisk
  .gt4_txdata(gt4_txdata),                              // input wire [31 : 0] gt4_txdata
  .gt4_txcharisk(gt4_txcharisk),                        // input wire [3 : 0] gt4_txcharisk
  .gt5_txdata(gt5_txdata),                              // input wire [31 : 0] gt5_txdata
  .gt5_txcharisk(gt5_txcharisk),                        // input wire [3 : 0] gt5_txcharisk
  .gt6_txdata(gt6_txdata),                              // input wire [31 : 0] gt6_txdata
  .gt6_txcharisk(gt6_txcharisk),                        // input wire [3 : 0] gt6_txcharisk
  .gt7_txdata(gt7_txdata),                              // input wire [31 : 0] gt7_txdata
  .gt7_txcharisk(gt7_txcharisk),                        // input wire [3 : 0] gt7_txcharisk
  .tx_reset_done(tx_reset_done),                        // output wire tx_reset_done
  .gt0_rxdata(gt0_rxdata),                              // output wire [31 : 0] gt0_rxdata
  .gt0_rxcharisk(gt0_rxcharisk),                        // output wire [3 : 0] gt0_rxcharisk
  .gt0_rxdisperr(gt0_rxdisperr),                        // output wire [3 : 0] gt0_rxdisperr
  .gt0_rxnotintable(gt0_rxnotintable),                  // output wire [3 : 0] gt0_rxnotintable
  .gt1_rxdata(gt1_rxdata),                              // output wire [31 : 0] gt1_rxdata
  .gt1_rxcharisk(gt1_rxcharisk),                        // output wire [3 : 0] gt1_rxcharisk
  .gt1_rxdisperr(gt1_rxdisperr),                        // output wire [3 : 0] gt1_rxdisperr
  .gt1_rxnotintable(gt1_rxnotintable),                  // output wire [3 : 0] gt1_rxnotintable
  .gt2_rxdata(gt2_rxdata),                              // output wire [31 : 0] gt2_rxdata
  .gt2_rxcharisk(gt2_rxcharisk),                        // output wire [3 : 0] gt2_rxcharisk
  .gt2_rxdisperr(gt2_rxdisperr),                        // output wire [3 : 0] gt2_rxdisperr
  .gt2_rxnotintable(gt2_rxnotintable),                  // output wire [3 : 0] gt2_rxnotintable
  .gt3_rxdata(gt3_rxdata),                              // output wire [31 : 0] gt3_rxdata
  .gt3_rxcharisk(gt3_rxcharisk),                        // output wire [3 : 0] gt3_rxcharisk
  .gt3_rxdisperr(gt3_rxdisperr),                        // output wire [3 : 0] gt3_rxdisperr
  .gt3_rxnotintable(gt3_rxnotintable),                  // output wire [3 : 0] gt3_rxnotintable
  .gt4_rxdata(gt4_rxdata),                              // output wire [31 : 0] gt4_rxdata
  .gt4_rxcharisk(gt4_rxcharisk),                        // output wire [3 : 0] gt4_rxcharisk
  .gt4_rxdisperr(gt4_rxdisperr),                        // output wire [3 : 0] gt4_rxdisperr
  .gt4_rxnotintable(gt4_rxnotintable),                  // output wire [3 : 0] gt4_rxnotintable
  .gt5_rxdata(gt5_rxdata),                              // output wire [31 : 0] gt5_rxdata
  .gt5_rxcharisk(gt5_rxcharisk),                        // output wire [3 : 0] gt5_rxcharisk
  .gt5_rxdisperr(gt5_rxdisperr),                        // output wire [3 : 0] gt5_rxdisperr
  .gt5_rxnotintable(gt5_rxnotintable),                  // output wire [3 : 0] gt5_rxnotintable
  .gt6_rxdata(gt6_rxdata),                              // output wire [31 : 0] gt6_rxdata
  .gt6_rxcharisk(gt6_rxcharisk),                        // output wire [3 : 0] gt6_rxcharisk
  .gt6_rxdisperr(gt6_rxdisperr),                        // output wire [3 : 0] gt6_rxdisperr
  .gt6_rxnotintable(gt6_rxnotintable),                  // output wire [3 : 0] gt6_rxnotintable
  .gt7_rxdata(gt7_rxdata),                              // output wire [31 : 0] gt7_rxdata
  .gt7_rxcharisk(gt7_rxcharisk),                        // output wire [3 : 0] gt7_rxcharisk
  .gt7_rxdisperr(gt7_rxdisperr),                        // output wire [3 : 0] gt7_rxdisperr
  .gt7_rxnotintable(gt7_rxnotintable),                  // output wire [3 : 0] gt7_rxnotintable
  .rx_reset_done(rx_reset_done),                        // output wire rx_reset_done
  .rxencommaalign(rxencommaalign),                      // input wire rxencommaalign
  .common0_qpll_clk_out(common0_qpll_clk_out),          // output wire common0_qpll_clk_out
  .common0_qpll_refclk_out(common0_qpll_refclk_out),    // output wire common0_qpll_refclk_out
  .common0_qpll_lock_out(common0_qpll_lock_out),        // output wire common0_qpll_lock_out
  .common1_qpll_clk_out(common1_qpll_clk_out),          // output wire common1_qpll_clk_out
  .common1_qpll_refclk_out(common1_qpll_refclk_out),    // output wire common1_qpll_refclk_out
  .common1_qpll_lock_out(common1_qpll_lock_out),        // output wire common1_qpll_lock_out
  .gt0_txpmareset_in(gt0_txpmareset_in),                // input wire gt0_txpmareset_in
  .gt0_txpcsreset_in(gt0_txpcsreset_in),                // input wire gt0_txpcsreset_in
  .gt0_rxpmareset_in(gt0_rxpmareset_in),                // input wire gt0_rxpmareset_in
  .gt0_rxpcsreset_in(gt0_rxpcsreset_in),                // input wire gt0_rxpcsreset_in
  .gt0_rxpolarity_in(gt0_rxpolarity_in),                // input wire gt0_rxpolarity_in
  .gt0_txpolarity_in(gt0_txpolarity_in),                // input wire gt0_txpolarity_in
  .gt0_txinhibit_in(gt0_txinhibit_in),                  // input wire gt0_txinhibit_in
  .gt0_eyescantrigger_in(gt0_eyescantrigger_in),        // input wire gt0_eyescantrigger_in
  .gt0_eyescanreset_in(gt0_eyescanreset_in),            // input wire gt0_eyescanreset_in
  .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),        // input wire gt0_rxprbscntreset_in
  .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),        // input wire gt0_txprbsforceerr_in
  .gt0_rxcdrhold_in(gt0_rxcdrhold_in),                  // input wire gt0_rxcdrhold_in
  .gt0_txresetdone_out(gt0_txresetdone_out),            // output wire gt0_txresetdone_out
  .gt0_rxresetdone_out(gt0_rxresetdone_out),            // output wire gt0_rxresetdone_out
  .gt0_eyescandataerror_out(gt0_eyescandataerror_out),  // output wire gt0_eyescandataerror_out
  .gt0_rxprbserr_out(gt0_rxprbserr_out),                // output wire gt0_rxprbserr_out
  .gt0_rxcommadet_out(gt0_rxcommadet_out),              // output wire gt0_rxcommadet_out
  .gt0_rxbufstatus_out(gt0_rxbufstatus_out),            // output wire [2 : 0] gt0_rxbufstatus_out
  .gt0_txbufstatus_out(gt0_txbufstatus_out),            // output wire [1 : 0] gt0_txbufstatus_out
  .gt0_cplllock_out(gt0_cplllock_out),                  // output wire gt0_cplllock_out
  .gt0_rxlpmen_in(gt0_rxlpmen_in),                      // input wire gt0_rxlpmen_in
  .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),          // input wire gt0_rxdfelpmreset_in
  .gt0_rxmonitorout_out(gt0_rxmonitorout_out),          // output wire [6 : 0] gt0_rxmonitorout_out
  .gt0_txpostcursor_in(gt0_txpostcursor_in),            // input wire [4 : 0] gt0_txpostcursor_in
  .gt0_txprecursor_in(gt0_txprecursor_in),              // input wire [4 : 0] gt0_txprecursor_in
  .gt0_txdiffctrl_in(gt0_txdiffctrl_in),                // input wire [3 : 0] gt0_txdiffctrl_in
  .gt0_rxprbssel_in(gt0_rxprbssel_in),                  // input wire [2 : 0] gt0_rxprbssel_in
  .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),            // input wire [1 : 0] gt0_rxmonitorsel_in
  .gt0_dmonitorout_out(gt0_dmonitorout_out),            // output wire [14 : 0] gt0_dmonitorout_out
  .gt0_loopback_in(gt0_loopback_in),                    // input wire [2 : 0] gt0_loopback_in
  .gt0_rxpd_in(gt0_rxpd_in),                            // input wire [1 : 0] gt0_rxpd_in
  .gt0_txpd_in(gt0_txpd_in),                            // input wire [1 : 0] gt0_txpd_in
  .gt0_rxstatus_out(gt0_rxstatus_out),                  // output wire [2 : 0] gt0_rxstatus_out
  .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),    // output wire gt0_rxbyteisaligned_out
  .gt0_rxbyterealign_out(gt0_rxbyterealign_out),        // output wire gt0_rxbyterealign_out
  .gt0_rxbufreset_in(gt0_rxbufreset_in),                // input wire gt0_rxbufreset_in
  .gt1_txpmareset_in(gt1_txpmareset_in),                // input wire gt1_txpmareset_in
  .gt1_txpcsreset_in(gt1_txpcsreset_in),                // input wire gt1_txpcsreset_in
  .gt1_rxpmareset_in(gt1_rxpmareset_in),                // input wire gt1_rxpmareset_in
  .gt1_rxpcsreset_in(gt1_rxpcsreset_in),                // input wire gt1_rxpcsreset_in
  .gt1_rxpolarity_in(gt1_rxpolarity_in),                // input wire gt1_rxpolarity_in
  .gt1_txpolarity_in(gt1_txpolarity_in),                // input wire gt1_txpolarity_in
  .gt1_txinhibit_in(gt1_txinhibit_in),                  // input wire gt1_txinhibit_in
  .gt1_eyescantrigger_in(gt1_eyescantrigger_in),        // input wire gt1_eyescantrigger_in
  .gt1_eyescanreset_in(gt1_eyescanreset_in),            // input wire gt1_eyescanreset_in
  .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),        // input wire gt1_rxprbscntreset_in
  .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),        // input wire gt1_txprbsforceerr_in
  .gt1_rxcdrhold_in(gt1_rxcdrhold_in),                  // input wire gt1_rxcdrhold_in
  .gt1_txresetdone_out(gt1_txresetdone_out),            // output wire gt1_txresetdone_out
  .gt1_rxresetdone_out(gt1_rxresetdone_out),            // output wire gt1_rxresetdone_out
  .gt1_eyescandataerror_out(gt1_eyescandataerror_out),  // output wire gt1_eyescandataerror_out
  .gt1_rxprbserr_out(gt1_rxprbserr_out),                // output wire gt1_rxprbserr_out
  .gt1_rxcommadet_out(gt1_rxcommadet_out),              // output wire gt1_rxcommadet_out
  .gt1_rxbufstatus_out(gt1_rxbufstatus_out),            // output wire [2 : 0] gt1_rxbufstatus_out
  .gt1_txbufstatus_out(gt1_txbufstatus_out),            // output wire [1 : 0] gt1_txbufstatus_out
  .gt1_cplllock_out(gt1_cplllock_out),                  // output wire gt1_cplllock_out
  .gt1_rxlpmen_in(gt1_rxlpmen_in),                      // input wire gt1_rxlpmen_in
  .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),          // input wire gt1_rxdfelpmreset_in
  .gt1_rxmonitorout_out(gt1_rxmonitorout_out),          // output wire [6 : 0] gt1_rxmonitorout_out
  .gt1_txpostcursor_in(gt1_txpostcursor_in),            // input wire [4 : 0] gt1_txpostcursor_in
  .gt1_txprecursor_in(gt1_txprecursor_in),              // input wire [4 : 0] gt1_txprecursor_in
  .gt1_txdiffctrl_in(gt1_txdiffctrl_in),                // input wire [3 : 0] gt1_txdiffctrl_in
  .gt1_rxprbssel_in(gt1_rxprbssel_in),                  // input wire [2 : 0] gt1_rxprbssel_in
  .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),            // input wire [1 : 0] gt1_rxmonitorsel_in
  .gt1_dmonitorout_out(gt1_dmonitorout_out),            // output wire [14 : 0] gt1_dmonitorout_out
  .gt1_loopback_in(gt1_loopback_in),                    // input wire [2 : 0] gt1_loopback_in
  .gt1_rxpd_in(gt1_rxpd_in),                            // input wire [1 : 0] gt1_rxpd_in
  .gt1_txpd_in(gt1_txpd_in),                            // input wire [1 : 0] gt1_txpd_in
  .gt1_rxstatus_out(gt1_rxstatus_out),                  // output wire [2 : 0] gt1_rxstatus_out
  .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),    // output wire gt1_rxbyteisaligned_out
  .gt1_rxbyterealign_out(gt1_rxbyterealign_out),        // output wire gt1_rxbyterealign_out
  .gt1_rxbufreset_in(gt1_rxbufreset_in),                // input wire gt1_rxbufreset_in
  .gt2_txpmareset_in(gt2_txpmareset_in),                // input wire gt2_txpmareset_in
  .gt2_txpcsreset_in(gt2_txpcsreset_in),                // input wire gt2_txpcsreset_in
  .gt2_rxpmareset_in(gt2_rxpmareset_in),                // input wire gt2_rxpmareset_in
  .gt2_rxpcsreset_in(gt2_rxpcsreset_in),                // input wire gt2_rxpcsreset_in
  .gt2_rxpolarity_in(gt2_rxpolarity_in),                // input wire gt2_rxpolarity_in
  .gt2_txpolarity_in(gt2_txpolarity_in),                // input wire gt2_txpolarity_in
  .gt2_txinhibit_in(gt2_txinhibit_in),                  // input wire gt2_txinhibit_in
  .gt2_eyescantrigger_in(gt2_eyescantrigger_in),        // input wire gt2_eyescantrigger_in
  .gt2_eyescanreset_in(gt2_eyescanreset_in),            // input wire gt2_eyescanreset_in
  .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),        // input wire gt2_rxprbscntreset_in
  .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),        // input wire gt2_txprbsforceerr_in
  .gt2_rxcdrhold_in(gt2_rxcdrhold_in),                  // input wire gt2_rxcdrhold_in
  .gt2_txresetdone_out(gt2_txresetdone_out),            // output wire gt2_txresetdone_out
  .gt2_rxresetdone_out(gt2_rxresetdone_out),            // output wire gt2_rxresetdone_out
  .gt2_eyescandataerror_out(gt2_eyescandataerror_out),  // output wire gt2_eyescandataerror_out
  .gt2_rxprbserr_out(gt2_rxprbserr_out),                // output wire gt2_rxprbserr_out
  .gt2_rxcommadet_out(gt2_rxcommadet_out),              // output wire gt2_rxcommadet_out
  .gt2_rxbufstatus_out(gt2_rxbufstatus_out),            // output wire [2 : 0] gt2_rxbufstatus_out
  .gt2_txbufstatus_out(gt2_txbufstatus_out),            // output wire [1 : 0] gt2_txbufstatus_out
  .gt2_cplllock_out(gt2_cplllock_out),                  // output wire gt2_cplllock_out
  .gt2_rxlpmen_in(gt2_rxlpmen_in),                      // input wire gt2_rxlpmen_in
  .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),          // input wire gt2_rxdfelpmreset_in
  .gt2_rxmonitorout_out(gt2_rxmonitorout_out),          // output wire [6 : 0] gt2_rxmonitorout_out
  .gt2_txpostcursor_in(gt2_txpostcursor_in),            // input wire [4 : 0] gt2_txpostcursor_in
  .gt2_txprecursor_in(gt2_txprecursor_in),              // input wire [4 : 0] gt2_txprecursor_in
  .gt2_txdiffctrl_in(gt2_txdiffctrl_in),                // input wire [3 : 0] gt2_txdiffctrl_in
  .gt2_rxprbssel_in(gt2_rxprbssel_in),                  // input wire [2 : 0] gt2_rxprbssel_in
  .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),            // input wire [1 : 0] gt2_rxmonitorsel_in
  .gt2_dmonitorout_out(gt2_dmonitorout_out),            // output wire [14 : 0] gt2_dmonitorout_out
  .gt2_loopback_in(gt2_loopback_in),                    // input wire [2 : 0] gt2_loopback_in
  .gt2_rxpd_in(gt2_rxpd_in),                            // input wire [1 : 0] gt2_rxpd_in
  .gt2_txpd_in(gt2_txpd_in),                            // input wire [1 : 0] gt2_txpd_in
  .gt2_rxstatus_out(gt2_rxstatus_out),                  // output wire [2 : 0] gt2_rxstatus_out
  .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),    // output wire gt2_rxbyteisaligned_out
  .gt2_rxbyterealign_out(gt2_rxbyterealign_out),        // output wire gt2_rxbyterealign_out
  .gt2_rxbufreset_in(gt2_rxbufreset_in),                // input wire gt2_rxbufreset_in
  .gt3_txpmareset_in(gt3_txpmareset_in),                // input wire gt3_txpmareset_in
  .gt3_txpcsreset_in(gt3_txpcsreset_in),                // input wire gt3_txpcsreset_in
  .gt3_rxpmareset_in(gt3_rxpmareset_in),                // input wire gt3_rxpmareset_in
  .gt3_rxpcsreset_in(gt3_rxpcsreset_in),                // input wire gt3_rxpcsreset_in
  .gt3_rxpolarity_in(gt3_rxpolarity_in),                // input wire gt3_rxpolarity_in
  .gt3_txpolarity_in(gt3_txpolarity_in),                // input wire gt3_txpolarity_in
  .gt3_txinhibit_in(gt3_txinhibit_in),                  // input wire gt3_txinhibit_in
  .gt3_eyescantrigger_in(gt3_eyescantrigger_in),        // input wire gt3_eyescantrigger_in
  .gt3_eyescanreset_in(gt3_eyescanreset_in),            // input wire gt3_eyescanreset_in
  .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),        // input wire gt3_rxprbscntreset_in
  .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),        // input wire gt3_txprbsforceerr_in
  .gt3_rxcdrhold_in(gt3_rxcdrhold_in),                  // input wire gt3_rxcdrhold_in
  .gt3_txresetdone_out(gt3_txresetdone_out),            // output wire gt3_txresetdone_out
  .gt3_rxresetdone_out(gt3_rxresetdone_out),            // output wire gt3_rxresetdone_out
  .gt3_eyescandataerror_out(gt3_eyescandataerror_out),  // output wire gt3_eyescandataerror_out
  .gt3_rxprbserr_out(gt3_rxprbserr_out),                // output wire gt3_rxprbserr_out
  .gt3_rxcommadet_out(gt3_rxcommadet_out),              // output wire gt3_rxcommadet_out
  .gt3_rxbufstatus_out(gt3_rxbufstatus_out),            // output wire [2 : 0] gt3_rxbufstatus_out
  .gt3_txbufstatus_out(gt3_txbufstatus_out),            // output wire [1 : 0] gt3_txbufstatus_out
  .gt3_cplllock_out(gt3_cplllock_out),                  // output wire gt3_cplllock_out
  .gt3_rxlpmen_in(gt3_rxlpmen_in),                      // input wire gt3_rxlpmen_in
  .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),          // input wire gt3_rxdfelpmreset_in
  .gt3_rxmonitorout_out(gt3_rxmonitorout_out),          // output wire [6 : 0] gt3_rxmonitorout_out
  .gt3_txpostcursor_in(gt3_txpostcursor_in),            // input wire [4 : 0] gt3_txpostcursor_in
  .gt3_txprecursor_in(gt3_txprecursor_in),              // input wire [4 : 0] gt3_txprecursor_in
  .gt3_txdiffctrl_in(gt3_txdiffctrl_in),                // input wire [3 : 0] gt3_txdiffctrl_in
  .gt3_rxprbssel_in(gt3_rxprbssel_in),                  // input wire [2 : 0] gt3_rxprbssel_in
  .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),            // input wire [1 : 0] gt3_rxmonitorsel_in
  .gt3_dmonitorout_out(gt3_dmonitorout_out),            // output wire [14 : 0] gt3_dmonitorout_out
  .gt3_loopback_in(gt3_loopback_in),                    // input wire [2 : 0] gt3_loopback_in
  .gt3_rxpd_in(gt3_rxpd_in),                            // input wire [1 : 0] gt3_rxpd_in
  .gt3_txpd_in(gt3_txpd_in),                            // input wire [1 : 0] gt3_txpd_in
  .gt3_rxstatus_out(gt3_rxstatus_out),                  // output wire [2 : 0] gt3_rxstatus_out
  .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),    // output wire gt3_rxbyteisaligned_out
  .gt3_rxbyterealign_out(gt3_rxbyterealign_out),        // output wire gt3_rxbyterealign_out
  .gt3_rxbufreset_in(gt3_rxbufreset_in),                // input wire gt3_rxbufreset_in
  .gt4_txpmareset_in(gt4_txpmareset_in),                // input wire gt4_txpmareset_in
  .gt4_txpcsreset_in(gt4_txpcsreset_in),                // input wire gt4_txpcsreset_in
  .gt4_rxpmareset_in(gt4_rxpmareset_in),                // input wire gt4_rxpmareset_in
  .gt4_rxpcsreset_in(gt4_rxpcsreset_in),                // input wire gt4_rxpcsreset_in
  .gt4_rxpolarity_in(gt4_rxpolarity_in),                // input wire gt4_rxpolarity_in
  .gt4_txpolarity_in(gt4_txpolarity_in),                // input wire gt4_txpolarity_in
  .gt4_txinhibit_in(gt4_txinhibit_in),                  // input wire gt4_txinhibit_in
  .gt4_eyescantrigger_in(gt4_eyescantrigger_in),        // input wire gt4_eyescantrigger_in
  .gt4_eyescanreset_in(gt4_eyescanreset_in),            // input wire gt4_eyescanreset_in
  .gt4_rxprbscntreset_in(gt4_rxprbscntreset_in),        // input wire gt4_rxprbscntreset_in
  .gt4_txprbsforceerr_in(gt4_txprbsforceerr_in),        // input wire gt4_txprbsforceerr_in
  .gt4_rxcdrhold_in(gt4_rxcdrhold_in),                  // input wire gt4_rxcdrhold_in
  .gt4_txresetdone_out(gt4_txresetdone_out),            // output wire gt4_txresetdone_out
  .gt4_rxresetdone_out(gt4_rxresetdone_out),            // output wire gt4_rxresetdone_out
  .gt4_eyescandataerror_out(gt4_eyescandataerror_out),  // output wire gt4_eyescandataerror_out
  .gt4_rxprbserr_out(gt4_rxprbserr_out),                // output wire gt4_rxprbserr_out
  .gt4_rxcommadet_out(gt4_rxcommadet_out),              // output wire gt4_rxcommadet_out
  .gt4_rxbufstatus_out(gt4_rxbufstatus_out),            // output wire [2 : 0] gt4_rxbufstatus_out
  .gt4_txbufstatus_out(gt4_txbufstatus_out),            // output wire [1 : 0] gt4_txbufstatus_out
  .gt4_cplllock_out(gt4_cplllock_out),                  // output wire gt4_cplllock_out
  .gt4_rxlpmen_in(gt4_rxlpmen_in),                      // input wire gt4_rxlpmen_in
  .gt4_rxdfelpmreset_in(gt4_rxdfelpmreset_in),          // input wire gt4_rxdfelpmreset_in
  .gt4_rxmonitorout_out(gt4_rxmonitorout_out),          // output wire [6 : 0] gt4_rxmonitorout_out
  .gt4_txpostcursor_in(gt4_txpostcursor_in),            // input wire [4 : 0] gt4_txpostcursor_in
  .gt4_txprecursor_in(gt4_txprecursor_in),              // input wire [4 : 0] gt4_txprecursor_in
  .gt4_txdiffctrl_in(gt4_txdiffctrl_in),                // input wire [3 : 0] gt4_txdiffctrl_in
  .gt4_rxprbssel_in(gt4_rxprbssel_in),                  // input wire [2 : 0] gt4_rxprbssel_in
  .gt4_rxmonitorsel_in(gt4_rxmonitorsel_in),            // input wire [1 : 0] gt4_rxmonitorsel_in
  .gt4_dmonitorout_out(gt4_dmonitorout_out),            // output wire [14 : 0] gt4_dmonitorout_out
  .gt4_loopback_in(gt4_loopback_in),                    // input wire [2 : 0] gt4_loopback_in
  .gt4_rxpd_in(gt4_rxpd_in),                            // input wire [1 : 0] gt4_rxpd_in
  .gt4_txpd_in(gt4_txpd_in),                            // input wire [1 : 0] gt4_txpd_in
  .gt4_rxstatus_out(gt4_rxstatus_out),                  // output wire [2 : 0] gt4_rxstatus_out
  .gt4_rxbyteisaligned_out(gt4_rxbyteisaligned_out),    // output wire gt4_rxbyteisaligned_out
  .gt4_rxbyterealign_out(gt4_rxbyterealign_out),        // output wire gt4_rxbyterealign_out
  .gt4_rxbufreset_in(gt4_rxbufreset_in),                // input wire gt4_rxbufreset_in
  .gt5_txpmareset_in(gt5_txpmareset_in),                // input wire gt5_txpmareset_in
  .gt5_txpcsreset_in(gt5_txpcsreset_in),                // input wire gt5_txpcsreset_in
  .gt5_rxpmareset_in(gt5_rxpmareset_in),                // input wire gt5_rxpmareset_in
  .gt5_rxpcsreset_in(gt5_rxpcsreset_in),                // input wire gt5_rxpcsreset_in
  .gt5_rxpolarity_in(gt5_rxpolarity_in),                // input wire gt5_rxpolarity_in
  .gt5_txpolarity_in(gt5_txpolarity_in),                // input wire gt5_txpolarity_in
  .gt5_txinhibit_in(gt5_txinhibit_in),                  // input wire gt5_txinhibit_in
  .gt5_eyescantrigger_in(gt5_eyescantrigger_in),        // input wire gt5_eyescantrigger_in
  .gt5_eyescanreset_in(gt5_eyescanreset_in),            // input wire gt5_eyescanreset_in
  .gt5_rxprbscntreset_in(gt5_rxprbscntreset_in),        // input wire gt5_rxprbscntreset_in
  .gt5_txprbsforceerr_in(gt5_txprbsforceerr_in),        // input wire gt5_txprbsforceerr_in
  .gt5_rxcdrhold_in(gt5_rxcdrhold_in),                  // input wire gt5_rxcdrhold_in
  .gt5_txresetdone_out(gt5_txresetdone_out),            // output wire gt5_txresetdone_out
  .gt5_rxresetdone_out(gt5_rxresetdone_out),            // output wire gt5_rxresetdone_out
  .gt5_eyescandataerror_out(gt5_eyescandataerror_out),  // output wire gt5_eyescandataerror_out
  .gt5_rxprbserr_out(gt5_rxprbserr_out),                // output wire gt5_rxprbserr_out
  .gt5_rxcommadet_out(gt5_rxcommadet_out),              // output wire gt5_rxcommadet_out
  .gt5_rxbufstatus_out(gt5_rxbufstatus_out),            // output wire [2 : 0] gt5_rxbufstatus_out
  .gt5_txbufstatus_out(gt5_txbufstatus_out),            // output wire [1 : 0] gt5_txbufstatus_out
  .gt5_cplllock_out(gt5_cplllock_out),                  // output wire gt5_cplllock_out
  .gt5_rxlpmen_in(gt5_rxlpmen_in),                      // input wire gt5_rxlpmen_in
  .gt5_rxdfelpmreset_in(gt5_rxdfelpmreset_in),          // input wire gt5_rxdfelpmreset_in
  .gt5_rxmonitorout_out(gt5_rxmonitorout_out),          // output wire [6 : 0] gt5_rxmonitorout_out
  .gt5_txpostcursor_in(gt5_txpostcursor_in),            // input wire [4 : 0] gt5_txpostcursor_in
  .gt5_txprecursor_in(gt5_txprecursor_in),              // input wire [4 : 0] gt5_txprecursor_in
  .gt5_txdiffctrl_in(gt5_txdiffctrl_in),                // input wire [3 : 0] gt5_txdiffctrl_in
  .gt5_rxprbssel_in(gt5_rxprbssel_in),                  // input wire [2 : 0] gt5_rxprbssel_in
  .gt5_rxmonitorsel_in(gt5_rxmonitorsel_in),            // input wire [1 : 0] gt5_rxmonitorsel_in
  .gt5_dmonitorout_out(gt5_dmonitorout_out),            // output wire [14 : 0] gt5_dmonitorout_out
  .gt5_loopback_in(gt5_loopback_in),                    // input wire [2 : 0] gt5_loopback_in
  .gt5_rxpd_in(gt5_rxpd_in),                            // input wire [1 : 0] gt5_rxpd_in
  .gt5_txpd_in(gt5_txpd_in),                            // input wire [1 : 0] gt5_txpd_in
  .gt5_rxstatus_out(gt5_rxstatus_out),                  // output wire [2 : 0] gt5_rxstatus_out
  .gt5_rxbyteisaligned_out(gt5_rxbyteisaligned_out),    // output wire gt5_rxbyteisaligned_out
  .gt5_rxbyterealign_out(gt5_rxbyterealign_out),        // output wire gt5_rxbyterealign_out
  .gt5_rxbufreset_in(gt5_rxbufreset_in),                // input wire gt5_rxbufreset_in
  .gt6_txpmareset_in(gt6_txpmareset_in),                // input wire gt6_txpmareset_in
  .gt6_txpcsreset_in(gt6_txpcsreset_in),                // input wire gt6_txpcsreset_in
  .gt6_rxpmareset_in(gt6_rxpmareset_in),                // input wire gt6_rxpmareset_in
  .gt6_rxpcsreset_in(gt6_rxpcsreset_in),                // input wire gt6_rxpcsreset_in
  .gt6_rxpolarity_in(gt6_rxpolarity_in),                // input wire gt6_rxpolarity_in
  .gt6_txpolarity_in(gt6_txpolarity_in),                // input wire gt6_txpolarity_in
  .gt6_txinhibit_in(gt6_txinhibit_in),                  // input wire gt6_txinhibit_in
  .gt6_eyescantrigger_in(gt6_eyescantrigger_in),        // input wire gt6_eyescantrigger_in
  .gt6_eyescanreset_in(gt6_eyescanreset_in),            // input wire gt6_eyescanreset_in
  .gt6_rxprbscntreset_in(gt6_rxprbscntreset_in),        // input wire gt6_rxprbscntreset_in
  .gt6_txprbsforceerr_in(gt6_txprbsforceerr_in),        // input wire gt6_txprbsforceerr_in
  .gt6_rxcdrhold_in(gt6_rxcdrhold_in),                  // input wire gt6_rxcdrhold_in
  .gt6_txresetdone_out(gt6_txresetdone_out),            // output wire gt6_txresetdone_out
  .gt6_rxresetdone_out(gt6_rxresetdone_out),            // output wire gt6_rxresetdone_out
  .gt6_eyescandataerror_out(gt6_eyescandataerror_out),  // output wire gt6_eyescandataerror_out
  .gt6_rxprbserr_out(gt6_rxprbserr_out),                // output wire gt6_rxprbserr_out
  .gt6_rxcommadet_out(gt6_rxcommadet_out),              // output wire gt6_rxcommadet_out
  .gt6_rxbufstatus_out(gt6_rxbufstatus_out),            // output wire [2 : 0] gt6_rxbufstatus_out
  .gt6_txbufstatus_out(gt6_txbufstatus_out),            // output wire [1 : 0] gt6_txbufstatus_out
  .gt6_cplllock_out(gt6_cplllock_out),                  // output wire gt6_cplllock_out
  .gt6_rxlpmen_in(gt6_rxlpmen_in),                      // input wire gt6_rxlpmen_in
  .gt6_rxdfelpmreset_in(gt6_rxdfelpmreset_in),          // input wire gt6_rxdfelpmreset_in
  .gt6_rxmonitorout_out(gt6_rxmonitorout_out),          // output wire [6 : 0] gt6_rxmonitorout_out
  .gt6_txpostcursor_in(gt6_txpostcursor_in),            // input wire [4 : 0] gt6_txpostcursor_in
  .gt6_txprecursor_in(gt6_txprecursor_in),              // input wire [4 : 0] gt6_txprecursor_in
  .gt6_txdiffctrl_in(gt6_txdiffctrl_in),                // input wire [3 : 0] gt6_txdiffctrl_in
  .gt6_rxprbssel_in(gt6_rxprbssel_in),                  // input wire [2 : 0] gt6_rxprbssel_in
  .gt6_rxmonitorsel_in(gt6_rxmonitorsel_in),            // input wire [1 : 0] gt6_rxmonitorsel_in
  .gt6_dmonitorout_out(gt6_dmonitorout_out),            // output wire [14 : 0] gt6_dmonitorout_out
  .gt6_loopback_in(gt6_loopback_in),                    // input wire [2 : 0] gt6_loopback_in
  .gt6_rxpd_in(gt6_rxpd_in),                            // input wire [1 : 0] gt6_rxpd_in
  .gt6_txpd_in(gt6_txpd_in),                            // input wire [1 : 0] gt6_txpd_in
  .gt6_rxstatus_out(gt6_rxstatus_out),                  // output wire [2 : 0] gt6_rxstatus_out
  .gt6_rxbyteisaligned_out(gt6_rxbyteisaligned_out),    // output wire gt6_rxbyteisaligned_out
  .gt6_rxbyterealign_out(gt6_rxbyterealign_out),        // output wire gt6_rxbyterealign_out
  .gt6_rxbufreset_in(gt6_rxbufreset_in),                // input wire gt6_rxbufreset_in
  .gt7_txpmareset_in(gt7_txpmareset_in),                // input wire gt7_txpmareset_in
  .gt7_txpcsreset_in(gt7_txpcsreset_in),                // input wire gt7_txpcsreset_in
  .gt7_rxpmareset_in(gt7_rxpmareset_in),                // input wire gt7_rxpmareset_in
  .gt7_rxpcsreset_in(gt7_rxpcsreset_in),                // input wire gt7_rxpcsreset_in
  .gt7_rxpolarity_in(gt7_rxpolarity_in),                // input wire gt7_rxpolarity_in
  .gt7_txpolarity_in(gt7_txpolarity_in),                // input wire gt7_txpolarity_in
  .gt7_txinhibit_in(gt7_txinhibit_in),                  // input wire gt7_txinhibit_in
  .gt7_eyescantrigger_in(gt7_eyescantrigger_in),        // input wire gt7_eyescantrigger_in
  .gt7_eyescanreset_in(gt7_eyescanreset_in),            // input wire gt7_eyescanreset_in
  .gt7_rxprbscntreset_in(gt7_rxprbscntreset_in),        // input wire gt7_rxprbscntreset_in
  .gt7_txprbsforceerr_in(gt7_txprbsforceerr_in),        // input wire gt7_txprbsforceerr_in
  .gt7_rxcdrhold_in(gt7_rxcdrhold_in),                  // input wire gt7_rxcdrhold_in
  .gt7_txresetdone_out(gt7_txresetdone_out),            // output wire gt7_txresetdone_out
  .gt7_rxresetdone_out(gt7_rxresetdone_out),            // output wire gt7_rxresetdone_out
  .gt7_eyescandataerror_out(gt7_eyescandataerror_out),  // output wire gt7_eyescandataerror_out
  .gt7_rxprbserr_out(gt7_rxprbserr_out),                // output wire gt7_rxprbserr_out
  .gt7_rxcommadet_out(gt7_rxcommadet_out),              // output wire gt7_rxcommadet_out
  .gt7_rxbufstatus_out(gt7_rxbufstatus_out),            // output wire [2 : 0] gt7_rxbufstatus_out
  .gt7_txbufstatus_out(gt7_txbufstatus_out),            // output wire [1 : 0] gt7_txbufstatus_out
  .gt7_cplllock_out(gt7_cplllock_out),                  // output wire gt7_cplllock_out
  .gt7_rxlpmen_in(gt7_rxlpmen_in),                      // input wire gt7_rxlpmen_in
  .gt7_rxdfelpmreset_in(gt7_rxdfelpmreset_in),          // input wire gt7_rxdfelpmreset_in
  .gt7_rxmonitorout_out(gt7_rxmonitorout_out),          // output wire [6 : 0] gt7_rxmonitorout_out
  .gt7_txpostcursor_in(gt7_txpostcursor_in),            // input wire [4 : 0] gt7_txpostcursor_in
  .gt7_txprecursor_in(gt7_txprecursor_in),              // input wire [4 : 0] gt7_txprecursor_in
  .gt7_txdiffctrl_in(gt7_txdiffctrl_in),                // input wire [3 : 0] gt7_txdiffctrl_in
  .gt7_rxprbssel_in(gt7_rxprbssel_in),                  // input wire [2 : 0] gt7_rxprbssel_in
  .gt7_rxmonitorsel_in(gt7_rxmonitorsel_in),            // input wire [1 : 0] gt7_rxmonitorsel_in
  .gt7_dmonitorout_out(gt7_dmonitorout_out),            // output wire [14 : 0] gt7_dmonitorout_out
  .gt7_loopback_in(gt7_loopback_in),                    // input wire [2 : 0] gt7_loopback_in
  .gt7_rxpd_in(gt7_rxpd_in),                            // input wire [1 : 0] gt7_rxpd_in
  .gt7_txpd_in(gt7_txpd_in),                            // input wire [1 : 0] gt7_txpd_in
  .gt7_rxstatus_out(gt7_rxstatus_out),                  // output wire [2 : 0] gt7_rxstatus_out
  .gt7_rxbyteisaligned_out(gt7_rxbyteisaligned_out),    // output wire gt7_rxbyteisaligned_out
  .gt7_rxbyterealign_out(gt7_rxbyterealign_out),        // output wire gt7_rxbyterealign_out
  .gt7_rxbufreset_in(gt7_rxbufreset_in)                // input wire gt7_rxbufreset_in
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file jesd204_tx_phy.v when simulating
// the core, jesd204_tx_phy. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

