//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Dec 26 14:55:32 2024
//Host        : DESKTOP-8PN6IMS running 64-bit major release  (build 9200)
//Command     : generate_target ADC_wrapper.bd
//Design      : ADC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADC_wrapper
   (ada16d6000_1_csn,
    ada16d6000_1_rst,
    ada16d6000_1_sclk,
    ada16d6000_1_sdio,
    ada16d6000_1_sdo,
    adc1_cs_n,
    adc1_miso,
    adc1_mosi,
    adc1_rst,
    adc1_sclk,
    adc2_cs,
    adc2_miso,
    adc2_mosi,
    adc2_rst,
    adc2_sclk,
    adc3_cs,
    adc3_miso,
    adc3_mosi,
    adc3_rst,
    adc3_sclk,
    adc_clk,
    adc_lmx2952_cs,
    adc_lmx2952_sclk,
    adc_lmx2952_sdio,
    adc_lmx2952_sdo,
    adc_sync,
    clk_100m,
    config_done,
    cs_n,
    dac_lmx2592_csn,
    dac_lmx2592_sclk,
    dac_lmx2592_sdio,
    dac_lmx2592_sdo,
    dac_status,
    jesd204b_rstp,
    jesd_rst_p,
    jesd_sysref_rst,
    lmk04828_cs,
    lmk04828_gpo,
    lmk04828_ld,
    lmk04828_sclk,
    lmk04828_sdio,
    lmk04828_sdo,
    lmk04828_switch,
    lmk04828_sync,
    miso,
    mosi,
    rst_spi,
    sclk,
    sdk_reset,
    sysref,
    sysref_div,
    sysref_num);
  output [0:0]ada16d6000_1_csn;
  output [0:0]ada16d6000_1_rst;
  output ada16d6000_1_sclk;
  output ada16d6000_1_sdio;
  input ada16d6000_1_sdo;
  output adc1_cs_n;
  input adc1_miso;
  output adc1_mosi;
  output adc1_rst;
  output adc1_sclk;
  output adc2_cs;
  input adc2_miso;
  output adc2_mosi;
  output adc2_rst;
  output adc2_sclk;
  output adc3_cs;
  input adc3_miso;
  output adc3_mosi;
  output adc3_rst;
  output adc3_sclk;
  input adc_clk;
  output [0:0]adc_lmx2952_cs;
  output adc_lmx2952_sclk;
  output adc_lmx2952_sdio;
  input adc_lmx2952_sdo;
  input [0:0]adc_sync;
  input clk_100m;
  output [1:0]config_done;
  output cs_n;
  output [0:0]dac_lmx2592_csn;
  output dac_lmx2592_sclk;
  output dac_lmx2592_sdio;
  input dac_lmx2592_sdo;
  input [0:0]dac_status;
  output jesd204b_rstp;
  output [0:0]jesd_rst_p;
  output [0:0]jesd_sysref_rst;
  output [0:0]lmk04828_cs;
  output [0:0]lmk04828_gpo;
  input [1:0]lmk04828_ld;
  output lmk04828_sclk;
  output lmk04828_sdio;
  input lmk04828_sdo;
  output [0:0]lmk04828_switch;
  output [0:0]lmk04828_sync;
  input miso;
  output mosi;
  output rst_spi;
  output sclk;
  input sdk_reset;
  output sysref;
  output [7:0]sysref_div;
  output [7:0]sysref_num;

  wire [0:0]ada16d6000_1_csn;
  wire [0:0]ada16d6000_1_rst;
  wire ada16d6000_1_sclk;
  wire ada16d6000_1_sdio;
  wire ada16d6000_1_sdo;
  wire adc1_cs_n;
  wire adc1_miso;
  wire adc1_mosi;
  wire adc1_rst;
  wire adc1_sclk;
  wire adc2_cs;
  wire adc2_miso;
  wire adc2_mosi;
  wire adc2_rst;
  wire adc2_sclk;
  wire adc3_cs;
  wire adc3_miso;
  wire adc3_mosi;
  wire adc3_rst;
  wire adc3_sclk;
  wire adc_clk;
  wire [0:0]adc_lmx2952_cs;
  wire adc_lmx2952_sclk;
  wire adc_lmx2952_sdio;
  wire adc_lmx2952_sdo;
  wire [0:0]adc_sync;
  wire clk_100m;
  wire [1:0]config_done;
  wire cs_n;
  wire [0:0]dac_lmx2592_csn;
  wire dac_lmx2592_sclk;
  wire dac_lmx2592_sdio;
  wire dac_lmx2592_sdo;
  wire [0:0]dac_status;
  wire jesd204b_rstp;
  wire [0:0]jesd_rst_p;
  wire [0:0]jesd_sysref_rst;
  wire [0:0]lmk04828_cs;
  wire [0:0]lmk04828_gpo;
  wire [1:0]lmk04828_ld;
  wire lmk04828_sclk;
  wire lmk04828_sdio;
  wire lmk04828_sdo;
  wire [0:0]lmk04828_switch;
  wire [0:0]lmk04828_sync;
  wire miso;
  wire mosi;
  wire rst_spi;
  wire sclk;
  wire sdk_reset;
  wire sysref;
  wire [7:0]sysref_div;
  wire [7:0]sysref_num;

  ADC ADC_i
       (.ada16d6000_1_csn(ada16d6000_1_csn),
        .ada16d6000_1_rst(ada16d6000_1_rst),
        .ada16d6000_1_sclk(ada16d6000_1_sclk),
        .ada16d6000_1_sdio(ada16d6000_1_sdio),
        .ada16d6000_1_sdo(ada16d6000_1_sdo),
        .adc1_cs_n(adc1_cs_n),
        .adc1_miso(adc1_miso),
        .adc1_mosi(adc1_mosi),
        .adc1_rst(adc1_rst),
        .adc1_sclk(adc1_sclk),
        .adc2_cs(adc2_cs),
        .adc2_miso(adc2_miso),
        .adc2_mosi(adc2_mosi),
        .adc2_rst(adc2_rst),
        .adc2_sclk(adc2_sclk),
        .adc3_cs(adc3_cs),
        .adc3_miso(adc3_miso),
        .adc3_mosi(adc3_mosi),
        .adc3_rst(adc3_rst),
        .adc3_sclk(adc3_sclk),
        .adc_clk(adc_clk),
        .adc_lmx2952_cs(adc_lmx2952_cs),
        .adc_lmx2952_sclk(adc_lmx2952_sclk),
        .adc_lmx2952_sdio(adc_lmx2952_sdio),
        .adc_lmx2952_sdo(adc_lmx2952_sdo),
        .adc_sync(adc_sync),
        .clk_100m(clk_100m),
        .config_done(config_done),
        .cs_n(cs_n),
        .dac_lmx2592_csn(dac_lmx2592_csn),
        .dac_lmx2592_sclk(dac_lmx2592_sclk),
        .dac_lmx2592_sdio(dac_lmx2592_sdio),
        .dac_lmx2592_sdo(dac_lmx2592_sdo),
        .dac_status(dac_status),
        .jesd204b_rstp(jesd204b_rstp),
        .jesd_rst_p(jesd_rst_p),
        .jesd_sysref_rst(jesd_sysref_rst),
        .lmk04828_cs(lmk04828_cs),
        .lmk04828_gpo(lmk04828_gpo),
        .lmk04828_ld(lmk04828_ld),
        .lmk04828_sclk(lmk04828_sclk),
        .lmk04828_sdio(lmk04828_sdio),
        .lmk04828_sdo(lmk04828_sdo),
        .lmk04828_switch(lmk04828_switch),
        .lmk04828_sync(lmk04828_sync),
        .miso(miso),
        .mosi(mosi),
        .rst_spi(rst_spi),
        .sclk(sclk),
        .sdk_reset(sdk_reset),
        .sysref(sysref),
        .sysref_div(sysref_div),
        .sysref_num(sysref_num));
endmodule
