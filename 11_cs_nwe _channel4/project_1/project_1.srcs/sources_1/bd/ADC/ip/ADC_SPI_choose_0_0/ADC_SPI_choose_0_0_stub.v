// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 26 17:17:04 2022
// Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/work_panyanjiao/37_YTH2/new_2/pro/ad/project_vivado18.3_YTH2_AD_0825/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_SPI_choose_0_0/ADC_SPI_choose_0_0_stub.v
// Design      : ADC_SPI_choose_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPI_choose,Vivado 2018.3" *)
module ADC_SPI_choose_0_0(vio_en, sclk_sdk, csn_sdk, sdi_sdk, sclk_spi, 
  csn_spi, sdi_spi, sdi, sclk, csn)
/* synthesis syn_black_box black_box_pad_pin="vio_en,sclk_sdk,csn_sdk,sdi_sdk,sclk_spi,csn_spi,sdi_spi,sdi,sclk,csn" */;
  input vio_en;
  input sclk_sdk;
  input csn_sdk;
  input sdi_sdk;
  input sclk_spi;
  input csn_spi;
  input sdi_spi;
  output sdi;
  output sclk;
  output csn;
endmodule
