//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Mar 31 09:38:45 2022
//Host        : DESKTOP-I14PMUS running 64-bit major release  (build 9200)
//Command     : generate_target ADC_wrapper.bd
//Design      : ADC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADC_wrapper
   (adc_clk,
    adc_lmx2952_cs,
    adc_lmx2952_sclk,
    adc_lmx2952_sdio,
    adc_lmx2952_sdo,
    adc_sync,
    clk_100m,
    config_done,
    cs_n,
    jesd204b_rstp,
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
    sysref);
  input adc_clk;
  output [0:0]adc_lmx2952_cs;
  output adc_lmx2952_sclk;
  output adc_lmx2952_sdio;
  input adc_lmx2952_sdo;
  input [0:0]adc_sync;
  input clk_100m;
  output [1:0]config_done;
  output cs_n;
  output jesd204b_rstp;
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

  wire adc_clk;
  wire [0:0]adc_lmx2952_cs;
  wire adc_lmx2952_sclk;
  wire adc_lmx2952_sdio;
  wire adc_lmx2952_sdo;
  wire [0:0]adc_sync;
  wire clk_100m;
  wire [1:0]config_done;
  wire cs_n;
  wire jesd204b_rstp;
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

  ADC ADC_i
       (.adc_clk(adc_clk),
        .adc_lmx2952_cs(adc_lmx2952_cs),
        .adc_lmx2952_sclk(adc_lmx2952_sclk),
        .adc_lmx2952_sdio(adc_lmx2952_sdio),
        .adc_lmx2952_sdo(adc_lmx2952_sdo),
        .adc_sync(adc_sync),
        .clk_100m(clk_100m),
        .config_done(config_done),
        .cs_n(cs_n),
        .jesd204b_rstp(jesd204b_rstp),
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
        .sysref(sysref));
endmodule
