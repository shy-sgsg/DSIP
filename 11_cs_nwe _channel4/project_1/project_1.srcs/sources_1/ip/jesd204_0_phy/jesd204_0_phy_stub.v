// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Aug 24 18:30:25 2022
// Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/work_panyanjiao/37_YTH2/new_2/pro/ad/project_vivado18.3_YTH2_AD/project_1/project_1.srcs/sources_1/ip/jesd204_0_phy/jesd204_0_phy_stub.v
// Design      : jesd204_0_phy
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "jesd204_phy_v4_0_4,Vivado 2018.3" *)
module jesd204_0_phy(gt0_txresetdone_out, gt0_rxresetdone_out, 
  gt0_cplllock_out, gt0_loopback_in, gt0_rxpd_in, gt0_txpd_in, gt0_txpostcursor_in, 
  gt0_txprecursor_in, gt0_txdiffctrl_in, gt0_txpolarity_in, gt0_txinhibit_in, 
  gt0_rxpolarity_in, gt0_drpaddr, gt0_drpdi, gt0_drpen, gt0_drpwe, gt0_drpdo, gt0_drprdy, 
  gt0_eyescandataerror_out, gt0_eyescantrigger_in, gt0_eyescanreset_in, 
  gt0_txprbsforceerr_in, gt0_txpcsreset_in, gt0_txpmareset_in, gt0_txbufstatus_out, 
  gt0_rxcdrhold_in, gt0_rxprbserr_out, gt0_rxprbssel_in, gt0_rxprbscntreset_in, 
  gt0_rxbufreset_in, gt0_rxbufstatus_out, gt0_rxstatus_out, gt0_rxbyteisaligned_out, 
  gt0_rxbyterealign_out, gt0_rxcommadet_out, gt0_dmonitorout_out, gt0_rxpcsreset_in, 
  gt0_rxpmareset_in, gt0_rxlpmen_in, gt0_rxdfelpmreset_in, gt0_rxmonitorout_out, 
  gt0_rxmonitorsel_in, gt1_txresetdone_out, gt1_rxresetdone_out, gt1_cplllock_out, 
  gt1_loopback_in, gt1_rxpd_in, gt1_txpd_in, gt1_txpostcursor_in, gt1_txprecursor_in, 
  gt1_txdiffctrl_in, gt1_txpolarity_in, gt1_txinhibit_in, gt1_rxpolarity_in, gt1_drpaddr, 
  gt1_drpdi, gt1_drpen, gt1_drpwe, gt1_drpdo, gt1_drprdy, gt1_eyescandataerror_out, 
  gt1_eyescantrigger_in, gt1_eyescanreset_in, gt1_txprbsforceerr_in, gt1_txpcsreset_in, 
  gt1_txpmareset_in, gt1_txbufstatus_out, gt1_rxcdrhold_in, gt1_rxprbserr_out, 
  gt1_rxprbssel_in, gt1_rxprbscntreset_in, gt1_rxbufreset_in, gt1_rxbufstatus_out, 
  gt1_rxstatus_out, gt1_rxbyteisaligned_out, gt1_rxbyterealign_out, gt1_rxcommadet_out, 
  gt1_dmonitorout_out, gt1_rxpcsreset_in, gt1_rxpmareset_in, gt1_rxlpmen_in, 
  gt1_rxdfelpmreset_in, gt1_rxmonitorout_out, gt1_rxmonitorsel_in, gt2_txresetdone_out, 
  gt2_rxresetdone_out, gt2_cplllock_out, gt2_loopback_in, gt2_rxpd_in, gt2_txpd_in, 
  gt2_txpostcursor_in, gt2_txprecursor_in, gt2_txdiffctrl_in, gt2_txpolarity_in, 
  gt2_txinhibit_in, gt2_rxpolarity_in, gt2_drpaddr, gt2_drpdi, gt2_drpen, gt2_drpwe, gt2_drpdo, 
  gt2_drprdy, gt2_eyescandataerror_out, gt2_eyescantrigger_in, gt2_eyescanreset_in, 
  gt2_txprbsforceerr_in, gt2_txpcsreset_in, gt2_txpmareset_in, gt2_txbufstatus_out, 
  gt2_rxcdrhold_in, gt2_rxprbserr_out, gt2_rxprbssel_in, gt2_rxprbscntreset_in, 
  gt2_rxbufreset_in, gt2_rxbufstatus_out, gt2_rxstatus_out, gt2_rxbyteisaligned_out, 
  gt2_rxbyterealign_out, gt2_rxcommadet_out, gt2_dmonitorout_out, gt2_rxpcsreset_in, 
  gt2_rxpmareset_in, gt2_rxlpmen_in, gt2_rxdfelpmreset_in, gt2_rxmonitorout_out, 
  gt2_rxmonitorsel_in, gt3_txresetdone_out, gt3_rxresetdone_out, gt3_cplllock_out, 
  gt3_loopback_in, gt3_rxpd_in, gt3_txpd_in, gt3_txpostcursor_in, gt3_txprecursor_in, 
  gt3_txdiffctrl_in, gt3_txpolarity_in, gt3_txinhibit_in, gt3_rxpolarity_in, gt3_drpaddr, 
  gt3_drpdi, gt3_drpen, gt3_drpwe, gt3_drpdo, gt3_drprdy, gt3_eyescandataerror_out, 
  gt3_eyescantrigger_in, gt3_eyescanreset_in, gt3_txprbsforceerr_in, gt3_txpcsreset_in, 
  gt3_txpmareset_in, gt3_txbufstatus_out, gt3_rxcdrhold_in, gt3_rxprbserr_out, 
  gt3_rxprbssel_in, gt3_rxprbscntreset_in, gt3_rxbufreset_in, gt3_rxbufstatus_out, 
  gt3_rxstatus_out, gt3_rxbyteisaligned_out, gt3_rxbyterealign_out, gt3_rxcommadet_out, 
  gt3_dmonitorout_out, gt3_rxpcsreset_in, gt3_rxpmareset_in, gt3_rxlpmen_in, 
  gt3_rxdfelpmreset_in, gt3_rxmonitorout_out, gt3_rxmonitorsel_in, gt4_txresetdone_out, 
  gt4_rxresetdone_out, gt4_cplllock_out, gt4_loopback_in, gt4_rxpd_in, gt4_txpd_in, 
  gt4_txpostcursor_in, gt4_txprecursor_in, gt4_txdiffctrl_in, gt4_txpolarity_in, 
  gt4_txinhibit_in, gt4_rxpolarity_in, gt4_drpaddr, gt4_drpdi, gt4_drpen, gt4_drpwe, gt4_drpdo, 
  gt4_drprdy, gt4_eyescandataerror_out, gt4_eyescantrigger_in, gt4_eyescanreset_in, 
  gt4_txprbsforceerr_in, gt4_txpcsreset_in, gt4_txpmareset_in, gt4_txbufstatus_out, 
  gt4_rxcdrhold_in, gt4_rxprbserr_out, gt4_rxprbssel_in, gt4_rxprbscntreset_in, 
  gt4_rxbufreset_in, gt4_rxbufstatus_out, gt4_rxstatus_out, gt4_rxbyteisaligned_out, 
  gt4_rxbyterealign_out, gt4_rxcommadet_out, gt4_dmonitorout_out, gt4_rxpcsreset_in, 
  gt4_rxpmareset_in, gt4_rxlpmen_in, gt4_rxdfelpmreset_in, gt4_rxmonitorout_out, 
  gt4_rxmonitorsel_in, gt5_txresetdone_out, gt5_rxresetdone_out, gt5_cplllock_out, 
  gt5_loopback_in, gt5_rxpd_in, gt5_txpd_in, gt5_txpostcursor_in, gt5_txprecursor_in, 
  gt5_txdiffctrl_in, gt5_txpolarity_in, gt5_txinhibit_in, gt5_rxpolarity_in, gt5_drpaddr, 
  gt5_drpdi, gt5_drpen, gt5_drpwe, gt5_drpdo, gt5_drprdy, gt5_eyescandataerror_out, 
  gt5_eyescantrigger_in, gt5_eyescanreset_in, gt5_txprbsforceerr_in, gt5_txpcsreset_in, 
  gt5_txpmareset_in, gt5_txbufstatus_out, gt5_rxcdrhold_in, gt5_rxprbserr_out, 
  gt5_rxprbssel_in, gt5_rxprbscntreset_in, gt5_rxbufreset_in, gt5_rxbufstatus_out, 
  gt5_rxstatus_out, gt5_rxbyteisaligned_out, gt5_rxbyterealign_out, gt5_rxcommadet_out, 
  gt5_dmonitorout_out, gt5_rxpcsreset_in, gt5_rxpmareset_in, gt5_rxlpmen_in, 
  gt5_rxdfelpmreset_in, gt5_rxmonitorout_out, gt5_rxmonitorsel_in, gt6_txresetdone_out, 
  gt6_rxresetdone_out, gt6_cplllock_out, gt6_loopback_in, gt6_rxpd_in, gt6_txpd_in, 
  gt6_txpostcursor_in, gt6_txprecursor_in, gt6_txdiffctrl_in, gt6_txpolarity_in, 
  gt6_txinhibit_in, gt6_rxpolarity_in, gt6_drpaddr, gt6_drpdi, gt6_drpen, gt6_drpwe, gt6_drpdo, 
  gt6_drprdy, gt6_eyescandataerror_out, gt6_eyescantrigger_in, gt6_eyescanreset_in, 
  gt6_txprbsforceerr_in, gt6_txpcsreset_in, gt6_txpmareset_in, gt6_txbufstatus_out, 
  gt6_rxcdrhold_in, gt6_rxprbserr_out, gt6_rxprbssel_in, gt6_rxprbscntreset_in, 
  gt6_rxbufreset_in, gt6_rxbufstatus_out, gt6_rxstatus_out, gt6_rxbyteisaligned_out, 
  gt6_rxbyterealign_out, gt6_rxcommadet_out, gt6_dmonitorout_out, gt6_rxpcsreset_in, 
  gt6_rxpmareset_in, gt6_rxlpmen_in, gt6_rxdfelpmreset_in, gt6_rxmonitorout_out, 
  gt6_rxmonitorsel_in, gt7_txresetdone_out, gt7_rxresetdone_out, gt7_cplllock_out, 
  gt7_loopback_in, gt7_rxpd_in, gt7_txpd_in, gt7_txpostcursor_in, gt7_txprecursor_in, 
  gt7_txdiffctrl_in, gt7_txpolarity_in, gt7_txinhibit_in, gt7_rxpolarity_in, gt7_drpaddr, 
  gt7_drpdi, gt7_drpen, gt7_drpwe, gt7_drpdo, gt7_drprdy, gt7_eyescandataerror_out, 
  gt7_eyescantrigger_in, gt7_eyescanreset_in, gt7_txprbsforceerr_in, gt7_txpcsreset_in, 
  gt7_txpmareset_in, gt7_txbufstatus_out, gt7_rxcdrhold_in, gt7_rxprbserr_out, 
  gt7_rxprbssel_in, gt7_rxprbscntreset_in, gt7_rxbufreset_in, gt7_rxbufstatus_out, 
  gt7_rxstatus_out, gt7_rxbyteisaligned_out, gt7_rxbyterealign_out, gt7_rxcommadet_out, 
  gt7_dmonitorout_out, gt7_rxpcsreset_in, gt7_rxpmareset_in, gt7_rxlpmen_in, 
  gt7_rxdfelpmreset_in, gt7_rxmonitorout_out, gt7_rxmonitorsel_in, tx_sys_reset, 
  rx_sys_reset, tx_reset_gt, rx_reset_gt, tx_reset_done, rx_reset_done, qpll_refclk, 
  common0_qpll_lock_out, common0_qpll_refclk_out, common0_qpll_clk_out, 
  common1_qpll_lock_out, common1_qpll_refclk_out, common1_qpll_clk_out, rxencommaalign, 
  tx_core_clk, txoutclk, rx_core_clk, rxoutclk, drpclk, gt_prbssel, gt0_txcharisk, gt0_txdata, 
  gt1_txcharisk, gt1_txdata, gt2_txcharisk, gt2_txdata, gt3_txcharisk, gt3_txdata, 
  gt4_txcharisk, gt4_txdata, gt5_txcharisk, gt5_txdata, gt6_txcharisk, gt6_txdata, 
  gt7_txcharisk, gt7_txdata, gt0_rxcharisk, gt0_rxdisperr, gt0_rxnotintable, gt0_rxdata, 
  gt1_rxcharisk, gt1_rxdisperr, gt1_rxnotintable, gt1_rxdata, gt2_rxcharisk, gt2_rxdisperr, 
  gt2_rxnotintable, gt2_rxdata, gt3_rxcharisk, gt3_rxdisperr, gt3_rxnotintable, gt3_rxdata, 
  gt4_rxcharisk, gt4_rxdisperr, gt4_rxnotintable, gt4_rxdata, gt5_rxcharisk, gt5_rxdisperr, 
  gt5_rxnotintable, gt5_rxdata, gt6_rxcharisk, gt6_rxdisperr, gt6_rxnotintable, gt6_rxdata, 
  gt7_rxcharisk, gt7_rxdisperr, gt7_rxnotintable, gt7_rxdata, rxn_in, rxp_in, txn_out, txp_out)
/* synthesis syn_black_box black_box_pad_pin="gt0_txresetdone_out,gt0_rxresetdone_out,gt0_cplllock_out,gt0_loopback_in[2:0],gt0_rxpd_in[1:0],gt0_txpd_in[1:0],gt0_txpostcursor_in[4:0],gt0_txprecursor_in[4:0],gt0_txdiffctrl_in[3:0],gt0_txpolarity_in,gt0_txinhibit_in,gt0_rxpolarity_in,gt0_drpaddr[8:0],gt0_drpdi[15:0],gt0_drpen,gt0_drpwe,gt0_drpdo[15:0],gt0_drprdy,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_eyescanreset_in,gt0_txprbsforceerr_in,gt0_txpcsreset_in,gt0_txpmareset_in,gt0_txbufstatus_out[1:0],gt0_rxcdrhold_in,gt0_rxprbserr_out,gt0_rxprbssel_in[2:0],gt0_rxprbscntreset_in,gt0_rxbufreset_in,gt0_rxbufstatus_out[2:0],gt0_rxstatus_out[2:0],gt0_rxbyteisaligned_out,gt0_rxbyterealign_out,gt0_rxcommadet_out,gt0_dmonitorout_out[14:0],gt0_rxpcsreset_in,gt0_rxpmareset_in,gt0_rxlpmen_in,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt1_txresetdone_out,gt1_rxresetdone_out,gt1_cplllock_out,gt1_loopback_in[2:0],gt1_rxpd_in[1:0],gt1_txpd_in[1:0],gt1_txpostcursor_in[4:0],gt1_txprecursor_in[4:0],gt1_txdiffctrl_in[3:0],gt1_txpolarity_in,gt1_txinhibit_in,gt1_rxpolarity_in,gt1_drpaddr[8:0],gt1_drpdi[15:0],gt1_drpen,gt1_drpwe,gt1_drpdo[15:0],gt1_drprdy,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_eyescanreset_in,gt1_txprbsforceerr_in,gt1_txpcsreset_in,gt1_txpmareset_in,gt1_txbufstatus_out[1:0],gt1_rxcdrhold_in,gt1_rxprbserr_out,gt1_rxprbssel_in[2:0],gt1_rxprbscntreset_in,gt1_rxbufreset_in,gt1_rxbufstatus_out[2:0],gt1_rxstatus_out[2:0],gt1_rxbyteisaligned_out,gt1_rxbyterealign_out,gt1_rxcommadet_out,gt1_dmonitorout_out[14:0],gt1_rxpcsreset_in,gt1_rxpmareset_in,gt1_rxlpmen_in,gt1_rxdfelpmreset_in,gt1_rxmonitorout_out[6:0],gt1_rxmonitorsel_in[1:0],gt2_txresetdone_out,gt2_rxresetdone_out,gt2_cplllock_out,gt2_loopback_in[2:0],gt2_rxpd_in[1:0],gt2_txpd_in[1:0],gt2_txpostcursor_in[4:0],gt2_txprecursor_in[4:0],gt2_txdiffctrl_in[3:0],gt2_txpolarity_in,gt2_txinhibit_in,gt2_rxpolarity_in,gt2_drpaddr[8:0],gt2_drpdi[15:0],gt2_drpen,gt2_drpwe,gt2_drpdo[15:0],gt2_drprdy,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_eyescanreset_in,gt2_txprbsforceerr_in,gt2_txpcsreset_in,gt2_txpmareset_in,gt2_txbufstatus_out[1:0],gt2_rxcdrhold_in,gt2_rxprbserr_out,gt2_rxprbssel_in[2:0],gt2_rxprbscntreset_in,gt2_rxbufreset_in,gt2_rxbufstatus_out[2:0],gt2_rxstatus_out[2:0],gt2_rxbyteisaligned_out,gt2_rxbyterealign_out,gt2_rxcommadet_out,gt2_dmonitorout_out[14:0],gt2_rxpcsreset_in,gt2_rxpmareset_in,gt2_rxlpmen_in,gt2_rxdfelpmreset_in,gt2_rxmonitorout_out[6:0],gt2_rxmonitorsel_in[1:0],gt3_txresetdone_out,gt3_rxresetdone_out,gt3_cplllock_out,gt3_loopback_in[2:0],gt3_rxpd_in[1:0],gt3_txpd_in[1:0],gt3_txpostcursor_in[4:0],gt3_txprecursor_in[4:0],gt3_txdiffctrl_in[3:0],gt3_txpolarity_in,gt3_txinhibit_in,gt3_rxpolarity_in,gt3_drpaddr[8:0],gt3_drpdi[15:0],gt3_drpen,gt3_drpwe,gt3_drpdo[15:0],gt3_drprdy,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_eyescanreset_in,gt3_txprbsforceerr_in,gt3_txpcsreset_in,gt3_txpmareset_in,gt3_txbufstatus_out[1:0],gt3_rxcdrhold_in,gt3_rxprbserr_out,gt3_rxprbssel_in[2:0],gt3_rxprbscntreset_in,gt3_rxbufreset_in,gt3_rxbufstatus_out[2:0],gt3_rxstatus_out[2:0],gt3_rxbyteisaligned_out,gt3_rxbyterealign_out,gt3_rxcommadet_out,gt3_dmonitorout_out[14:0],gt3_rxpcsreset_in,gt3_rxpmareset_in,gt3_rxlpmen_in,gt3_rxdfelpmreset_in,gt3_rxmonitorout_out[6:0],gt3_rxmonitorsel_in[1:0],gt4_txresetdone_out,gt4_rxresetdone_out,gt4_cplllock_out,gt4_loopback_in[2:0],gt4_rxpd_in[1:0],gt4_txpd_in[1:0],gt4_txpostcursor_in[4:0],gt4_txprecursor_in[4:0],gt4_txdiffctrl_in[3:0],gt4_txpolarity_in,gt4_txinhibit_in,gt4_rxpolarity_in,gt4_drpaddr[8:0],gt4_drpdi[15:0],gt4_drpen,gt4_drpwe,gt4_drpdo[15:0],gt4_drprdy,gt4_eyescandataerror_out,gt4_eyescantrigger_in,gt4_eyescanreset_in,gt4_txprbsforceerr_in,gt4_txpcsreset_in,gt4_txpmareset_in,gt4_txbufstatus_out[1:0],gt4_rxcdrhold_in,gt4_rxprbserr_out,gt4_rxprbssel_in[2:0],gt4_rxprbscntreset_in,gt4_rxbufreset_in,gt4_rxbufstatus_out[2:0],gt4_rxstatus_out[2:0],gt4_rxbyteisaligned_out,gt4_rxbyterealign_out,gt4_rxcommadet_out,gt4_dmonitorout_out[14:0],gt4_rxpcsreset_in,gt4_rxpmareset_in,gt4_rxlpmen_in,gt4_rxdfelpmreset_in,gt4_rxmonitorout_out[6:0],gt4_rxmonitorsel_in[1:0],gt5_txresetdone_out,gt5_rxresetdone_out,gt5_cplllock_out,gt5_loopback_in[2:0],gt5_rxpd_in[1:0],gt5_txpd_in[1:0],gt5_txpostcursor_in[4:0],gt5_txprecursor_in[4:0],gt5_txdiffctrl_in[3:0],gt5_txpolarity_in,gt5_txinhibit_in,gt5_rxpolarity_in,gt5_drpaddr[8:0],gt5_drpdi[15:0],gt5_drpen,gt5_drpwe,gt5_drpdo[15:0],gt5_drprdy,gt5_eyescandataerror_out,gt5_eyescantrigger_in,gt5_eyescanreset_in,gt5_txprbsforceerr_in,gt5_txpcsreset_in,gt5_txpmareset_in,gt5_txbufstatus_out[1:0],gt5_rxcdrhold_in,gt5_rxprbserr_out,gt5_rxprbssel_in[2:0],gt5_rxprbscntreset_in,gt5_rxbufreset_in,gt5_rxbufstatus_out[2:0],gt5_rxstatus_out[2:0],gt5_rxbyteisaligned_out,gt5_rxbyterealign_out,gt5_rxcommadet_out,gt5_dmonitorout_out[14:0],gt5_rxpcsreset_in,gt5_rxpmareset_in,gt5_rxlpmen_in,gt5_rxdfelpmreset_in,gt5_rxmonitorout_out[6:0],gt5_rxmonitorsel_in[1:0],gt6_txresetdone_out,gt6_rxresetdone_out,gt6_cplllock_out,gt6_loopback_in[2:0],gt6_rxpd_in[1:0],gt6_txpd_in[1:0],gt6_txpostcursor_in[4:0],gt6_txprecursor_in[4:0],gt6_txdiffctrl_in[3:0],gt6_txpolarity_in,gt6_txinhibit_in,gt6_rxpolarity_in,gt6_drpaddr[8:0],gt6_drpdi[15:0],gt6_drpen,gt6_drpwe,gt6_drpdo[15:0],gt6_drprdy,gt6_eyescandataerror_out,gt6_eyescantrigger_in,gt6_eyescanreset_in,gt6_txprbsforceerr_in,gt6_txpcsreset_in,gt6_txpmareset_in,gt6_txbufstatus_out[1:0],gt6_rxcdrhold_in,gt6_rxprbserr_out,gt6_rxprbssel_in[2:0],gt6_rxprbscntreset_in,gt6_rxbufreset_in,gt6_rxbufstatus_out[2:0],gt6_rxstatus_out[2:0],gt6_rxbyteisaligned_out,gt6_rxbyterealign_out,gt6_rxcommadet_out,gt6_dmonitorout_out[14:0],gt6_rxpcsreset_in,gt6_rxpmareset_in,gt6_rxlpmen_in,gt6_rxdfelpmreset_in,gt6_rxmonitorout_out[6:0],gt6_rxmonitorsel_in[1:0],gt7_txresetdone_out,gt7_rxresetdone_out,gt7_cplllock_out,gt7_loopback_in[2:0],gt7_rxpd_in[1:0],gt7_txpd_in[1:0],gt7_txpostcursor_in[4:0],gt7_txprecursor_in[4:0],gt7_txdiffctrl_in[3:0],gt7_txpolarity_in,gt7_txinhibit_in,gt7_rxpolarity_in,gt7_drpaddr[8:0],gt7_drpdi[15:0],gt7_drpen,gt7_drpwe,gt7_drpdo[15:0],gt7_drprdy,gt7_eyescandataerror_out,gt7_eyescantrigger_in,gt7_eyescanreset_in,gt7_txprbsforceerr_in,gt7_txpcsreset_in,gt7_txpmareset_in,gt7_txbufstatus_out[1:0],gt7_rxcdrhold_in,gt7_rxprbserr_out,gt7_rxprbssel_in[2:0],gt7_rxprbscntreset_in,gt7_rxbufreset_in,gt7_rxbufstatus_out[2:0],gt7_rxstatus_out[2:0],gt7_rxbyteisaligned_out,gt7_rxbyterealign_out,gt7_rxcommadet_out,gt7_dmonitorout_out[14:0],gt7_rxpcsreset_in,gt7_rxpmareset_in,gt7_rxlpmen_in,gt7_rxdfelpmreset_in,gt7_rxmonitorout_out[6:0],gt7_rxmonitorsel_in[1:0],tx_sys_reset,rx_sys_reset,tx_reset_gt,rx_reset_gt,tx_reset_done,rx_reset_done,qpll_refclk,common0_qpll_lock_out,common0_qpll_refclk_out,common0_qpll_clk_out,common1_qpll_lock_out,common1_qpll_refclk_out,common1_qpll_clk_out,rxencommaalign,tx_core_clk,txoutclk,rx_core_clk,rxoutclk,drpclk,gt_prbssel[2:0],gt0_txcharisk[3:0],gt0_txdata[31:0],gt1_txcharisk[3:0],gt1_txdata[31:0],gt2_txcharisk[3:0],gt2_txdata[31:0],gt3_txcharisk[3:0],gt3_txdata[31:0],gt4_txcharisk[3:0],gt4_txdata[31:0],gt5_txcharisk[3:0],gt5_txdata[31:0],gt6_txcharisk[3:0],gt6_txdata[31:0],gt7_txcharisk[3:0],gt7_txdata[31:0],gt0_rxcharisk[3:0],gt0_rxdisperr[3:0],gt0_rxnotintable[3:0],gt0_rxdata[31:0],gt1_rxcharisk[3:0],gt1_rxdisperr[3:0],gt1_rxnotintable[3:0],gt1_rxdata[31:0],gt2_rxcharisk[3:0],gt2_rxdisperr[3:0],gt2_rxnotintable[3:0],gt2_rxdata[31:0],gt3_rxcharisk[3:0],gt3_rxdisperr[3:0],gt3_rxnotintable[3:0],gt3_rxdata[31:0],gt4_rxcharisk[3:0],gt4_rxdisperr[3:0],gt4_rxnotintable[3:0],gt4_rxdata[31:0],gt5_rxcharisk[3:0],gt5_rxdisperr[3:0],gt5_rxnotintable[3:0],gt5_rxdata[31:0],gt6_rxcharisk[3:0],gt6_rxdisperr[3:0],gt6_rxnotintable[3:0],gt6_rxdata[31:0],gt7_rxcharisk[3:0],gt7_rxdisperr[3:0],gt7_rxnotintable[3:0],gt7_rxdata[31:0],rxn_in[7:0],rxp_in[7:0],txn_out[7:0],txp_out[7:0]" */;
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output gt0_cplllock_out;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txpolarity_in;
  input gt0_txinhibit_in;
  input gt0_rxpolarity_in;
  input [8:0]gt0_drpaddr;
  input [15:0]gt0_drpdi;
  input gt0_drpen;
  input gt0_drpwe;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_eyescanreset_in;
  input gt0_txprbsforceerr_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output [1:0]gt0_txbufstatus_out;
  input gt0_rxcdrhold_in;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output [14:0]gt0_dmonitorout_out;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt1_txresetdone_out;
  output gt1_rxresetdone_out;
  output gt1_cplllock_out;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txpolarity_in;
  input gt1_txinhibit_in;
  input gt1_rxpolarity_in;
  input [8:0]gt1_drpaddr;
  input [15:0]gt1_drpdi;
  input gt1_drpen;
  input gt1_drpwe;
  output [15:0]gt1_drpdo;
  output gt1_drprdy;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_eyescanreset_in;
  input gt1_txprbsforceerr_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output [1:0]gt1_txbufstatus_out;
  input gt1_rxcdrhold_in;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output [14:0]gt1_dmonitorout_out;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt2_txresetdone_out;
  output gt2_rxresetdone_out;
  output gt2_cplllock_out;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txpolarity_in;
  input gt2_txinhibit_in;
  input gt2_rxpolarity_in;
  input [8:0]gt2_drpaddr;
  input [15:0]gt2_drpdi;
  input gt2_drpen;
  input gt2_drpwe;
  output [15:0]gt2_drpdo;
  output gt2_drprdy;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_eyescanreset_in;
  input gt2_txprbsforceerr_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output [1:0]gt2_txbufstatus_out;
  input gt2_rxcdrhold_in;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output [14:0]gt2_dmonitorout_out;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt3_txresetdone_out;
  output gt3_rxresetdone_out;
  output gt3_cplllock_out;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txpolarity_in;
  input gt3_txinhibit_in;
  input gt3_rxpolarity_in;
  input [8:0]gt3_drpaddr;
  input [15:0]gt3_drpdi;
  input gt3_drpen;
  input gt3_drpwe;
  output [15:0]gt3_drpdo;
  output gt3_drprdy;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_eyescanreset_in;
  input gt3_txprbsforceerr_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output [1:0]gt3_txbufstatus_out;
  input gt3_rxcdrhold_in;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output [14:0]gt3_dmonitorout_out;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt4_txresetdone_out;
  output gt4_rxresetdone_out;
  output gt4_cplllock_out;
  input [2:0]gt4_loopback_in;
  input [1:0]gt4_rxpd_in;
  input [1:0]gt4_txpd_in;
  input [4:0]gt4_txpostcursor_in;
  input [4:0]gt4_txprecursor_in;
  input [3:0]gt4_txdiffctrl_in;
  input gt4_txpolarity_in;
  input gt4_txinhibit_in;
  input gt4_rxpolarity_in;
  input [8:0]gt4_drpaddr;
  input [15:0]gt4_drpdi;
  input gt4_drpen;
  input gt4_drpwe;
  output [15:0]gt4_drpdo;
  output gt4_drprdy;
  output gt4_eyescandataerror_out;
  input gt4_eyescantrigger_in;
  input gt4_eyescanreset_in;
  input gt4_txprbsforceerr_in;
  input gt4_txpcsreset_in;
  input gt4_txpmareset_in;
  output [1:0]gt4_txbufstatus_out;
  input gt4_rxcdrhold_in;
  output gt4_rxprbserr_out;
  input [2:0]gt4_rxprbssel_in;
  input gt4_rxprbscntreset_in;
  input gt4_rxbufreset_in;
  output [2:0]gt4_rxbufstatus_out;
  output [2:0]gt4_rxstatus_out;
  output gt4_rxbyteisaligned_out;
  output gt4_rxbyterealign_out;
  output gt4_rxcommadet_out;
  output [14:0]gt4_dmonitorout_out;
  input gt4_rxpcsreset_in;
  input gt4_rxpmareset_in;
  input gt4_rxlpmen_in;
  input gt4_rxdfelpmreset_in;
  output [6:0]gt4_rxmonitorout_out;
  input [1:0]gt4_rxmonitorsel_in;
  output gt5_txresetdone_out;
  output gt5_rxresetdone_out;
  output gt5_cplllock_out;
  input [2:0]gt5_loopback_in;
  input [1:0]gt5_rxpd_in;
  input [1:0]gt5_txpd_in;
  input [4:0]gt5_txpostcursor_in;
  input [4:0]gt5_txprecursor_in;
  input [3:0]gt5_txdiffctrl_in;
  input gt5_txpolarity_in;
  input gt5_txinhibit_in;
  input gt5_rxpolarity_in;
  input [8:0]gt5_drpaddr;
  input [15:0]gt5_drpdi;
  input gt5_drpen;
  input gt5_drpwe;
  output [15:0]gt5_drpdo;
  output gt5_drprdy;
  output gt5_eyescandataerror_out;
  input gt5_eyescantrigger_in;
  input gt5_eyescanreset_in;
  input gt5_txprbsforceerr_in;
  input gt5_txpcsreset_in;
  input gt5_txpmareset_in;
  output [1:0]gt5_txbufstatus_out;
  input gt5_rxcdrhold_in;
  output gt5_rxprbserr_out;
  input [2:0]gt5_rxprbssel_in;
  input gt5_rxprbscntreset_in;
  input gt5_rxbufreset_in;
  output [2:0]gt5_rxbufstatus_out;
  output [2:0]gt5_rxstatus_out;
  output gt5_rxbyteisaligned_out;
  output gt5_rxbyterealign_out;
  output gt5_rxcommadet_out;
  output [14:0]gt5_dmonitorout_out;
  input gt5_rxpcsreset_in;
  input gt5_rxpmareset_in;
  input gt5_rxlpmen_in;
  input gt5_rxdfelpmreset_in;
  output [6:0]gt5_rxmonitorout_out;
  input [1:0]gt5_rxmonitorsel_in;
  output gt6_txresetdone_out;
  output gt6_rxresetdone_out;
  output gt6_cplllock_out;
  input [2:0]gt6_loopback_in;
  input [1:0]gt6_rxpd_in;
  input [1:0]gt6_txpd_in;
  input [4:0]gt6_txpostcursor_in;
  input [4:0]gt6_txprecursor_in;
  input [3:0]gt6_txdiffctrl_in;
  input gt6_txpolarity_in;
  input gt6_txinhibit_in;
  input gt6_rxpolarity_in;
  input [8:0]gt6_drpaddr;
  input [15:0]gt6_drpdi;
  input gt6_drpen;
  input gt6_drpwe;
  output [15:0]gt6_drpdo;
  output gt6_drprdy;
  output gt6_eyescandataerror_out;
  input gt6_eyescantrigger_in;
  input gt6_eyescanreset_in;
  input gt6_txprbsforceerr_in;
  input gt6_txpcsreset_in;
  input gt6_txpmareset_in;
  output [1:0]gt6_txbufstatus_out;
  input gt6_rxcdrhold_in;
  output gt6_rxprbserr_out;
  input [2:0]gt6_rxprbssel_in;
  input gt6_rxprbscntreset_in;
  input gt6_rxbufreset_in;
  output [2:0]gt6_rxbufstatus_out;
  output [2:0]gt6_rxstatus_out;
  output gt6_rxbyteisaligned_out;
  output gt6_rxbyterealign_out;
  output gt6_rxcommadet_out;
  output [14:0]gt6_dmonitorout_out;
  input gt6_rxpcsreset_in;
  input gt6_rxpmareset_in;
  input gt6_rxlpmen_in;
  input gt6_rxdfelpmreset_in;
  output [6:0]gt6_rxmonitorout_out;
  input [1:0]gt6_rxmonitorsel_in;
  output gt7_txresetdone_out;
  output gt7_rxresetdone_out;
  output gt7_cplllock_out;
  input [2:0]gt7_loopback_in;
  input [1:0]gt7_rxpd_in;
  input [1:0]gt7_txpd_in;
  input [4:0]gt7_txpostcursor_in;
  input [4:0]gt7_txprecursor_in;
  input [3:0]gt7_txdiffctrl_in;
  input gt7_txpolarity_in;
  input gt7_txinhibit_in;
  input gt7_rxpolarity_in;
  input [8:0]gt7_drpaddr;
  input [15:0]gt7_drpdi;
  input gt7_drpen;
  input gt7_drpwe;
  output [15:0]gt7_drpdo;
  output gt7_drprdy;
  output gt7_eyescandataerror_out;
  input gt7_eyescantrigger_in;
  input gt7_eyescanreset_in;
  input gt7_txprbsforceerr_in;
  input gt7_txpcsreset_in;
  input gt7_txpmareset_in;
  output [1:0]gt7_txbufstatus_out;
  input gt7_rxcdrhold_in;
  output gt7_rxprbserr_out;
  input [2:0]gt7_rxprbssel_in;
  input gt7_rxprbscntreset_in;
  input gt7_rxbufreset_in;
  output [2:0]gt7_rxbufstatus_out;
  output [2:0]gt7_rxstatus_out;
  output gt7_rxbyteisaligned_out;
  output gt7_rxbyterealign_out;
  output gt7_rxcommadet_out;
  output [14:0]gt7_dmonitorout_out;
  input gt7_rxpcsreset_in;
  input gt7_rxpmareset_in;
  input gt7_rxlpmen_in;
  input gt7_rxdfelpmreset_in;
  output [6:0]gt7_rxmonitorout_out;
  input [1:0]gt7_rxmonitorsel_in;
  input tx_sys_reset;
  input rx_sys_reset;
  input tx_reset_gt;
  input rx_reset_gt;
  output tx_reset_done;
  output rx_reset_done;
  input qpll_refclk;
  output common0_qpll_lock_out;
  output common0_qpll_refclk_out;
  output common0_qpll_clk_out;
  output common1_qpll_lock_out;
  output common1_qpll_refclk_out;
  output common1_qpll_clk_out;
  input rxencommaalign;
  input tx_core_clk;
  output txoutclk;
  input rx_core_clk;
  output rxoutclk;
  input drpclk;
  input [2:0]gt_prbssel;
  input [3:0]gt0_txcharisk;
  input [31:0]gt0_txdata;
  input [3:0]gt1_txcharisk;
  input [31:0]gt1_txdata;
  input [3:0]gt2_txcharisk;
  input [31:0]gt2_txdata;
  input [3:0]gt3_txcharisk;
  input [31:0]gt3_txdata;
  input [3:0]gt4_txcharisk;
  input [31:0]gt4_txdata;
  input [3:0]gt5_txcharisk;
  input [31:0]gt5_txdata;
  input [3:0]gt6_txcharisk;
  input [31:0]gt6_txdata;
  input [3:0]gt7_txcharisk;
  input [31:0]gt7_txdata;
  output [3:0]gt0_rxcharisk;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [31:0]gt0_rxdata;
  output [3:0]gt1_rxcharisk;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [31:0]gt1_rxdata;
  output [3:0]gt2_rxcharisk;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [31:0]gt2_rxdata;
  output [3:0]gt3_rxcharisk;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  output [31:0]gt3_rxdata;
  output [3:0]gt4_rxcharisk;
  output [3:0]gt4_rxdisperr;
  output [3:0]gt4_rxnotintable;
  output [31:0]gt4_rxdata;
  output [3:0]gt5_rxcharisk;
  output [3:0]gt5_rxdisperr;
  output [3:0]gt5_rxnotintable;
  output [31:0]gt5_rxdata;
  output [3:0]gt6_rxcharisk;
  output [3:0]gt6_rxdisperr;
  output [3:0]gt6_rxnotintable;
  output [31:0]gt6_rxdata;
  output [3:0]gt7_rxcharisk;
  output [3:0]gt7_rxdisperr;
  output [3:0]gt7_rxnotintable;
  output [31:0]gt7_rxdata;
  input [7:0]rxn_in;
  input [7:0]rxp_in;
  output [7:0]txn_out;
  output [7:0]txp_out;
endmodule
