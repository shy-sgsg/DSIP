-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:jesd204:7.2
-- IP Revision: 4

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT jesd204_0
  PORT (
    gt0_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt0_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt0_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt0_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt1_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt1_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt1_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt1_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt2_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt2_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt2_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt2_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt3_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt3_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt3_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt3_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt4_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt4_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt4_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt4_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt5_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt5_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt5_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt5_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt6_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt6_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt6_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt6_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt7_rxdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gt7_rxcharisk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt7_rxdisperr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gt7_rxnotintable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_reset_done : IN STD_LOGIC;
    rxencommaalign_out : OUT STD_LOGIC;
    rx_reset_gt : OUT STD_LOGIC;
    rx_core_clk : IN STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    rx_reset : IN STD_LOGIC;
    rx_aresetn : OUT STD_LOGIC;
    rx_tdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    rx_tvalid : OUT STD_LOGIC;
    rx_start_of_frame : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_end_of_frame : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_start_of_multiframe : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_end_of_multiframe : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_frame_error : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rx_sysref : IN STD_LOGIC;
    rx_sync : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : jesd204_0
  PORT MAP (
    gt0_rxdata => gt0_rxdata,
    gt0_rxcharisk => gt0_rxcharisk,
    gt0_rxdisperr => gt0_rxdisperr,
    gt0_rxnotintable => gt0_rxnotintable,
    gt1_rxdata => gt1_rxdata,
    gt1_rxcharisk => gt1_rxcharisk,
    gt1_rxdisperr => gt1_rxdisperr,
    gt1_rxnotintable => gt1_rxnotintable,
    gt2_rxdata => gt2_rxdata,
    gt2_rxcharisk => gt2_rxcharisk,
    gt2_rxdisperr => gt2_rxdisperr,
    gt2_rxnotintable => gt2_rxnotintable,
    gt3_rxdata => gt3_rxdata,
    gt3_rxcharisk => gt3_rxcharisk,
    gt3_rxdisperr => gt3_rxdisperr,
    gt3_rxnotintable => gt3_rxnotintable,
    gt4_rxdata => gt4_rxdata,
    gt4_rxcharisk => gt4_rxcharisk,
    gt4_rxdisperr => gt4_rxdisperr,
    gt4_rxnotintable => gt4_rxnotintable,
    gt5_rxdata => gt5_rxdata,
    gt5_rxcharisk => gt5_rxcharisk,
    gt5_rxdisperr => gt5_rxdisperr,
    gt5_rxnotintable => gt5_rxnotintable,
    gt6_rxdata => gt6_rxdata,
    gt6_rxcharisk => gt6_rxcharisk,
    gt6_rxdisperr => gt6_rxdisperr,
    gt6_rxnotintable => gt6_rxnotintable,
    gt7_rxdata => gt7_rxdata,
    gt7_rxcharisk => gt7_rxcharisk,
    gt7_rxdisperr => gt7_rxdisperr,
    gt7_rxnotintable => gt7_rxnotintable,
    rx_reset_done => rx_reset_done,
    rxencommaalign_out => rxencommaalign_out,
    rx_reset_gt => rx_reset_gt,
    rx_core_clk => rx_core_clk,
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awready => s_axi_awready,
    s_axi_wdata => s_axi_wdata,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wready => s_axi_wready,
    s_axi_bresp => s_axi_bresp,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_bready => s_axi_bready,
    s_axi_araddr => s_axi_araddr,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_arready => s_axi_arready,
    s_axi_rdata => s_axi_rdata,
    s_axi_rresp => s_axi_rresp,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rready => s_axi_rready,
    rx_reset => rx_reset,
    rx_aresetn => rx_aresetn,
    rx_tdata => rx_tdata,
    rx_tvalid => rx_tvalid,
    rx_start_of_frame => rx_start_of_frame,
    rx_end_of_frame => rx_end_of_frame,
    rx_start_of_multiframe => rx_start_of_multiframe,
    rx_end_of_multiframe => rx_end_of_multiframe,
    rx_frame_error => rx_frame_error,
    rx_sysref => rx_sysref,
    rx_sync => rx_sync
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file jesd204_0.vhd when simulating
-- the core, jesd204_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

