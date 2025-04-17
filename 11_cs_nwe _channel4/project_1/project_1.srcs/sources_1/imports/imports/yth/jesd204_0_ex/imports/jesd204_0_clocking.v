//----------------------------------------------------------------------------
// Title : Clocking
// Project : JESD204
//----------------------------------------------------------------------------
// File : jesd204_clocking.v
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
// transceiver_type = GTHE2
// use_glblclk      = true
// c_supportlevel   = 0
//


`timescale 1ns / 1ps
//***********************************Entity Declaration*******************************

module jesd204_0_clocking
(
  input  wire     refclk1_pad_n,
  input  wire     refclk1_pad_p,
  input  wire     refclk2_pad_n,
  input  wire     refclk2_pad_p,
  input  wire     refclk3_pad_n,
  input  wire     refclk3_pad_p,
  input  wire     refclk4_pad_n,
  input  wire     refclk4_pad_p,
  
  output wire     refclk1      ,
  output wire     refclk2      ,
  output wire     refclk3      ,
  output wire     refclk4      ,
    
  input  wire     glblclk_pad_n,
  input  wire     glblclk_pad_p,
  

  output          coreclk
);

//*********************************Wire Declarations**********************************
  wire            tied_to_ground_i;
  wire            tied_to_vcc_i;
  wire            refclk1_i;
  wire            refclk2_i;
  wire            refclk3_i;
  wire            refclk4_i;
  wire            coreclk_i;

  wire            glblclk_i;
  wire            glblclk_buf;

  //*********************************** Beginning of Code *******************************

  //  Static signal Assigments
  assign tied_to_ground_i    = 1'b0;
  assign tied_to_vcc_i       = 1'b1;
  
   
    
    gt_clk u_gtglb_clk
   (
    // Clock out ports
    .clk_out1(glblclk_buf),     // output clk_out1  250M
    // Status and control signals
    .reset(1'b0), // input reset
    .locked(),       // output locked
   // Clock in ports
    .clk_in1_p(glblclk_pad_p),    // input clk_in1_p
    .clk_in1_n(glblclk_pad_n));    // input clk_in1_n


IBUFDS_GTE2 ibufds_refclk1
  (
    .O               (refclk1_i),
    .ODIV2           (),
    .CEB             (tied_to_ground_i),
    .I               (refclk1_pad_p),
    .IB              (refclk1_pad_n)
  );
  
  IBUFDS_GTE2 ibufds_refclk2
  (
    .O               (refclk2_i),
    .ODIV2           (),
    .CEB             (tied_to_ground_i),
    .I               (refclk2_pad_p),
    .IB              (refclk2_pad_n)
  );
  
  IBUFDS_GTE2 ibufds_refclk3
  (
    .O               (refclk3_i),
    .ODIV2           (),
    .CEB             (tied_to_ground_i),
    .I               (refclk3_pad_p),
    .IB              (refclk3_pad_n)
  );
  
  IBUFDS_GTE2 ibufds_refclk4
  (
    .O               (refclk4_i),
    .ODIV2           (),
    .CEB             (tied_to_ground_i),
    .I               (refclk4_pad_p),
    .IB              (refclk4_pad_n)
  );

//  IBUFDS i_glblclk_ibufds (
//    .I  (glblclk_pad_p),
//    .IB (glblclk_pad_n),
//    .O  (glblclk_i)
//  );
//
//  BUFG glbl_bufg_i
//  (
//    .O (glblclk_buf),
//    .I (glblclk_i)
//  );

  assign refclk1  = refclk1_i;
  assign refclk2  = refclk2_i;
  assign refclk3  = refclk3_i;
  assign refclk4  = refclk4_i;
  assign coreclk = glblclk_buf;   //coreclk Ϊ250M

endmodule
