//----------------------------------------------------------------------------
// Title : Support Level Module
// Project : JESD204
//----------------------------------------------------------------------------
// File : jesd204_support.v
//----------------------------------------------------------------------------
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
//----------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module jesd204_1_support (
  // GT Reference Clock
  input          refclk_p,
  input          refclk_n,

  // GT Common Ports
  output         common0_pll_clk_out,
  output         common0_pll_refclk_out,
  output         common0_pll_lock_out,
  output         common1_pll_clk_out,
  output         common1_pll_refclk_out,
  output         common1_pll_lock_out,

  //*******************************************
  // Tx Ports
  //*******************************************
  input          tx_reset,
  input          tx_core_clk_in,

  input          tx_sysref,
  input          tx_sync,

  output  [7:0]  txp,
  output  [7:0]  txn,

  // Tx AXI-S interface
  output         tx_aresetn,

  output  [3:0]  tx_start_of_frame,
  output  [3:0]  tx_start_of_multiframe,

  output         tx_tready,
  input  [255:0]  tx_tdata,
  
  output  reg   dac_status,

  // DRP Clock input
  input          drpclk,

  // AXI-Lite Control/Status
  input          s_axi_aclk,
  input          s_axi_aresetn,
  input  [11:0]  s_axi_awaddr,
  input          s_axi_awvalid,
  output         s_axi_awready,
  input  [31:0]  s_axi_wdata,
  input   [3:0]  s_axi_wstrb,
  input          s_axi_wvalid,
  output         s_axi_wready,
  output  [1:0]  s_axi_bresp,
  output         s_axi_bvalid,
  input          s_axi_bready,
  input  [11:0]  s_axi_araddr,
  input          s_axi_arvalid,
  output         s_axi_arready,
  output [31:0]  s_axi_rdata,
  output  [1:0]  s_axi_rresp,
  output         s_axi_rvalid,
  input          s_axi_rready
);

  localparam tx_pll_sel = 3;
  localparam rx_pll_sel = 3;

//*******************************************
// Wire declaration
//*******************************************
  wire         refclk;
  wire         tx_core_clk;

  wire         txoutclk;
  wire         rxoutclk;

  // GT Common I/O
  wire         common0_qpll_refclk_i;
  wire         common0_qpll_clk_i;
  wire         common0_qpll_lock_i;
  wire         common1_qpll_refclk_i;
  wire         common1_qpll_clk_i;
  wire         common1_qpll_lock_i;

  wire         tx_reset_done;
  wire  [2:0]  gt_prbssel_i;

  wire         tx_reset_gt;
  (* MARK_DEBUG="true" *)wire [31:0]  gt0_txdata;
  (* MARK_DEBUG="true" *)wire [3:0]   gt0_txcharisk;

  wire [31:0]  gt0_rxdata;
  wire [3:0]   gt0_rxcharisk;
  wire [3:0]   gt0_rxdisperr;
  wire [3:0]   gt0_rxnotintable;

 (* MARK_DEBUG="true" *) wire [31:0]  gt1_txdata;
 (* MARK_DEBUG="true" *) wire [3:0]   gt1_txcharisk;

  wire [31:0]  gt1_rxdata;
  wire [3:0]   gt1_rxcharisk;
  wire [3:0]   gt1_rxdisperr;
  wire [3:0]   gt1_rxnotintable;

  wire [31:0]  gt2_txdata;
  wire [3:0]   gt2_txcharisk;

  wire [31:0]  gt2_rxdata;
  wire [3:0]   gt2_rxcharisk;
  wire [3:0]   gt2_rxdisperr;
  wire [3:0]   gt2_rxnotintable;

  wire [31:0]  gt3_txdata;
  wire [3:0]   gt3_txcharisk;

  wire [31:0]  gt3_rxdata;
  wire [3:0]   gt3_rxcharisk;
  wire [3:0]   gt3_rxdisperr;
  wire [3:0]   gt3_rxnotintable;

  wire [31:0]  gt4_txdata;
  wire [3:0]   gt4_txcharisk;

  wire [31:0]  gt4_rxdata;
  wire [3:0]   gt4_rxcharisk;
  wire [3:0]   gt4_rxdisperr;
  wire [3:0]   gt4_rxnotintable;

  wire [31:0]  gt5_txdata;
  wire [3:0]   gt5_txcharisk;

  wire [31:0]  gt5_rxdata;
  wire [3:0]   gt5_rxcharisk;
  wire [3:0]   gt5_rxdisperr;
  wire [3:0]   gt5_rxnotintable;

  wire [31:0]  gt6_txdata;
  wire [3:0]   gt6_txcharisk;

  wire [31:0]  gt6_rxdata;
  wire [3:0]   gt6_rxcharisk;
  wire [3:0]   gt6_rxdisperr;
  wire [3:0]   gt6_rxnotintable;

  wire [31:0]  gt7_txdata;
  wire [3:0]   gt7_txcharisk;

  wire [31:0]  gt7_rxdata;
  wire [3:0]   gt7_rxcharisk;
  wire [3:0]   gt7_rxdisperr;
  wire [3:0]   gt7_rxnotintable;

//*******************************************
// JESD204 Core
//*******************************************
jesd204_tx jesd204_i
 (
  // Tx
  .tx_reset               (tx_reset),
  .tx_core_clk            (tx_core_clk),
  .tx_sysref              (tx_sysref),
  .tx_sync                (tx_sync),

   // Ports Required for GT
  .tx_reset_gt           (tx_reset_gt),

  .tx_reset_done         (tx_reset_done),
  .gt_prbssel_out        (gt_prbssel_i),
  // Lane 0
  .gt0_txdata            (gt0_txdata),
  .gt0_txcharisk         (gt0_txcharisk),

  // Lane 1
  .gt1_txdata            (gt1_txdata),
  .gt1_txcharisk         (gt1_txcharisk),

  // Lane 2
  .gt2_txdata            (gt2_txdata),
  .gt2_txcharisk         (gt2_txcharisk),

  // Lane 3
  .gt3_txdata            (gt3_txdata),
  .gt3_txcharisk         (gt3_txcharisk),

  // Lane 4
  .gt4_txdata            (gt4_txdata),
  .gt4_txcharisk         (gt4_txcharisk),

  // Lane 5
  .gt5_txdata            (gt5_txdata),
  .gt5_txcharisk         (gt5_txcharisk),

  // Lane 6
  .gt6_txdata            (gt6_txdata),
  .gt6_txcharisk         (gt6_txcharisk),

  // Lane 7
  .gt7_txdata            (gt7_txdata),
  .gt7_txcharisk         (gt7_txcharisk),


  // Tx AXI interface for each lane
  .tx_aresetn             (tx_aresetn),

  .tx_start_of_frame      (tx_start_of_frame),
  .tx_start_of_multiframe (tx_start_of_multiframe),

  .tx_tdata               (tx_tdata),
  .tx_tready              (tx_tready),


  // AXI-Lite Control/Status
  .s_axi_aclk             (s_axi_aclk),
  .s_axi_aresetn          (s_axi_aresetn),
  .s_axi_awaddr           (s_axi_awaddr),
  .s_axi_awvalid          (s_axi_awvalid),
  .s_axi_awready          (s_axi_awready),
  .s_axi_wdata            (s_axi_wdata),
  .s_axi_wstrb            (s_axi_wstrb),
  .s_axi_wvalid           (s_axi_wvalid),
  .s_axi_wready           (s_axi_wready),
  .s_axi_bresp            (s_axi_bresp),
  .s_axi_bvalid           (s_axi_bvalid),
  .s_axi_bready           (s_axi_bready),
  .s_axi_araddr           (s_axi_araddr),
  .s_axi_arvalid          (s_axi_arvalid),
  .s_axi_arready          (s_axi_arready),
  .s_axi_rdata            (s_axi_rdata),
  .s_axi_rresp            (s_axi_rresp),
  .s_axi_rvalid           (s_axi_rvalid),
  .s_axi_rready           (s_axi_rready)
);

//*******************************************
// Shared Clocking Module
// Clocks from this module can be used to
// share with other CL modules
//*******************************************
jesd204_tx_clocking

i_shared_clocks(
  .refclk_pad_n         (refclk_n),
  .refclk_pad_p         (refclk_p),
  .refclk               (refclk)       //Used to drive GT Ref clock
 
 );

// Assign values to output clocks
  assign   tx_core_clk = tx_core_clk_in;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

//------------------------------------------------------------

// Instantiate the JESD204 PHY core
//------------------------------------------------------------
jesd204_tx_phy
i_jesd204_phy (
  // Loopback
  .gt0_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt0_txresetdone_out         (),
  .gt0_rxresetdone_out         (),

  .gt0_cplllock_out            (),

  // Power Down Ports
  .gt0_rxpd_in                 (2'b00),
  .gt0_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt0_eyescandataerror_out    (),
  .gt0_eyescantrigger_in       (1'b0),
  .gt0_eyescanreset_in         (1'b0),

  // Tx Control
  .gt0_txpostcursor_in         (5'b00000),
  .gt0_txprecursor_in          (5'b00000),
  .gt0_txdiffctrl_in           (4'b1000),
  .gt0_txpolarity_in           (1'b0),
  .gt0_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt0_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt0_txpcsreset_in          (1'b0),
  .gt0_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt0_txbufstatus_out        (),

  // Rx CDR Ports
  .gt0_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt0_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt0_rxprbserr_out          (),
  .gt0_rxprbssel_in           (3'b0),
  .gt0_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt0_rxbufreset_in          (1'b0),
  .gt0_rxbufstatus_out        (),
  .gt0_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt0_rxbyteisaligned_out    (),
  .gt0_rxbyterealign_out      (),
  .gt0_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt0_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt0_rxpcsreset_in          (1'b0),
  .gt0_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt0_rxlpmen_in             (1'b1),
  .gt0_rxdfelpmreset_in       (1'b0),
  .gt0_rxmonitorout_out       (),
  .gt0_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt1_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt1_txresetdone_out         (),
  .gt1_rxresetdone_out         (),

  .gt1_cplllock_out            (),

  // Power Down Ports
  .gt1_rxpd_in                 (2'b00),
  .gt1_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt1_eyescandataerror_out    (),
  .gt1_eyescantrigger_in       (1'b0),
  .gt1_eyescanreset_in         (1'b0),

  // Tx Control
  .gt1_txpostcursor_in         (5'b00000),
  .gt1_txprecursor_in          (5'b00000),
  .gt1_txdiffctrl_in           (4'b1000),
  .gt1_txpolarity_in           (1'b0),
  .gt1_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt1_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt1_txpcsreset_in          (1'b0),
  .gt1_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt1_txbufstatus_out        (),

  // Rx CDR Ports
  .gt1_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt1_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt1_rxprbserr_out          (),
  .gt1_rxprbssel_in           (3'b0),
  .gt1_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt1_rxbufreset_in          (1'b0),
  .gt1_rxbufstatus_out        (),
  .gt1_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt1_rxbyteisaligned_out    (),
  .gt1_rxbyterealign_out      (),
  .gt1_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt1_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt1_rxpcsreset_in          (1'b0),
  .gt1_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt1_rxlpmen_in             (1'b1),
  .gt1_rxdfelpmreset_in       (1'b0),
  .gt1_rxmonitorout_out       (),
  .gt1_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt2_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt2_txresetdone_out         (),
  .gt2_rxresetdone_out         (),

  .gt2_cplllock_out            (),

  // Power Down Ports
  .gt2_rxpd_in                 (2'b00),
  .gt2_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt2_eyescandataerror_out    (),
  .gt2_eyescantrigger_in       (1'b0),
  .gt2_eyescanreset_in         (1'b0),

  // Tx Control
  .gt2_txpostcursor_in         (5'b00000),
  .gt2_txprecursor_in          (5'b00000),
  .gt2_txdiffctrl_in           (4'b1000),
  .gt2_txpolarity_in           (1'b0),
  .gt2_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt2_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt2_txpcsreset_in          (1'b0),
  .gt2_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt2_txbufstatus_out        (),

  // Rx CDR Ports
  .gt2_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt2_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt2_rxprbserr_out          (),
  .gt2_rxprbssel_in           (3'b0),
  .gt2_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt2_rxbufreset_in          (1'b0),
  .gt2_rxbufstatus_out        (),
  .gt2_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt2_rxbyteisaligned_out    (),
  .gt2_rxbyterealign_out      (),
  .gt2_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt2_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt2_rxpcsreset_in          (1'b0),
  .gt2_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt2_rxlpmen_in             (1'b1),
  .gt2_rxdfelpmreset_in       (1'b0),
  .gt2_rxmonitorout_out       (),
  .gt2_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt3_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt3_txresetdone_out         (),
  .gt3_rxresetdone_out         (),

  .gt3_cplllock_out            (),

  // Power Down Ports
  .gt3_rxpd_in                 (2'b00),
  .gt3_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt3_eyescandataerror_out    (),
  .gt3_eyescantrigger_in       (1'b0),
  .gt3_eyescanreset_in         (1'b0),

  // Tx Control
  .gt3_txpostcursor_in         (5'b00000),
  .gt3_txprecursor_in          (5'b00000),
  .gt3_txdiffctrl_in           (4'b1000),
  .gt3_txpolarity_in           (1'b0),
  .gt3_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt3_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt3_txpcsreset_in          (1'b0),
  .gt3_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt3_txbufstatus_out        (),

  // Rx CDR Ports
  .gt3_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt3_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt3_rxprbserr_out          (),
  .gt3_rxprbssel_in           (3'b0),
  .gt3_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt3_rxbufreset_in          (1'b0),
  .gt3_rxbufstatus_out        (),
  .gt3_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt3_rxbyteisaligned_out    (),
  .gt3_rxbyterealign_out      (),
  .gt3_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt3_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt3_rxpcsreset_in          (1'b0),
  .gt3_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt3_rxlpmen_in             (1'b1),
  .gt3_rxdfelpmreset_in       (1'b0),
  .gt3_rxmonitorout_out       (),
  .gt3_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt4_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt4_txresetdone_out         (),
  .gt4_rxresetdone_out         (),

  .gt4_cplllock_out            (),

  // Power Down Ports
  .gt4_rxpd_in                 (2'b00),
  .gt4_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt4_eyescandataerror_out    (),
  .gt4_eyescantrigger_in       (1'b0),
  .gt4_eyescanreset_in         (1'b0),

  // Tx Control
  .gt4_txpostcursor_in         (5'b00000),
  .gt4_txprecursor_in          (5'b00000),
  .gt4_txdiffctrl_in           (4'b1000),
  .gt4_txpolarity_in           (1'b0),
  .gt4_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt4_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt4_txpcsreset_in          (1'b0),
  .gt4_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt4_txbufstatus_out        (),

  // Rx CDR Ports
  .gt4_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt4_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt4_rxprbserr_out          (),
  .gt4_rxprbssel_in           (3'b0),
  .gt4_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt4_rxbufreset_in          (1'b0),
  .gt4_rxbufstatus_out        (),
  .gt4_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt4_rxbyteisaligned_out    (),
  .gt4_rxbyterealign_out      (),
  .gt4_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt4_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt4_rxpcsreset_in          (1'b0),
  .gt4_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt4_rxlpmen_in             (1'b1),
  .gt4_rxdfelpmreset_in       (1'b0),
  .gt4_rxmonitorout_out       (),
  .gt4_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt5_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt5_txresetdone_out         (),
  .gt5_rxresetdone_out         (),

  .gt5_cplllock_out            (),

  // Power Down Ports
  .gt5_rxpd_in                 (2'b00),
  .gt5_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt5_eyescandataerror_out    (),
  .gt5_eyescantrigger_in       (1'b0),
  .gt5_eyescanreset_in         (1'b0),

  // Tx Control
  .gt5_txpostcursor_in         (5'b00000),
  .gt5_txprecursor_in          (5'b00000),
  .gt5_txdiffctrl_in           (4'b1000),
  .gt5_txpolarity_in           (1'b0),
  .gt5_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt5_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt5_txpcsreset_in          (1'b0),
  .gt5_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt5_txbufstatus_out        (),

  // Rx CDR Ports
  .gt5_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt5_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt5_rxprbserr_out          (),
  .gt5_rxprbssel_in           (3'b0),
  .gt5_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt5_rxbufreset_in          (1'b0),
  .gt5_rxbufstatus_out        (),
  .gt5_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt5_rxbyteisaligned_out    (),
  .gt5_rxbyterealign_out      (),
  .gt5_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt5_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt5_rxpcsreset_in          (1'b0),
  .gt5_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt5_rxlpmen_in             (1'b1),
  .gt5_rxdfelpmreset_in       (1'b0),
  .gt5_rxmonitorout_out       (),
  .gt5_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt6_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt6_txresetdone_out         (),
  .gt6_rxresetdone_out         (),

  .gt6_cplllock_out            (),

  // Power Down Ports
  .gt6_rxpd_in                 (2'b00),
  .gt6_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt6_eyescandataerror_out    (),
  .gt6_eyescantrigger_in       (1'b0),
  .gt6_eyescanreset_in         (1'b0),

  // Tx Control
  .gt6_txpostcursor_in         (5'b00000),
  .gt6_txprecursor_in          (5'b00000),
  .gt6_txdiffctrl_in           (4'b1000),
  .gt6_txpolarity_in           (1'b0),
  .gt6_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt6_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt6_txpcsreset_in          (1'b0),
  .gt6_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt6_txbufstatus_out        (),

  // Rx CDR Ports
  .gt6_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt6_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt6_rxprbserr_out          (),
  .gt6_rxprbssel_in           (3'b0),
  .gt6_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt6_rxbufreset_in          (1'b0),
  .gt6_rxbufstatus_out        (),
  .gt6_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt6_rxbyteisaligned_out    (),
  .gt6_rxbyterealign_out      (),
  .gt6_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt6_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt6_rxpcsreset_in          (1'b0),
  .gt6_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt6_rxlpmen_in             (1'b1),
  .gt6_rxdfelpmreset_in       (1'b0),
  .gt6_rxmonitorout_out       (),
  .gt6_rxmonitorsel_in        (2'b0),

  // Loopback
  .gt7_loopback_in             (3'b000),

  // GT Reset Done Outputs
  .gt7_txresetdone_out         (),
  .gt7_rxresetdone_out         (),

  .gt7_cplllock_out            (),

  // Power Down Ports
  .gt7_rxpd_in                 (2'b00),
  .gt7_txpd_in                 (2'b00),

  // RX Margin Analysis Ports
  .gt7_eyescandataerror_out    (),
  .gt7_eyescantrigger_in       (1'b0),
  .gt7_eyescanreset_in         (1'b0),

  // Tx Control
  .gt7_txpostcursor_in         (5'b00000),
  .gt7_txprecursor_in          (5'b00000),
  .gt7_txdiffctrl_in           (4'b1000),
  .gt7_txpolarity_in           (1'b0),
  .gt7_txinhibit_in            (1'b0),

  // TX Pattern Checker ports
  .gt7_txprbsforceerr_in      (1'b0),

  // TX Initialization
  .gt7_txpcsreset_in          (1'b0),
  .gt7_txpmareset_in          (1'b0),

  // TX Buffer Ports
  .gt7_txbufstatus_out        (),

  // Rx CDR Ports
  .gt7_rxcdrhold_in           (1'b0),

  // Rx Polarity
  .gt7_rxpolarity_in          (1'b0),

  // Receive Ports - Pattern Checker ports
  .gt7_rxprbserr_out          (),
  .gt7_rxprbssel_in           (3'b0),
  .gt7_rxprbscntreset_in      (1'b0),

  // RX Buffer Bypass Ports
  .gt7_rxbufreset_in          (1'b0),
  .gt7_rxbufstatus_out        (),
  .gt7_rxstatus_out           (),

  // RX Byte and Word Alignment Ports
  .gt7_rxbyteisaligned_out    (),
  .gt7_rxbyterealign_out      (),
  .gt7_rxcommadet_out         (),

  // Digital Monitor Ports
  .gt7_dmonitorout_out        (),


  // RX Initialization and Reset Ports
  .gt7_rxpcsreset_in          (1'b0),
  .gt7_rxpmareset_in          (1'b0),

  // Receive Ports - RX Equalizer Ports
  .gt7_rxlpmen_in             (1'b1),
  .gt7_rxdfelpmreset_in       (1'b0),
  .gt7_rxmonitorout_out       (),
  .gt7_rxmonitorsel_in        (2'b0),

  // Reset Inputs for each direction
  .tx_reset_gt             (tx_reset_gt),
  .rx_reset_gt             (tx_reset_gt),
  .tx_sys_reset            (tx_reset),
  .rx_sys_reset            (tx_reset),

  // Reset Done for each direction
  .tx_reset_done            (tx_reset_done),
  .rx_reset_done            (rx_reset_done),


  // GT Common 0 I/O
  .qpll_refclk              (refclk),
  .common0_qpll_lock_out    (common0_qpll_lock_i),
  .common0_qpll_refclk_out  (common0_qpll_refclk_i),
  .common0_qpll_clk_out     (common0_qpll_clk_i),
  .common1_qpll_lock_out    (common1_qpll_lock_i),
  .common1_qpll_refclk_out  (common1_qpll_refclk_i),
  .common1_qpll_clk_out     (common1_qpll_clk_i),

  .rxencommaalign          (1'b0), //If connecting with RX core use signal from RX JESD204

// Clocks
  .tx_core_clk             (tx_core_clk),
  .txoutclk                (txoutclk),

  .rx_core_clk             (tx_core_clk),
  .rxoutclk                (rxoutclk),

  .drpclk               (drpclk),
  
 
  .gt_prbssel              (gt_prbssel_i),
// DRP Ports
  .gt0_drpaddr             (9'd0),
  .gt0_drpdi               (16'd0),
  .gt0_drpen               (1'b0),
  .gt0_drpwe               (1'b0),
  .gt0_drpdo               (),
  .gt0_drprdy              (),

  .gt1_drpaddr             (9'd0),
  .gt1_drpdi               (16'd0),
  .gt1_drpen               (1'b0),
  .gt1_drpwe               (1'b0),
  .gt1_drpdo               (),
  .gt1_drprdy              (),

  .gt2_drpaddr             (9'd0),
  .gt2_drpdi               (16'd0),
  .gt2_drpen               (1'b0),
  .gt2_drpwe               (1'b0),
  .gt2_drpdo               (),
  .gt2_drprdy              (),

  .gt3_drpaddr             (9'd0),
  .gt3_drpdi               (16'd0),
  .gt3_drpen               (1'b0),
  .gt3_drpwe               (1'b0),
  .gt3_drpdo               (),
  .gt3_drprdy              (),

  .gt4_drpaddr             (9'd0),
  .gt4_drpdi               (16'd0),
  .gt4_drpen               (1'b0),
  .gt4_drpwe               (1'b0),
  .gt4_drpdo               (),
  .gt4_drprdy              (),

  .gt5_drpaddr             (9'd0),
  .gt5_drpdi               (16'd0),
  .gt5_drpen               (1'b0),
  .gt5_drpwe               (1'b0),
  .gt5_drpdo               (),
  .gt5_drprdy              (),

  .gt6_drpaddr             (9'd0),
  .gt6_drpdi               (16'd0),
  .gt6_drpen               (1'b0),
  .gt6_drpwe               (1'b0),
  .gt6_drpdo               (),
  .gt6_drprdy              (),

  .gt7_drpaddr             (9'd0),
  .gt7_drpdi               (16'd0),
  .gt7_drpen               (1'b0),
  .gt7_drpwe               (1'b0),
  .gt7_drpdo               (),
  .gt7_drprdy              (),

  // Tx Ports
  // Lane 0
  .gt0_txdata              (gt0_txdata),
  .gt0_txcharisk           (gt0_txcharisk),

  // Lane 1
  .gt1_txdata              (gt1_txdata),
  .gt1_txcharisk           (gt1_txcharisk),

  // Lane 2
  .gt2_txdata              (gt2_txdata),
  .gt2_txcharisk           (gt2_txcharisk),

  // Lane 3
  .gt3_txdata              (gt3_txdata),
  .gt3_txcharisk           (gt3_txcharisk),

  // Lane 4
  .gt4_txdata              (gt4_txdata),
  .gt4_txcharisk           (gt4_txcharisk),

  // Lane 5
  .gt5_txdata              (gt5_txdata),
  .gt5_txcharisk           (gt5_txcharisk),

  // Lane 6
  .gt6_txdata              (gt6_txdata),
  .gt6_txcharisk           (gt6_txcharisk),

  // Lane 7
  .gt7_txdata              (gt7_txdata),
  .gt7_txcharisk           (gt7_txcharisk),


  // Rx Ports
  // Lane 0
  .gt0_rxdata              (gt0_rxdata),
  .gt0_rxcharisk           (gt0_rxcharisk),
  .gt0_rxdisperr           (gt0_rxdisperr),
  .gt0_rxnotintable        (gt0_rxnotintable),

  // Lane 1
  .gt1_rxdata              (gt1_rxdata),
  .gt1_rxcharisk           (gt1_rxcharisk),
  .gt1_rxdisperr           (gt1_rxdisperr),
  .gt1_rxnotintable        (gt1_rxnotintable),

  // Lane 2
  .gt2_rxdata              (gt2_rxdata),
  .gt2_rxcharisk           (gt2_rxcharisk),
  .gt2_rxdisperr           (gt2_rxdisperr),
  .gt2_rxnotintable        (gt2_rxnotintable),

  // Lane 3
  .gt3_rxdata              (gt3_rxdata),
  .gt3_rxcharisk           (gt3_rxcharisk),
  .gt3_rxdisperr           (gt3_rxdisperr),
  .gt3_rxnotintable        (gt3_rxnotintable),

  // Lane 4
  .gt4_rxdata              (gt4_rxdata),
  .gt4_rxcharisk           (gt4_rxcharisk),
  .gt4_rxdisperr           (gt4_rxdisperr),
  .gt4_rxnotintable        (gt4_rxnotintable),

  // Lane 5
  .gt5_rxdata              (gt5_rxdata),
  .gt5_rxcharisk           (gt5_rxcharisk),
  .gt5_rxdisperr           (gt5_rxdisperr),
  .gt5_rxnotintable        (gt5_rxnotintable),

  // Lane 6
  .gt6_rxdata              (gt6_rxdata),
  .gt6_rxcharisk           (gt6_rxcharisk),
  .gt6_rxdisperr           (gt6_rxdisperr),
  .gt6_rxnotintable        (gt6_rxnotintable),

  // Lane 7
  .gt7_rxdata              (gt7_rxdata),
  .gt7_rxcharisk           (gt7_rxcharisk),
  .gt7_rxdisperr           (gt7_rxdisperr),
  .gt7_rxnotintable        (gt7_rxnotintable),


  // Serial ports
  .rxn_in                  (8'b0),
  .rxp_in                  (8'b0),
  .txn_out                 (txn),
  .txp_out                 (txp)

);

  //Assign common PLL signals to output ports for sharing
  assign  common0_pll_clk_out     =  common0_qpll_clk_i;
  assign  common0_pll_refclk_out  =  common0_qpll_refclk_i;
  assign  common0_pll_lock_out    =  common0_qpll_lock_i;
  assign  common1_pll_clk_out     =  common1_qpll_clk_i;
  assign  common1_pll_refclk_out  =  common1_qpll_refclk_i;
  assign  common1_pll_lock_out    =  common1_qpll_lock_i;
  
always @(posedge tx_core_clk)
begin
    if(  gt0_txdata == 32'hBCBCBCBC )
        dac_status  <=  1'b1    ;
    else 
        dac_status  <=  1'b0    ;
end
  
  

endmodule
