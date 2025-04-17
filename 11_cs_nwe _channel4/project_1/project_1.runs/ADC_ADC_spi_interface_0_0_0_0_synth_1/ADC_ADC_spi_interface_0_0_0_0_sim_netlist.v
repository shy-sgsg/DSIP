// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 26 17:17:49 2022
// Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_ADC_spi_interface_0_0_0_0_sim_netlist.v
// Design      : ADC_ADC_spi_interface_0_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADC_ADC_spi_interface_0_0_0_0,ADC_spi_interface_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_spi_interface_0_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk,
    addr,
    data_in,
    data_out,
    ready,
    busy,
    sclk,
    cs_n,
    mosi,
    miso);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, CLK_DOMAIN ADC_slowest_sync_clk_0" *) input clk;
  input [15:0]addr;
  input [15:0]data_in;
  output [15:0]data_out;
  input ready;
  output busy;
  output sclk;
  output cs_n;
  output mosi;
  input miso;

  wire [15:0]addr;
  wire busy;
  wire clk;
  wire cs_n;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire miso;
  wire mosi;
  wire ready;
  wire rst;
  wire sclk;

  (* X_CORE_INFO = "spi_interface,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_spi_interface_0_0 inst
       (.addr(addr),
        .busy(busy),
        .clk(clk),
        .cs_n(cs_n),
        .data_in(data_in),
        .data_out(data_out),
        .miso(miso),
        .mosi(mosi),
        .ready(ready),
        .rst(rst),
        .sclk(sclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_spi_interface_0_0
   (busy,
    data_out,
    cs_n,
    mosi,
    sclk,
    ready,
    clk,
    miso,
    rst,
    data_in,
    addr);
  output busy;
  output [15:0]data_out;
  output cs_n;
  output mosi;
  output sclk;
  input ready;
  input clk;
  input miso;
  input rst;
  input [15:0]data_in;
  input [15:0]addr;

  wire [15:0]addr;
  wire busy;
  wire clk;
  wire cs_n;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire miso;
  wire mosi;
  wire ready;
  wire rst;
  wire sclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface inst
       (.addr(addr),
        .busy(busy),
        .clk(clk),
        .cs_n(cs_n),
        .data_in(data_in),
        .data_out(data_out),
        .miso(miso),
        .mosi(mosi),
        .ready(ready),
        .rst(rst),
        .sclk(sclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface
   (busy,
    data_out,
    cs_n,
    mosi,
    sclk,
    ready,
    clk,
    miso,
    rst,
    data_in,
    addr);
  output busy;
  output [15:0]data_out;
  output cs_n;
  output mosi;
  output sclk;
  input ready;
  input clk;
  input miso;
  input rst;
  input [15:0]data_in;
  input [15:0]addr;

  wire [15:0]addr;
  wire busy;
  wire clk;
  wire [31:31]cnt_clk;
  wire cnt_clk1_carry__0_i_1_n_0;
  wire cnt_clk1_carry__0_i_2_n_0;
  wire cnt_clk1_carry__0_i_3_n_0;
  wire cnt_clk1_carry__0_i_4_n_0;
  wire cnt_clk1_carry__0_n_0;
  wire cnt_clk1_carry__0_n_1;
  wire cnt_clk1_carry__0_n_2;
  wire cnt_clk1_carry__0_n_3;
  wire cnt_clk1_carry__1_i_1_n_0;
  wire cnt_clk1_carry__1_i_2_n_0;
  wire cnt_clk1_carry__1_i_3_n_0;
  wire cnt_clk1_carry__1_i_4_n_0;
  wire cnt_clk1_carry__1_n_0;
  wire cnt_clk1_carry__1_n_1;
  wire cnt_clk1_carry__1_n_2;
  wire cnt_clk1_carry__1_n_3;
  wire cnt_clk1_carry__2_i_1_n_0;
  wire cnt_clk1_carry__2_i_2_n_0;
  wire cnt_clk1_carry__2_i_3_n_0;
  wire cnt_clk1_carry__2_i_4_n_0;
  wire cnt_clk1_carry__2_n_0;
  wire cnt_clk1_carry__2_n_1;
  wire cnt_clk1_carry__2_n_2;
  wire cnt_clk1_carry__2_n_3;
  wire cnt_clk1_carry_i_1_n_0;
  wire cnt_clk1_carry_i_2_n_0;
  wire cnt_clk1_carry_i_3_n_0;
  wire cnt_clk1_carry_i_4_n_0;
  wire cnt_clk1_carry_i_5_n_0;
  wire cnt_clk1_carry_i_6_n_0;
  wire cnt_clk1_carry_i_7_n_0;
  wire cnt_clk1_carry_n_0;
  wire cnt_clk1_carry_n_1;
  wire cnt_clk1_carry_n_2;
  wire cnt_clk1_carry_n_3;
  wire \cnt_clk[0]_i_2_n_0 ;
  wire \cnt_clk[0]_i_3_n_0 ;
  wire \cnt_clk[0]_i_4_n_0 ;
  wire \cnt_clk[0]_i_5_n_0 ;
  wire \cnt_clk[12]_i_2_n_0 ;
  wire \cnt_clk[12]_i_3_n_0 ;
  wire \cnt_clk[12]_i_4_n_0 ;
  wire \cnt_clk[12]_i_5_n_0 ;
  wire \cnt_clk[16]_i_2_n_0 ;
  wire \cnt_clk[16]_i_3_n_0 ;
  wire \cnt_clk[16]_i_4_n_0 ;
  wire \cnt_clk[16]_i_5_n_0 ;
  wire \cnt_clk[20]_i_2_n_0 ;
  wire \cnt_clk[20]_i_3_n_0 ;
  wire \cnt_clk[20]_i_4_n_0 ;
  wire \cnt_clk[20]_i_5_n_0 ;
  wire \cnt_clk[24]_i_2_n_0 ;
  wire \cnt_clk[24]_i_3_n_0 ;
  wire \cnt_clk[24]_i_4_n_0 ;
  wire \cnt_clk[24]_i_5_n_0 ;
  wire \cnt_clk[28]_i_2_n_0 ;
  wire \cnt_clk[28]_i_3_n_0 ;
  wire \cnt_clk[28]_i_4_n_0 ;
  wire \cnt_clk[28]_i_5_n_0 ;
  wire \cnt_clk[4]_i_2_n_0 ;
  wire \cnt_clk[4]_i_3_n_0 ;
  wire \cnt_clk[4]_i_4_n_0 ;
  wire \cnt_clk[4]_i_5_n_0 ;
  wire \cnt_clk[8]_i_2_n_0 ;
  wire \cnt_clk[8]_i_3_n_0 ;
  wire \cnt_clk[8]_i_4_n_0 ;
  wire \cnt_clk[8]_i_5_n_0 ;
  wire [31:0]cnt_clk_reg;
  wire \cnt_clk_reg[0]_i_1_n_0 ;
  wire \cnt_clk_reg[0]_i_1_n_1 ;
  wire \cnt_clk_reg[0]_i_1_n_2 ;
  wire \cnt_clk_reg[0]_i_1_n_3 ;
  wire \cnt_clk_reg[0]_i_1_n_4 ;
  wire \cnt_clk_reg[0]_i_1_n_5 ;
  wire \cnt_clk_reg[0]_i_1_n_6 ;
  wire \cnt_clk_reg[0]_i_1_n_7 ;
  wire \cnt_clk_reg[12]_i_1_n_0 ;
  wire \cnt_clk_reg[12]_i_1_n_1 ;
  wire \cnt_clk_reg[12]_i_1_n_2 ;
  wire \cnt_clk_reg[12]_i_1_n_3 ;
  wire \cnt_clk_reg[12]_i_1_n_4 ;
  wire \cnt_clk_reg[12]_i_1_n_5 ;
  wire \cnt_clk_reg[12]_i_1_n_6 ;
  wire \cnt_clk_reg[12]_i_1_n_7 ;
  wire \cnt_clk_reg[16]_i_1_n_0 ;
  wire \cnt_clk_reg[16]_i_1_n_1 ;
  wire \cnt_clk_reg[16]_i_1_n_2 ;
  wire \cnt_clk_reg[16]_i_1_n_3 ;
  wire \cnt_clk_reg[16]_i_1_n_4 ;
  wire \cnt_clk_reg[16]_i_1_n_5 ;
  wire \cnt_clk_reg[16]_i_1_n_6 ;
  wire \cnt_clk_reg[16]_i_1_n_7 ;
  wire \cnt_clk_reg[20]_i_1_n_0 ;
  wire \cnt_clk_reg[20]_i_1_n_1 ;
  wire \cnt_clk_reg[20]_i_1_n_2 ;
  wire \cnt_clk_reg[20]_i_1_n_3 ;
  wire \cnt_clk_reg[20]_i_1_n_4 ;
  wire \cnt_clk_reg[20]_i_1_n_5 ;
  wire \cnt_clk_reg[20]_i_1_n_6 ;
  wire \cnt_clk_reg[20]_i_1_n_7 ;
  wire \cnt_clk_reg[24]_i_1_n_0 ;
  wire \cnt_clk_reg[24]_i_1_n_1 ;
  wire \cnt_clk_reg[24]_i_1_n_2 ;
  wire \cnt_clk_reg[24]_i_1_n_3 ;
  wire \cnt_clk_reg[24]_i_1_n_4 ;
  wire \cnt_clk_reg[24]_i_1_n_5 ;
  wire \cnt_clk_reg[24]_i_1_n_6 ;
  wire \cnt_clk_reg[24]_i_1_n_7 ;
  wire \cnt_clk_reg[28]_i_1_n_1 ;
  wire \cnt_clk_reg[28]_i_1_n_2 ;
  wire \cnt_clk_reg[28]_i_1_n_3 ;
  wire \cnt_clk_reg[28]_i_1_n_4 ;
  wire \cnt_clk_reg[28]_i_1_n_5 ;
  wire \cnt_clk_reg[28]_i_1_n_6 ;
  wire \cnt_clk_reg[28]_i_1_n_7 ;
  wire \cnt_clk_reg[4]_i_1_n_0 ;
  wire \cnt_clk_reg[4]_i_1_n_1 ;
  wire \cnt_clk_reg[4]_i_1_n_2 ;
  wire \cnt_clk_reg[4]_i_1_n_3 ;
  wire \cnt_clk_reg[4]_i_1_n_4 ;
  wire \cnt_clk_reg[4]_i_1_n_5 ;
  wire \cnt_clk_reg[4]_i_1_n_6 ;
  wire \cnt_clk_reg[4]_i_1_n_7 ;
  wire \cnt_clk_reg[8]_i_1_n_0 ;
  wire \cnt_clk_reg[8]_i_1_n_1 ;
  wire \cnt_clk_reg[8]_i_1_n_2 ;
  wire \cnt_clk_reg[8]_i_1_n_3 ;
  wire \cnt_clk_reg[8]_i_1_n_4 ;
  wire \cnt_clk_reg[8]_i_1_n_5 ;
  wire \cnt_clk_reg[8]_i_1_n_6 ;
  wire \cnt_clk_reg[8]_i_1_n_7 ;
  wire \cnt_num[0]_i_1_n_0 ;
  wire \cnt_num[0]_i_3_n_0 ;
  wire \cnt_num[0]_i_4_n_0 ;
  wire \cnt_num[0]_i_5_n_0 ;
  wire \cnt_num[0]_i_6_n_0 ;
  wire \cnt_num[0]_i_7_n_0 ;
  wire \cnt_num[12]_i_2_n_0 ;
  wire \cnt_num[12]_i_3_n_0 ;
  wire \cnt_num[12]_i_4_n_0 ;
  wire \cnt_num[12]_i_5_n_0 ;
  wire \cnt_num[16]_i_2_n_0 ;
  wire \cnt_num[16]_i_3_n_0 ;
  wire \cnt_num[16]_i_4_n_0 ;
  wire \cnt_num[16]_i_5_n_0 ;
  wire \cnt_num[20]_i_2_n_0 ;
  wire \cnt_num[20]_i_3_n_0 ;
  wire \cnt_num[20]_i_4_n_0 ;
  wire \cnt_num[20]_i_5_n_0 ;
  wire \cnt_num[24]_i_2_n_0 ;
  wire \cnt_num[24]_i_3_n_0 ;
  wire \cnt_num[24]_i_4_n_0 ;
  wire \cnt_num[24]_i_5_n_0 ;
  wire \cnt_num[28]_i_2_n_0 ;
  wire \cnt_num[28]_i_3_n_0 ;
  wire \cnt_num[28]_i_4_n_0 ;
  wire \cnt_num[28]_i_5_n_0 ;
  wire \cnt_num[4]_i_2_n_0 ;
  wire \cnt_num[4]_i_3_n_0 ;
  wire \cnt_num[4]_i_4_n_0 ;
  wire \cnt_num[4]_i_5_n_0 ;
  wire \cnt_num[8]_i_2_n_0 ;
  wire \cnt_num[8]_i_3_n_0 ;
  wire \cnt_num[8]_i_4_n_0 ;
  wire \cnt_num[8]_i_5_n_0 ;
  wire [31:0]cnt_num_reg;
  wire \cnt_num_reg[0]_i_2_n_0 ;
  wire \cnt_num_reg[0]_i_2_n_1 ;
  wire \cnt_num_reg[0]_i_2_n_2 ;
  wire \cnt_num_reg[0]_i_2_n_3 ;
  wire \cnt_num_reg[0]_i_2_n_4 ;
  wire \cnt_num_reg[0]_i_2_n_5 ;
  wire \cnt_num_reg[0]_i_2_n_6 ;
  wire \cnt_num_reg[0]_i_2_n_7 ;
  wire \cnt_num_reg[12]_i_1_n_0 ;
  wire \cnt_num_reg[12]_i_1_n_1 ;
  wire \cnt_num_reg[12]_i_1_n_2 ;
  wire \cnt_num_reg[12]_i_1_n_3 ;
  wire \cnt_num_reg[12]_i_1_n_4 ;
  wire \cnt_num_reg[12]_i_1_n_5 ;
  wire \cnt_num_reg[12]_i_1_n_6 ;
  wire \cnt_num_reg[12]_i_1_n_7 ;
  wire \cnt_num_reg[16]_i_1_n_0 ;
  wire \cnt_num_reg[16]_i_1_n_1 ;
  wire \cnt_num_reg[16]_i_1_n_2 ;
  wire \cnt_num_reg[16]_i_1_n_3 ;
  wire \cnt_num_reg[16]_i_1_n_4 ;
  wire \cnt_num_reg[16]_i_1_n_5 ;
  wire \cnt_num_reg[16]_i_1_n_6 ;
  wire \cnt_num_reg[16]_i_1_n_7 ;
  wire \cnt_num_reg[20]_i_1_n_0 ;
  wire \cnt_num_reg[20]_i_1_n_1 ;
  wire \cnt_num_reg[20]_i_1_n_2 ;
  wire \cnt_num_reg[20]_i_1_n_3 ;
  wire \cnt_num_reg[20]_i_1_n_4 ;
  wire \cnt_num_reg[20]_i_1_n_5 ;
  wire \cnt_num_reg[20]_i_1_n_6 ;
  wire \cnt_num_reg[20]_i_1_n_7 ;
  wire \cnt_num_reg[24]_i_1_n_0 ;
  wire \cnt_num_reg[24]_i_1_n_1 ;
  wire \cnt_num_reg[24]_i_1_n_2 ;
  wire \cnt_num_reg[24]_i_1_n_3 ;
  wire \cnt_num_reg[24]_i_1_n_4 ;
  wire \cnt_num_reg[24]_i_1_n_5 ;
  wire \cnt_num_reg[24]_i_1_n_6 ;
  wire \cnt_num_reg[24]_i_1_n_7 ;
  wire \cnt_num_reg[28]_i_1_n_1 ;
  wire \cnt_num_reg[28]_i_1_n_2 ;
  wire \cnt_num_reg[28]_i_1_n_3 ;
  wire \cnt_num_reg[28]_i_1_n_4 ;
  wire \cnt_num_reg[28]_i_1_n_5 ;
  wire \cnt_num_reg[28]_i_1_n_6 ;
  wire \cnt_num_reg[28]_i_1_n_7 ;
  wire \cnt_num_reg[4]_i_1_n_0 ;
  wire \cnt_num_reg[4]_i_1_n_1 ;
  wire \cnt_num_reg[4]_i_1_n_2 ;
  wire \cnt_num_reg[4]_i_1_n_3 ;
  wire \cnt_num_reg[4]_i_1_n_4 ;
  wire \cnt_num_reg[4]_i_1_n_5 ;
  wire \cnt_num_reg[4]_i_1_n_6 ;
  wire \cnt_num_reg[4]_i_1_n_7 ;
  wire \cnt_num_reg[8]_i_1_n_0 ;
  wire \cnt_num_reg[8]_i_1_n_1 ;
  wire \cnt_num_reg[8]_i_1_n_2 ;
  wire \cnt_num_reg[8]_i_1_n_3 ;
  wire \cnt_num_reg[8]_i_1_n_4 ;
  wire \cnt_num_reg[8]_i_1_n_5 ;
  wire \cnt_num_reg[8]_i_1_n_6 ;
  wire \cnt_num_reg[8]_i_1_n_7 ;
  wire cs_n;
  wire cs_n_i_1_n_0;
  wire current_state_i_10_n_0;
  wire current_state_i_2_n_0;
  wire current_state_i_3_n_0;
  wire current_state_i_4_n_0;
  wire current_state_i_5_n_0;
  wire current_state_i_6_n_0;
  wire current_state_i_7_n_0;
  wire current_state_i_8_n_0;
  wire current_state_i_9_n_0;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire [31:1]data_out1;
  wire data_out1__1;
  wire data_out3;
  wire data_out32_in;
  wire data_out3_carry__0_i_1_n_0;
  wire data_out3_carry__0_i_2_n_0;
  wire data_out3_carry__0_i_3_n_0;
  wire data_out3_carry__0_i_4_n_0;
  wire data_out3_carry__0_n_0;
  wire data_out3_carry__0_n_1;
  wire data_out3_carry__0_n_2;
  wire data_out3_carry__0_n_3;
  wire data_out3_carry__1_i_1_n_0;
  wire data_out3_carry__1_i_2_n_0;
  wire data_out3_carry__1_i_3_n_0;
  wire data_out3_carry__1_i_4_n_0;
  wire data_out3_carry__1_n_0;
  wire data_out3_carry__1_n_1;
  wire data_out3_carry__1_n_2;
  wire data_out3_carry__1_n_3;
  wire data_out3_carry__2_i_1_n_0;
  wire data_out3_carry__2_i_2_n_0;
  wire data_out3_carry__2_i_3_n_0;
  wire data_out3_carry__2_i_4_n_0;
  wire data_out3_carry__2_n_1;
  wire data_out3_carry__2_n_2;
  wire data_out3_carry__2_n_3;
  wire data_out3_carry_i_1_n_0;
  wire data_out3_carry_i_2_n_0;
  wire data_out3_carry_i_3_n_0;
  wire data_out3_carry_i_4_n_0;
  wire data_out3_carry_i_5_n_0;
  wire data_out3_carry_i_6_n_0;
  wire data_out3_carry_n_0;
  wire data_out3_carry_n_1;
  wire data_out3_carry_n_2;
  wire data_out3_carry_n_3;
  wire \data_out3_inferred__0/i__carry__0_n_0 ;
  wire \data_out3_inferred__0/i__carry__0_n_1 ;
  wire \data_out3_inferred__0/i__carry__0_n_2 ;
  wire \data_out3_inferred__0/i__carry__0_n_3 ;
  wire \data_out3_inferred__0/i__carry__1_n_0 ;
  wire \data_out3_inferred__0/i__carry__1_n_1 ;
  wire \data_out3_inferred__0/i__carry__1_n_2 ;
  wire \data_out3_inferred__0/i__carry__1_n_3 ;
  wire \data_out3_inferred__0/i__carry__2_n_1 ;
  wire \data_out3_inferred__0/i__carry__2_n_2 ;
  wire \data_out3_inferred__0/i__carry__2_n_3 ;
  wire \data_out3_inferred__0/i__carry_n_0 ;
  wire \data_out3_inferred__0/i__carry_n_1 ;
  wire \data_out3_inferred__0/i__carry_n_2 ;
  wire \data_out3_inferred__0/i__carry_n_3 ;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[15]_i_10_n_0 ;
  wire \data_out[15]_i_11_n_0 ;
  wire \data_out[15]_i_14_n_0 ;
  wire \data_out[15]_i_17_n_0 ;
  wire \data_out[15]_i_19_n_0 ;
  wire \data_out[15]_i_1_n_0 ;
  wire \data_out[15]_i_20_n_0 ;
  wire \data_out[15]_i_21_n_0 ;
  wire \data_out[15]_i_22_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[15]_i_5_n_0 ;
  wire \data_out[15]_i_6_n_0 ;
  wire \data_out[15]_i_7_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out_reg[15]_i_12_n_0 ;
  wire \data_out_reg[15]_i_12_n_1 ;
  wire \data_out_reg[15]_i_12_n_2 ;
  wire \data_out_reg[15]_i_12_n_3 ;
  wire \data_out_reg[15]_i_13_n_0 ;
  wire \data_out_reg[15]_i_13_n_1 ;
  wire \data_out_reg[15]_i_13_n_2 ;
  wire \data_out_reg[15]_i_13_n_3 ;
  wire \data_out_reg[15]_i_15_n_0 ;
  wire \data_out_reg[15]_i_15_n_1 ;
  wire \data_out_reg[15]_i_15_n_2 ;
  wire \data_out_reg[15]_i_15_n_3 ;
  wire \data_out_reg[15]_i_16_n_0 ;
  wire \data_out_reg[15]_i_16_n_1 ;
  wire \data_out_reg[15]_i_16_n_2 ;
  wire \data_out_reg[15]_i_16_n_3 ;
  wire \data_out_reg[15]_i_27_n_0 ;
  wire \data_out_reg[15]_i_27_n_1 ;
  wire \data_out_reg[15]_i_27_n_2 ;
  wire \data_out_reg[15]_i_27_n_3 ;
  wire \data_out_reg[15]_i_36_n_2 ;
  wire \data_out_reg[15]_i_36_n_3 ;
  wire \data_out_reg[15]_i_8_n_0 ;
  wire \data_out_reg[15]_i_8_n_1 ;
  wire \data_out_reg[15]_i_8_n_2 ;
  wire \data_out_reg[15]_i_8_n_3 ;
  wire \data_out_reg[15]_i_9_n_0 ;
  wire \data_out_reg[15]_i_9_n_1 ;
  wire \data_out_reg[15]_i_9_n_2 ;
  wire \data_out_reg[15]_i_9_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire miso;
  wire mosi;
  wire mosi_i_14_n_0;
  wire mosi_i_15_n_0;
  wire mosi_i_16_n_0;
  wire mosi_i_17_n_0;
  wire mosi_i_18_n_0;
  wire mosi_i_19_n_0;
  wire mosi_i_1_n_0;
  wire mosi_i_20_n_0;
  wire mosi_i_21_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_7_n_0;
  wire mosi_i_8_n_0;
  wire mosi_i_9_n_0;
  wire mosi_reg_i_3_n_7;
  wire mosi_reg_i_5_n_0;
  wire mosi_reg_i_5_n_1;
  wire mosi_reg_i_5_n_2;
  wire mosi_reg_i_5_n_3;
  wire mosi_reg_i_5_n_4;
  wire mosi_reg_i_5_n_5;
  wire mosi_reg_i_5_n_6;
  wire mosi_reg_i_5_n_7;
  wire next_state1_out;
  wire old_ready;
  wire [31:0]p_0_in;
  wire ready;
  wire rst;
  wire sclk;
  wire sclk_reg0_carry__0_i_1_n_0;
  wire sclk_reg0_carry__0_i_2_n_0;
  wire sclk_reg0_carry__0_i_3_n_0;
  wire sclk_reg0_carry__0_i_4_n_0;
  wire sclk_reg0_carry__0_i_5_n_0;
  wire sclk_reg0_carry__0_i_5_n_1;
  wire sclk_reg0_carry__0_i_5_n_2;
  wire sclk_reg0_carry__0_i_5_n_3;
  wire sclk_reg0_carry__0_i_5_n_4;
  wire sclk_reg0_carry__0_i_5_n_5;
  wire sclk_reg0_carry__0_i_5_n_6;
  wire sclk_reg0_carry__0_i_5_n_7;
  wire sclk_reg0_carry__0_i_6_n_0;
  wire sclk_reg0_carry__0_i_6_n_1;
  wire sclk_reg0_carry__0_i_6_n_2;
  wire sclk_reg0_carry__0_i_6_n_3;
  wire sclk_reg0_carry__0_i_6_n_4;
  wire sclk_reg0_carry__0_i_6_n_5;
  wire sclk_reg0_carry__0_i_6_n_6;
  wire sclk_reg0_carry__0_i_6_n_7;
  wire sclk_reg0_carry__0_n_0;
  wire sclk_reg0_carry__0_n_1;
  wire sclk_reg0_carry__0_n_2;
  wire sclk_reg0_carry__0_n_3;
  wire sclk_reg0_carry__1_i_1_n_0;
  wire sclk_reg0_carry__1_i_2_n_0;
  wire sclk_reg0_carry__1_i_3_n_0;
  wire sclk_reg0_carry__1_i_4_n_0;
  wire sclk_reg0_carry__1_i_5_n_0;
  wire sclk_reg0_carry__1_i_5_n_1;
  wire sclk_reg0_carry__1_i_5_n_2;
  wire sclk_reg0_carry__1_i_5_n_3;
  wire sclk_reg0_carry__1_i_5_n_4;
  wire sclk_reg0_carry__1_i_5_n_5;
  wire sclk_reg0_carry__1_i_5_n_6;
  wire sclk_reg0_carry__1_i_5_n_7;
  wire sclk_reg0_carry__1_i_6_n_0;
  wire sclk_reg0_carry__1_i_6_n_1;
  wire sclk_reg0_carry__1_i_6_n_2;
  wire sclk_reg0_carry__1_i_6_n_3;
  wire sclk_reg0_carry__1_i_6_n_4;
  wire sclk_reg0_carry__1_i_6_n_5;
  wire sclk_reg0_carry__1_i_6_n_6;
  wire sclk_reg0_carry__1_i_6_n_7;
  wire sclk_reg0_carry__1_n_0;
  wire sclk_reg0_carry__1_n_1;
  wire sclk_reg0_carry__1_n_2;
  wire sclk_reg0_carry__1_n_3;
  wire sclk_reg0_carry__2_i_2_n_0;
  wire sclk_reg0_carry__2_i_3_n_0;
  wire sclk_reg0_carry__2_i_4_n_0;
  wire sclk_reg0_carry__2_i_5_n_0;
  wire sclk_reg0_carry__2_i_6_n_2;
  wire sclk_reg0_carry__2_i_6_n_3;
  wire sclk_reg0_carry__2_i_6_n_5;
  wire sclk_reg0_carry__2_i_6_n_6;
  wire sclk_reg0_carry__2_i_6_n_7;
  wire sclk_reg0_carry__2_i_7_n_0;
  wire sclk_reg0_carry__2_i_7_n_1;
  wire sclk_reg0_carry__2_i_7_n_2;
  wire sclk_reg0_carry__2_i_7_n_3;
  wire sclk_reg0_carry__2_i_7_n_4;
  wire sclk_reg0_carry__2_i_7_n_5;
  wire sclk_reg0_carry__2_i_7_n_6;
  wire sclk_reg0_carry__2_i_7_n_7;
  wire sclk_reg0_carry__2_n_0;
  wire sclk_reg0_carry__2_n_1;
  wire sclk_reg0_carry__2_n_2;
  wire sclk_reg0_carry__2_n_3;
  wire sclk_reg0_carry_i_1_n_0;
  wire sclk_reg0_carry_i_2_n_0;
  wire sclk_reg0_carry_i_3_n_0;
  wire sclk_reg0_carry_i_4_n_0;
  wire sclk_reg0_carry_i_5_n_0;
  wire sclk_reg0_carry_i_6_n_0;
  wire sclk_reg0_carry_i_7_n_0;
  wire sclk_reg0_carry_i_7_n_1;
  wire sclk_reg0_carry_i_7_n_2;
  wire sclk_reg0_carry_i_7_n_3;
  wire sclk_reg0_carry_i_7_n_4;
  wire sclk_reg0_carry_i_7_n_5;
  wire sclk_reg0_carry_i_7_n_6;
  wire sclk_reg0_carry_i_7_n_7;
  wire sclk_reg0_carry_i_8_n_0;
  wire sclk_reg0_carry_i_8_n_1;
  wire sclk_reg0_carry_i_8_n_2;
  wire sclk_reg0_carry_i_8_n_3;
  wire sclk_reg0_carry_i_8_n_4;
  wire sclk_reg0_carry_i_8_n_5;
  wire sclk_reg0_carry_i_8_n_6;
  wire sclk_reg0_carry_i_8_n_7;
  wire sclk_reg0_carry_n_0;
  wire sclk_reg0_carry_n_1;
  wire sclk_reg0_carry_n_2;
  wire sclk_reg0_carry_n_3;
  wire sclk_reg_i_1_n_0;
  wire [3:0]NLW_cnt_clk1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_clk1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_clk1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_cnt_clk1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_cnt_clk_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_num_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_data_out3_carry_O_UNCONNECTED;
  wire [3:0]NLW_data_out3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out3_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_data_out3_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out3_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out3_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_data_out_reg[15]_i_36_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_reg[15]_i_36_O_UNCONNECTED ;
  wire [3:0]NLW_mosi_reg_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_mosi_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_sclk_reg0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sclk_reg0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sclk_reg0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_sclk_reg0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_sclk_reg0_carry__2_i_6_CO_UNCONNECTED;
  wire [3:3]NLW_sclk_reg0_carry__2_i_6_O_UNCONNECTED;

  CARRY4 cnt_clk1_carry
       (.CI(1'b0),
        .CO({cnt_clk1_carry_n_0,cnt_clk1_carry_n_1,cnt_clk1_carry_n_2,cnt_clk1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_clk1_carry_i_1_n_0,cnt_clk1_carry_i_2_n_0,1'b0,cnt_clk1_carry_i_3_n_0}),
        .O(NLW_cnt_clk1_carry_O_UNCONNECTED[3:0]),
        .S({cnt_clk1_carry_i_4_n_0,cnt_clk1_carry_i_5_n_0,cnt_clk1_carry_i_6_n_0,cnt_clk1_carry_i_7_n_0}));
  CARRY4 cnt_clk1_carry__0
       (.CI(cnt_clk1_carry_n_0),
        .CO({cnt_clk1_carry__0_n_0,cnt_clk1_carry__0_n_1,cnt_clk1_carry__0_n_2,cnt_clk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_clk1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_clk1_carry__0_i_1_n_0,cnt_clk1_carry__0_i_2_n_0,cnt_clk1_carry__0_i_3_n_0,cnt_clk1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__0_i_1
       (.I0(cnt_clk_reg[14]),
        .I1(cnt_clk_reg[15]),
        .O(cnt_clk1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__0_i_2
       (.I0(cnt_clk_reg[12]),
        .I1(cnt_clk_reg[13]),
        .O(cnt_clk1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__0_i_3
       (.I0(cnt_clk_reg[10]),
        .I1(cnt_clk_reg[11]),
        .O(cnt_clk1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__0_i_4
       (.I0(cnt_clk_reg[8]),
        .I1(cnt_clk_reg[9]),
        .O(cnt_clk1_carry__0_i_4_n_0));
  CARRY4 cnt_clk1_carry__1
       (.CI(cnt_clk1_carry__0_n_0),
        .CO({cnt_clk1_carry__1_n_0,cnt_clk1_carry__1_n_1,cnt_clk1_carry__1_n_2,cnt_clk1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_clk1_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt_clk1_carry__1_i_1_n_0,cnt_clk1_carry__1_i_2_n_0,cnt_clk1_carry__1_i_3_n_0,cnt_clk1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__1_i_1
       (.I0(cnt_clk_reg[22]),
        .I1(cnt_clk_reg[23]),
        .O(cnt_clk1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__1_i_2
       (.I0(cnt_clk_reg[20]),
        .I1(cnt_clk_reg[21]),
        .O(cnt_clk1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__1_i_3
       (.I0(cnt_clk_reg[18]),
        .I1(cnt_clk_reg[19]),
        .O(cnt_clk1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__1_i_4
       (.I0(cnt_clk_reg[16]),
        .I1(cnt_clk_reg[17]),
        .O(cnt_clk1_carry__1_i_4_n_0));
  CARRY4 cnt_clk1_carry__2
       (.CI(cnt_clk1_carry__1_n_0),
        .CO({cnt_clk1_carry__2_n_0,cnt_clk1_carry__2_n_1,cnt_clk1_carry__2_n_2,cnt_clk1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_clk_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_cnt_clk1_carry__2_O_UNCONNECTED[3:0]),
        .S({cnt_clk1_carry__2_i_1_n_0,cnt_clk1_carry__2_i_2_n_0,cnt_clk1_carry__2_i_3_n_0,cnt_clk1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__2_i_1
       (.I0(cnt_clk_reg[30]),
        .I1(cnt_clk_reg[31]),
        .O(cnt_clk1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__2_i_2
       (.I0(cnt_clk_reg[28]),
        .I1(cnt_clk_reg[29]),
        .O(cnt_clk1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__2_i_3
       (.I0(cnt_clk_reg[26]),
        .I1(cnt_clk_reg[27]),
        .O(cnt_clk1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry__2_i_4
       (.I0(cnt_clk_reg[24]),
        .I1(cnt_clk_reg[25]),
        .O(cnt_clk1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry_i_1
       (.I0(cnt_clk_reg[6]),
        .I1(cnt_clk_reg[7]),
        .O(cnt_clk1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_clk1_carry_i_2
       (.I0(cnt_clk_reg[5]),
        .O(cnt_clk1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    cnt_clk1_carry_i_3
       (.I0(cnt_clk_reg[0]),
        .I1(cnt_clk_reg[1]),
        .O(cnt_clk1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_clk1_carry_i_4
       (.I0(cnt_clk_reg[6]),
        .I1(cnt_clk_reg[7]),
        .O(cnt_clk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_clk1_carry_i_5
       (.I0(cnt_clk_reg[5]),
        .I1(cnt_clk_reg[4]),
        .O(cnt_clk1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_clk1_carry_i_6
       (.I0(cnt_clk_reg[2]),
        .I1(cnt_clk_reg[3]),
        .O(cnt_clk1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_clk1_carry_i_7
       (.I0(cnt_clk_reg[0]),
        .I1(cnt_clk_reg[1]),
        .O(cnt_clk1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[0]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[3]),
        .O(\cnt_clk[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[0]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[2]),
        .O(\cnt_clk[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[0]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[1]),
        .O(\cnt_clk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt_clk[0]_i_5 
       (.I0(cnt_clk_reg[0]),
        .I1(cnt_clk1_carry__2_n_0),
        .O(\cnt_clk[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[12]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[15]),
        .O(\cnt_clk[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[12]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[14]),
        .O(\cnt_clk[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[12]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[13]),
        .O(\cnt_clk[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[12]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[12]),
        .O(\cnt_clk[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[16]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[19]),
        .O(\cnt_clk[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[16]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[18]),
        .O(\cnt_clk[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[16]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[17]),
        .O(\cnt_clk[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[16]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[16]),
        .O(\cnt_clk[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[20]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[23]),
        .O(\cnt_clk[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[20]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[22]),
        .O(\cnt_clk[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[20]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[21]),
        .O(\cnt_clk[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[20]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[20]),
        .O(\cnt_clk[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[24]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[27]),
        .O(\cnt_clk[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[24]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[26]),
        .O(\cnt_clk[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[24]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[25]),
        .O(\cnt_clk[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[24]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[24]),
        .O(\cnt_clk[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[28]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[31]),
        .O(\cnt_clk[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[28]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[30]),
        .O(\cnt_clk[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[28]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[29]),
        .O(\cnt_clk[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[28]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[28]),
        .O(\cnt_clk[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[4]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[7]),
        .O(\cnt_clk[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[4]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[6]),
        .O(\cnt_clk[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[4]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[5]),
        .O(\cnt_clk[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[4]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[4]),
        .O(\cnt_clk[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[8]_i_2 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[11]),
        .O(\cnt_clk[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[8]_i_3 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[10]),
        .O(\cnt_clk[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[8]_i_4 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[9]),
        .O(\cnt_clk[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_clk[8]_i_5 
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(cnt_clk_reg[8]),
        .O(\cnt_clk[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_7 ),
        .Q(cnt_clk_reg[0]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_clk_reg[0]_i_1_n_0 ,\cnt_clk_reg[0]_i_1_n_1 ,\cnt_clk_reg[0]_i_1_n_2 ,\cnt_clk_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt_clk1_carry__2_n_0}),
        .O({\cnt_clk_reg[0]_i_1_n_4 ,\cnt_clk_reg[0]_i_1_n_5 ,\cnt_clk_reg[0]_i_1_n_6 ,\cnt_clk_reg[0]_i_1_n_7 }),
        .S({\cnt_clk[0]_i_2_n_0 ,\cnt_clk[0]_i_3_n_0 ,\cnt_clk[0]_i_4_n_0 ,\cnt_clk[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_5 ),
        .Q(cnt_clk_reg[10]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_4 ),
        .Q(cnt_clk_reg[11]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_7 ),
        .Q(cnt_clk_reg[12]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[12]_i_1 
       (.CI(\cnt_clk_reg[8]_i_1_n_0 ),
        .CO({\cnt_clk_reg[12]_i_1_n_0 ,\cnt_clk_reg[12]_i_1_n_1 ,\cnt_clk_reg[12]_i_1_n_2 ,\cnt_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[12]_i_1_n_4 ,\cnt_clk_reg[12]_i_1_n_5 ,\cnt_clk_reg[12]_i_1_n_6 ,\cnt_clk_reg[12]_i_1_n_7 }),
        .S({\cnt_clk[12]_i_2_n_0 ,\cnt_clk[12]_i_3_n_0 ,\cnt_clk[12]_i_4_n_0 ,\cnt_clk[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_6 ),
        .Q(cnt_clk_reg[13]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_5 ),
        .Q(cnt_clk_reg[14]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_4 ),
        .Q(cnt_clk_reg[15]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_7 ),
        .Q(cnt_clk_reg[16]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[16]_i_1 
       (.CI(\cnt_clk_reg[12]_i_1_n_0 ),
        .CO({\cnt_clk_reg[16]_i_1_n_0 ,\cnt_clk_reg[16]_i_1_n_1 ,\cnt_clk_reg[16]_i_1_n_2 ,\cnt_clk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[16]_i_1_n_4 ,\cnt_clk_reg[16]_i_1_n_5 ,\cnt_clk_reg[16]_i_1_n_6 ,\cnt_clk_reg[16]_i_1_n_7 }),
        .S({\cnt_clk[16]_i_2_n_0 ,\cnt_clk[16]_i_3_n_0 ,\cnt_clk[16]_i_4_n_0 ,\cnt_clk[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_6 ),
        .Q(cnt_clk_reg[17]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_5 ),
        .Q(cnt_clk_reg[18]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_4 ),
        .Q(cnt_clk_reg[19]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_6 ),
        .Q(cnt_clk_reg[1]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_7 ),
        .Q(cnt_clk_reg[20]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[20]_i_1 
       (.CI(\cnt_clk_reg[16]_i_1_n_0 ),
        .CO({\cnt_clk_reg[20]_i_1_n_0 ,\cnt_clk_reg[20]_i_1_n_1 ,\cnt_clk_reg[20]_i_1_n_2 ,\cnt_clk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[20]_i_1_n_4 ,\cnt_clk_reg[20]_i_1_n_5 ,\cnt_clk_reg[20]_i_1_n_6 ,\cnt_clk_reg[20]_i_1_n_7 }),
        .S({\cnt_clk[20]_i_2_n_0 ,\cnt_clk[20]_i_3_n_0 ,\cnt_clk[20]_i_4_n_0 ,\cnt_clk[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_6 ),
        .Q(cnt_clk_reg[21]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_5 ),
        .Q(cnt_clk_reg[22]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_4 ),
        .Q(cnt_clk_reg[23]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_7 ),
        .Q(cnt_clk_reg[24]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[24]_i_1 
       (.CI(\cnt_clk_reg[20]_i_1_n_0 ),
        .CO({\cnt_clk_reg[24]_i_1_n_0 ,\cnt_clk_reg[24]_i_1_n_1 ,\cnt_clk_reg[24]_i_1_n_2 ,\cnt_clk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[24]_i_1_n_4 ,\cnt_clk_reg[24]_i_1_n_5 ,\cnt_clk_reg[24]_i_1_n_6 ,\cnt_clk_reg[24]_i_1_n_7 }),
        .S({\cnt_clk[24]_i_2_n_0 ,\cnt_clk[24]_i_3_n_0 ,\cnt_clk[24]_i_4_n_0 ,\cnt_clk[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_6 ),
        .Q(cnt_clk_reg[25]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_5 ),
        .Q(cnt_clk_reg[26]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_4 ),
        .Q(cnt_clk_reg[27]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_7 ),
        .Q(cnt_clk_reg[28]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[28]_i_1 
       (.CI(\cnt_clk_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_clk_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_clk_reg[28]_i_1_n_1 ,\cnt_clk_reg[28]_i_1_n_2 ,\cnt_clk_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[28]_i_1_n_4 ,\cnt_clk_reg[28]_i_1_n_5 ,\cnt_clk_reg[28]_i_1_n_6 ,\cnt_clk_reg[28]_i_1_n_7 }),
        .S({\cnt_clk[28]_i_2_n_0 ,\cnt_clk[28]_i_3_n_0 ,\cnt_clk[28]_i_4_n_0 ,\cnt_clk[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_6 ),
        .Q(cnt_clk_reg[29]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_5 ),
        .Q(cnt_clk_reg[2]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_5 ),
        .Q(cnt_clk_reg[30]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_4 ),
        .Q(cnt_clk_reg[31]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_4 ),
        .Q(cnt_clk_reg[3]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_7 ),
        .Q(cnt_clk_reg[4]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[4]_i_1 
       (.CI(\cnt_clk_reg[0]_i_1_n_0 ),
        .CO({\cnt_clk_reg[4]_i_1_n_0 ,\cnt_clk_reg[4]_i_1_n_1 ,\cnt_clk_reg[4]_i_1_n_2 ,\cnt_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[4]_i_1_n_4 ,\cnt_clk_reg[4]_i_1_n_5 ,\cnt_clk_reg[4]_i_1_n_6 ,\cnt_clk_reg[4]_i_1_n_7 }),
        .S({\cnt_clk[4]_i_2_n_0 ,\cnt_clk[4]_i_3_n_0 ,\cnt_clk[4]_i_4_n_0 ,\cnt_clk[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_6 ),
        .Q(cnt_clk_reg[5]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_5 ),
        .Q(cnt_clk_reg[6]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_4 ),
        .Q(cnt_clk_reg[7]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_7 ),
        .Q(cnt_clk_reg[8]),
        .R(cs_n_i_1_n_0));
  CARRY4 \cnt_clk_reg[8]_i_1 
       (.CI(\cnt_clk_reg[4]_i_1_n_0 ),
        .CO({\cnt_clk_reg[8]_i_1_n_0 ,\cnt_clk_reg[8]_i_1_n_1 ,\cnt_clk_reg[8]_i_1_n_2 ,\cnt_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[8]_i_1_n_4 ,\cnt_clk_reg[8]_i_1_n_5 ,\cnt_clk_reg[8]_i_1_n_6 ,\cnt_clk_reg[8]_i_1_n_7 }),
        .S({\cnt_clk[8]_i_2_n_0 ,\cnt_clk[8]_i_3_n_0 ,\cnt_clk[8]_i_4_n_0 ,\cnt_clk[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_6 ),
        .Q(cnt_clk_reg[9]),
        .R(cs_n_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_num[0]_i_1 
       (.I0(next_state1_out),
        .I1(cnt_clk1_carry__2_n_0),
        .O(\cnt_num[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[0]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[0]),
        .O(\cnt_num[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[0]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[3]),
        .O(\cnt_num[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[0]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[2]),
        .O(\cnt_num[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[0]_i_6 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[1]),
        .O(\cnt_num[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt_num[0]_i_7 
       (.I0(cnt_num_reg[0]),
        .I1(next_state1_out),
        .O(\cnt_num[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[12]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[15]),
        .O(\cnt_num[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[12]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[14]),
        .O(\cnt_num[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[12]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[13]),
        .O(\cnt_num[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[12]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[12]),
        .O(\cnt_num[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[16]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[19]),
        .O(\cnt_num[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[16]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[18]),
        .O(\cnt_num[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[16]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[17]),
        .O(\cnt_num[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[16]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[16]),
        .O(\cnt_num[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[20]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[23]),
        .O(\cnt_num[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[20]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[22]),
        .O(\cnt_num[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[20]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[21]),
        .O(\cnt_num[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[20]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[20]),
        .O(\cnt_num[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[24]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[27]),
        .O(\cnt_num[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[24]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[26]),
        .O(\cnt_num[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[24]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[25]),
        .O(\cnt_num[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[24]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[24]),
        .O(\cnt_num[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[28]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[31]),
        .O(\cnt_num[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[28]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[30]),
        .O(\cnt_num[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[28]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[29]),
        .O(\cnt_num[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[28]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[28]),
        .O(\cnt_num[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[4]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[7]),
        .O(\cnt_num[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[4]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[6]),
        .O(\cnt_num[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[4]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[5]),
        .O(\cnt_num[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[4]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[4]),
        .O(\cnt_num[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[8]_i_2 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[11]),
        .O(\cnt_num[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[8]_i_3 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[10]),
        .O(\cnt_num[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[8]_i_4 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[9]),
        .O(\cnt_num[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_num[8]_i_5 
       (.I0(next_state1_out),
        .I1(cnt_num_reg[8]),
        .O(\cnt_num[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[0] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_7 ),
        .Q(cnt_num_reg[0]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_num_reg[0]_i_2_n_0 ,\cnt_num_reg[0]_i_2_n_1 ,\cnt_num_reg[0]_i_2_n_2 ,\cnt_num_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cnt_num[0]_i_3_n_0 }),
        .O({\cnt_num_reg[0]_i_2_n_4 ,\cnt_num_reg[0]_i_2_n_5 ,\cnt_num_reg[0]_i_2_n_6 ,\cnt_num_reg[0]_i_2_n_7 }),
        .S({\cnt_num[0]_i_4_n_0 ,\cnt_num[0]_i_5_n_0 ,\cnt_num[0]_i_6_n_0 ,\cnt_num[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[10] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_5 ),
        .Q(cnt_num_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[11] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_4 ),
        .Q(cnt_num_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[12] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_7 ),
        .Q(cnt_num_reg[12]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[12]_i_1 
       (.CI(\cnt_num_reg[8]_i_1_n_0 ),
        .CO({\cnt_num_reg[12]_i_1_n_0 ,\cnt_num_reg[12]_i_1_n_1 ,\cnt_num_reg[12]_i_1_n_2 ,\cnt_num_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[12]_i_1_n_4 ,\cnt_num_reg[12]_i_1_n_5 ,\cnt_num_reg[12]_i_1_n_6 ,\cnt_num_reg[12]_i_1_n_7 }),
        .S({\cnt_num[12]_i_2_n_0 ,\cnt_num[12]_i_3_n_0 ,\cnt_num[12]_i_4_n_0 ,\cnt_num[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[13] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_6 ),
        .Q(cnt_num_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[14] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_5 ),
        .Q(cnt_num_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[15] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_4 ),
        .Q(cnt_num_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[16] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_7 ),
        .Q(cnt_num_reg[16]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[16]_i_1 
       (.CI(\cnt_num_reg[12]_i_1_n_0 ),
        .CO({\cnt_num_reg[16]_i_1_n_0 ,\cnt_num_reg[16]_i_1_n_1 ,\cnt_num_reg[16]_i_1_n_2 ,\cnt_num_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[16]_i_1_n_4 ,\cnt_num_reg[16]_i_1_n_5 ,\cnt_num_reg[16]_i_1_n_6 ,\cnt_num_reg[16]_i_1_n_7 }),
        .S({\cnt_num[16]_i_2_n_0 ,\cnt_num[16]_i_3_n_0 ,\cnt_num[16]_i_4_n_0 ,\cnt_num[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[17] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_6 ),
        .Q(cnt_num_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[18] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_5 ),
        .Q(cnt_num_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[19] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_4 ),
        .Q(cnt_num_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[1] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_6 ),
        .Q(cnt_num_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[20] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_7 ),
        .Q(cnt_num_reg[20]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[20]_i_1 
       (.CI(\cnt_num_reg[16]_i_1_n_0 ),
        .CO({\cnt_num_reg[20]_i_1_n_0 ,\cnt_num_reg[20]_i_1_n_1 ,\cnt_num_reg[20]_i_1_n_2 ,\cnt_num_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[20]_i_1_n_4 ,\cnt_num_reg[20]_i_1_n_5 ,\cnt_num_reg[20]_i_1_n_6 ,\cnt_num_reg[20]_i_1_n_7 }),
        .S({\cnt_num[20]_i_2_n_0 ,\cnt_num[20]_i_3_n_0 ,\cnt_num[20]_i_4_n_0 ,\cnt_num[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[21] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_6 ),
        .Q(cnt_num_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[22] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_5 ),
        .Q(cnt_num_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[23] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_4 ),
        .Q(cnt_num_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[24] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_7 ),
        .Q(cnt_num_reg[24]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[24]_i_1 
       (.CI(\cnt_num_reg[20]_i_1_n_0 ),
        .CO({\cnt_num_reg[24]_i_1_n_0 ,\cnt_num_reg[24]_i_1_n_1 ,\cnt_num_reg[24]_i_1_n_2 ,\cnt_num_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[24]_i_1_n_4 ,\cnt_num_reg[24]_i_1_n_5 ,\cnt_num_reg[24]_i_1_n_6 ,\cnt_num_reg[24]_i_1_n_7 }),
        .S({\cnt_num[24]_i_2_n_0 ,\cnt_num[24]_i_3_n_0 ,\cnt_num[24]_i_4_n_0 ,\cnt_num[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[25] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_6 ),
        .Q(cnt_num_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[26] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_5 ),
        .Q(cnt_num_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[27] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_4 ),
        .Q(cnt_num_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[28] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_7 ),
        .Q(cnt_num_reg[28]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[28]_i_1 
       (.CI(\cnt_num_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_num_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_num_reg[28]_i_1_n_1 ,\cnt_num_reg[28]_i_1_n_2 ,\cnt_num_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[28]_i_1_n_4 ,\cnt_num_reg[28]_i_1_n_5 ,\cnt_num_reg[28]_i_1_n_6 ,\cnt_num_reg[28]_i_1_n_7 }),
        .S({\cnt_num[28]_i_2_n_0 ,\cnt_num[28]_i_3_n_0 ,\cnt_num[28]_i_4_n_0 ,\cnt_num[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[29] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_6 ),
        .Q(cnt_num_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[2] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_5 ),
        .Q(cnt_num_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[30] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_5 ),
        .Q(cnt_num_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[31] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_4 ),
        .Q(cnt_num_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[3] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_4 ),
        .Q(cnt_num_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[4] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_7 ),
        .Q(cnt_num_reg[4]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[4]_i_1 
       (.CI(\cnt_num_reg[0]_i_2_n_0 ),
        .CO({\cnt_num_reg[4]_i_1_n_0 ,\cnt_num_reg[4]_i_1_n_1 ,\cnt_num_reg[4]_i_1_n_2 ,\cnt_num_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[4]_i_1_n_4 ,\cnt_num_reg[4]_i_1_n_5 ,\cnt_num_reg[4]_i_1_n_6 ,\cnt_num_reg[4]_i_1_n_7 }),
        .S({\cnt_num[4]_i_2_n_0 ,\cnt_num[4]_i_3_n_0 ,\cnt_num[4]_i_4_n_0 ,\cnt_num[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[5] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_6 ),
        .Q(cnt_num_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[6] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_5 ),
        .Q(cnt_num_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[7] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_4 ),
        .Q(cnt_num_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[8] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_7 ),
        .Q(cnt_num_reg[8]),
        .R(1'b0));
  CARRY4 \cnt_num_reg[8]_i_1 
       (.CI(\cnt_num_reg[4]_i_1_n_0 ),
        .CO({\cnt_num_reg[8]_i_1_n_0 ,\cnt_num_reg[8]_i_1_n_1 ,\cnt_num_reg[8]_i_1_n_2 ,\cnt_num_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_num_reg[8]_i_1_n_4 ,\cnt_num_reg[8]_i_1_n_5 ,\cnt_num_reg[8]_i_1_n_6 ,\cnt_num_reg[8]_i_1_n_7 }),
        .S({\cnt_num[8]_i_2_n_0 ,\cnt_num[8]_i_3_n_0 ,\cnt_num[8]_i_4_n_0 ,\cnt_num[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[9] 
       (.C(clk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_6 ),
        .Q(cnt_num_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    cs_n_i_1
       (.I0(next_state1_out),
        .O(cs_n_i_1_n_0));
  FDSE cs_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(cs_n),
        .S(cs_n_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000070777070)) 
    current_state_i_1
       (.I0(cnt_num_reg[5]),
        .I1(current_state_i_2_n_0),
        .I2(busy),
        .I3(old_ready),
        .I4(ready),
        .I5(rst),
        .O(next_state1_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_state_i_10
       (.I0(cnt_num_reg[30]),
        .I1(cnt_num_reg[3]),
        .I2(cnt_num_reg[0]),
        .I3(cnt_num_reg[1]),
        .O(current_state_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    current_state_i_2
       (.I0(current_state_i_3_n_0),
        .I1(current_state_i_4_n_0),
        .I2(current_state_i_5_n_0),
        .I3(cnt_num_reg[27]),
        .I4(cnt_num_reg[26]),
        .I5(current_state_i_6_n_0),
        .O(current_state_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    current_state_i_3
       (.I0(cnt_num_reg[21]),
        .I1(cnt_num_reg[20]),
        .I2(cnt_num_reg[23]),
        .I3(cnt_num_reg[22]),
        .I4(current_state_i_7_n_0),
        .O(current_state_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    current_state_i_4
       (.I0(cnt_num_reg[2]),
        .I1(busy),
        .I2(cnt_num_reg[28]),
        .I3(cnt_num_reg[31]),
        .O(current_state_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    current_state_i_5
       (.I0(cnt_num_reg[25]),
        .I1(cnt_num_reg[24]),
        .O(current_state_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    current_state_i_6
       (.I0(current_state_i_8_n_0),
        .I1(cnt_num_reg[14]),
        .I2(cnt_num_reg[15]),
        .I3(cnt_num_reg[12]),
        .I4(cnt_num_reg[13]),
        .I5(current_state_i_9_n_0),
        .O(current_state_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_state_i_7
       (.I0(cnt_num_reg[18]),
        .I1(cnt_num_reg[19]),
        .I2(cnt_num_reg[16]),
        .I3(cnt_num_reg[17]),
        .O(current_state_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_state_i_8
       (.I0(cnt_num_reg[10]),
        .I1(cnt_num_reg[11]),
        .I2(cnt_num_reg[8]),
        .I3(cnt_num_reg[9]),
        .O(current_state_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    current_state_i_9
       (.I0(cnt_num_reg[29]),
        .I1(cnt_num_reg[4]),
        .I2(cnt_num_reg[7]),
        .I3(cnt_num_reg[6]),
        .I4(current_state_i_10_n_0),
        .O(current_state_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(next_state1_out),
        .Q(busy),
        .R(1'b0));
  CARRY4 data_out3_carry
       (.CI(1'b0),
        .CO({data_out3_carry_n_0,data_out3_carry_n_1,data_out3_carry_n_2,data_out3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,data_out3_carry_i_1_n_0,1'b0,data_out3_carry_i_2_n_0}),
        .O(NLW_data_out3_carry_O_UNCONNECTED[3:0]),
        .S({data_out3_carry_i_3_n_0,data_out3_carry_i_4_n_0,data_out3_carry_i_5_n_0,data_out3_carry_i_6_n_0}));
  CARRY4 data_out3_carry__0
       (.CI(data_out3_carry_n_0),
        .CO({data_out3_carry__0_n_0,data_out3_carry__0_n_1,data_out3_carry__0_n_2,data_out3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out3_carry__0_O_UNCONNECTED[3:0]),
        .S({data_out3_carry__0_i_1_n_0,data_out3_carry__0_i_2_n_0,data_out3_carry__0_i_3_n_0,data_out3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__0_i_1
       (.I0(cnt_num_reg[14]),
        .I1(cnt_num_reg[15]),
        .O(data_out3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__0_i_2
       (.I0(cnt_num_reg[12]),
        .I1(cnt_num_reg[13]),
        .O(data_out3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__0_i_3
       (.I0(cnt_num_reg[10]),
        .I1(cnt_num_reg[11]),
        .O(data_out3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__0_i_4
       (.I0(cnt_num_reg[8]),
        .I1(cnt_num_reg[9]),
        .O(data_out3_carry__0_i_4_n_0));
  CARRY4 data_out3_carry__1
       (.CI(data_out3_carry__0_n_0),
        .CO({data_out3_carry__1_n_0,data_out3_carry__1_n_1,data_out3_carry__1_n_2,data_out3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out3_carry__1_O_UNCONNECTED[3:0]),
        .S({data_out3_carry__1_i_1_n_0,data_out3_carry__1_i_2_n_0,data_out3_carry__1_i_3_n_0,data_out3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__1_i_1
       (.I0(cnt_num_reg[22]),
        .I1(cnt_num_reg[23]),
        .O(data_out3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__1_i_2
       (.I0(cnt_num_reg[20]),
        .I1(cnt_num_reg[21]),
        .O(data_out3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__1_i_3
       (.I0(cnt_num_reg[18]),
        .I1(cnt_num_reg[19]),
        .O(data_out3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__1_i_4
       (.I0(cnt_num_reg[16]),
        .I1(cnt_num_reg[17]),
        .O(data_out3_carry__1_i_4_n_0));
  CARRY4 data_out3_carry__2
       (.CI(data_out3_carry__1_n_0),
        .CO({data_out3,data_out3_carry__2_n_1,data_out3_carry__2_n_2,data_out3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_num_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_data_out3_carry__2_O_UNCONNECTED[3:0]),
        .S({data_out3_carry__2_i_1_n_0,data_out3_carry__2_i_2_n_0,data_out3_carry__2_i_3_n_0,data_out3_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__2_i_1
       (.I0(cnt_num_reg[30]),
        .I1(cnt_num_reg[31]),
        .O(data_out3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__2_i_2
       (.I0(cnt_num_reg[28]),
        .I1(cnt_num_reg[29]),
        .O(data_out3_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__2_i_3
       (.I0(cnt_num_reg[26]),
        .I1(cnt_num_reg[27]),
        .O(data_out3_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry__2_i_4
       (.I0(cnt_num_reg[24]),
        .I1(cnt_num_reg[25]),
        .O(data_out3_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out3_carry_i_1
       (.I0(cnt_num_reg[5]),
        .O(data_out3_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out3_carry_i_2
       (.I0(cnt_num_reg[1]),
        .O(data_out3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry_i_3
       (.I0(cnt_num_reg[6]),
        .I1(cnt_num_reg[7]),
        .O(data_out3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out3_carry_i_4
       (.I0(cnt_num_reg[5]),
        .I1(cnt_num_reg[4]),
        .O(data_out3_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out3_carry_i_5
       (.I0(cnt_num_reg[2]),
        .I1(cnt_num_reg[3]),
        .O(data_out3_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out3_carry_i_6
       (.I0(cnt_num_reg[1]),
        .I1(cnt_num_reg[0]),
        .O(data_out3_carry_i_6_n_0));
  CARRY4 \data_out3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\data_out3_inferred__0/i__carry_n_0 ,\data_out3_inferred__0/i__carry_n_1 ,\data_out3_inferred__0/i__carry_n_2 ,\data_out3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,cnt_num_reg[5],i__carry_i_2_n_0,1'b0}),
        .O(\NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  CARRY4 \data_out3_inferred__0/i__carry__0 
       (.CI(\data_out3_inferred__0/i__carry_n_0 ),
        .CO({\data_out3_inferred__0/i__carry__0_n_0 ,\data_out3_inferred__0/i__carry__0_n_1 ,\data_out3_inferred__0/i__carry__0_n_2 ,\data_out3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \data_out3_inferred__0/i__carry__1 
       (.CI(\data_out3_inferred__0/i__carry__0_n_0 ),
        .CO({\data_out3_inferred__0/i__carry__1_n_0 ,\data_out3_inferred__0/i__carry__1_n_1 ,\data_out3_inferred__0/i__carry__1_n_2 ,\data_out3_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_data_out3_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \data_out3_inferred__0/i__carry__2 
       (.CI(\data_out3_inferred__0/i__carry__1_n_0 ),
        .CO({data_out32_in,\data_out3_inferred__0/i__carry__2_n_1 ,\data_out3_inferred__0/i__carry__2_n_2 ,\data_out3_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_data_out3_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[0]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(\data_out[12]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[10]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(\data_out[14]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[10]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[11]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(\data_out[15]_i_3_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[11]),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \data_out[11]_i_2 
       (.I0(data_out1[2]),
        .I1(\data_out[15]_i_5_n_0 ),
        .I2(\data_out[15]_i_6_n_0 ),
        .I3(\data_out[15]_i_7_n_0 ),
        .I4(data_out1[3]),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[12]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[15]_i_2_n_0 ),
        .I3(\data_out[12]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[12]),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[12]_i_2 
       (.I0(data_out1[1]),
        .I1(cnt_num_reg[0]),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[13]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[15]_i_2_n_0 ),
        .I3(\data_out[13]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[13]),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[13]_i_2 
       (.I0(data_out1[1]),
        .I1(cnt_num_reg[0]),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[14]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[15]_i_2_n_0 ),
        .I3(\data_out[14]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[14]),
        .O(\data_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[14]_i_2 
       (.I0(cnt_num_reg[0]),
        .I1(data_out1[1]),
        .O(\data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[15]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[15]_i_2_n_0 ),
        .I3(\data_out[15]_i_3_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[15]),
        .O(\data_out[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_10 
       (.I0(data_out1[13]),
        .I1(data_out1[12]),
        .I2(data_out1[15]),
        .I3(data_out1[14]),
        .O(\data_out[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_11 
       (.I0(data_out1[9]),
        .I1(data_out1[8]),
        .I2(data_out1[11]),
        .I3(data_out1[10]),
        .O(\data_out[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_14 
       (.I0(data_out1[29]),
        .I1(data_out1[28]),
        .I2(data_out1[31]),
        .I3(data_out1[30]),
        .O(\data_out[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_17 
       (.I0(data_out1[21]),
        .I1(data_out1[20]),
        .I2(data_out1[23]),
        .I3(data_out1[22]),
        .O(\data_out[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_18 
       (.I0(cnt_num_reg[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_19 
       (.I0(cnt_num_reg[1]),
        .O(\data_out[15]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \data_out[15]_i_2 
       (.I0(\data_out[15]_i_5_n_0 ),
        .I1(\data_out[15]_i_6_n_0 ),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(data_out1[3]),
        .I4(data_out1[2]),
        .O(\data_out[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_20 
       (.I0(cnt_num_reg[4]),
        .O(\data_out[15]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_21 
       (.I0(cnt_num_reg[3]),
        .O(\data_out[15]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_22 
       (.I0(cnt_num_reg[2]),
        .O(\data_out[15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_23 
       (.I0(cnt_num_reg[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_24 
       (.I0(cnt_num_reg[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_25 
       (.I0(cnt_num_reg[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_26 
       (.I0(cnt_num_reg[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_28 
       (.I0(cnt_num_reg[28]),
        .O(p_0_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_29 
       (.I0(cnt_num_reg[27]),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[15]_i_3 
       (.I0(data_out1[1]),
        .I1(cnt_num_reg[0]),
        .O(\data_out[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_30 
       (.I0(cnt_num_reg[26]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_31 
       (.I0(cnt_num_reg[25]),
        .O(p_0_in[25]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_32 
       (.I0(cnt_num_reg[24]),
        .O(p_0_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_33 
       (.I0(cnt_num_reg[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_34 
       (.I0(cnt_num_reg[22]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_35 
       (.I0(cnt_num_reg[21]),
        .O(p_0_in[21]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_37 
       (.I0(cnt_num_reg[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_38 
       (.I0(cnt_num_reg[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_39 
       (.I0(cnt_num_reg[18]),
        .O(p_0_in[18]));
  LUT3 #(
    .INIT(8'h80)) 
    \data_out[15]_i_4 
       (.I0(data_out32_in),
        .I1(data_out3),
        .I2(sclk),
        .O(data_out1__1));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_40 
       (.I0(cnt_num_reg[17]),
        .O(p_0_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_41 
       (.I0(cnt_num_reg[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_42 
       (.I0(cnt_num_reg[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_43 
       (.I0(cnt_num_reg[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_44 
       (.I0(cnt_num_reg[13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_45 
       (.I0(cnt_num_reg[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_46 
       (.I0(cnt_num_reg[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_47 
       (.I0(cnt_num_reg[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_48 
       (.I0(cnt_num_reg[9]),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_49 
       (.I0(cnt_num_reg[31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[15]_i_5 
       (.I0(data_out1[6]),
        .I1(data_out1[7]),
        .I2(data_out1[4]),
        .I3(data_out1[5]),
        .I4(\data_out[15]_i_10_n_0 ),
        .I5(\data_out[15]_i_11_n_0 ),
        .O(\data_out[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_50 
       (.I0(cnt_num_reg[30]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_51 
       (.I0(cnt_num_reg[29]),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[15]_i_6 
       (.I0(data_out1[26]),
        .I1(data_out1[27]),
        .I2(data_out1[24]),
        .I3(data_out1[25]),
        .I4(\data_out[15]_i_14_n_0 ),
        .O(\data_out[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[15]_i_7 
       (.I0(data_out1[18]),
        .I1(data_out1[19]),
        .I2(data_out1[16]),
        .I3(data_out1[17]),
        .I4(\data_out[15]_i_17_n_0 ),
        .O(\data_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[1]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(\data_out[13]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[2]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(\data_out[14]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[3]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(\data_out[15]_i_3_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[3]),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[3]_i_2 
       (.I0(data_out1[2]),
        .I1(data_out1[3]),
        .I2(\data_out[15]_i_5_n_0 ),
        .I3(\data_out[15]_i_6_n_0 ),
        .I4(\data_out[15]_i_7_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[4]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[12]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[5]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[13]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[6]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[14]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[7]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[15]_i_3_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[7]),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \data_out[7]_i_2 
       (.I0(data_out1[3]),
        .I1(\data_out[15]_i_5_n_0 ),
        .I2(\data_out[15]_i_6_n_0 ),
        .I3(\data_out[15]_i_7_n_0 ),
        .I4(data_out1[2]),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[8]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(\data_out[12]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[8]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[9]_i_1 
       (.I0(miso),
        .I1(next_state1_out),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(\data_out[13]_i_2_n_0 ),
        .I4(data_out1__1),
        .I5(data_out[9]),
        .O(\data_out[9]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[15]_i_1_n_0 ),
        .Q(data_out[15]),
        .R(1'b0));
  CARRY4 \data_out_reg[15]_i_12 
       (.CI(\data_out_reg[15]_i_13_n_0 ),
        .CO({\data_out_reg[15]_i_12_n_0 ,\data_out_reg[15]_i_12_n_1 ,\data_out_reg[15]_i_12_n_2 ,\data_out_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[28:25]),
        .S(p_0_in[28:25]));
  CARRY4 \data_out_reg[15]_i_13 
       (.CI(\data_out_reg[15]_i_15_n_0 ),
        .CO({\data_out_reg[15]_i_13_n_0 ,\data_out_reg[15]_i_13_n_1 ,\data_out_reg[15]_i_13_n_2 ,\data_out_reg[15]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[24:21]),
        .S(p_0_in[24:21]));
  CARRY4 \data_out_reg[15]_i_15 
       (.CI(\data_out_reg[15]_i_16_n_0 ),
        .CO({\data_out_reg[15]_i_15_n_0 ,\data_out_reg[15]_i_15_n_1 ,\data_out_reg[15]_i_15_n_2 ,\data_out_reg[15]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[20:17]),
        .S(p_0_in[20:17]));
  CARRY4 \data_out_reg[15]_i_16 
       (.CI(\data_out_reg[15]_i_27_n_0 ),
        .CO({\data_out_reg[15]_i_16_n_0 ,\data_out_reg[15]_i_16_n_1 ,\data_out_reg[15]_i_16_n_2 ,\data_out_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[16:13]),
        .S(p_0_in[16:13]));
  CARRY4 \data_out_reg[15]_i_27 
       (.CI(\data_out_reg[15]_i_9_n_0 ),
        .CO({\data_out_reg[15]_i_27_n_0 ,\data_out_reg[15]_i_27_n_1 ,\data_out_reg[15]_i_27_n_2 ,\data_out_reg[15]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[12:9]),
        .S(p_0_in[12:9]));
  CARRY4 \data_out_reg[15]_i_36 
       (.CI(\data_out_reg[15]_i_12_n_0 ),
        .CO({\NLW_data_out_reg[15]_i_36_CO_UNCONNECTED [3:2],\data_out_reg[15]_i_36_n_2 ,\data_out_reg[15]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_reg[15]_i_36_O_UNCONNECTED [3],data_out1[31:29]}),
        .S({1'b0,p_0_in[31:29]}));
  CARRY4 \data_out_reg[15]_i_8 
       (.CI(1'b0),
        .CO({\data_out_reg[15]_i_8_n_0 ,\data_out_reg[15]_i_8_n_1 ,\data_out_reg[15]_i_8_n_2 ,\data_out_reg[15]_i_8_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,\data_out[15]_i_19_n_0 }),
        .O(data_out1[4:1]),
        .S({\data_out[15]_i_20_n_0 ,\data_out[15]_i_21_n_0 ,\data_out[15]_i_22_n_0 ,cnt_num_reg[1]}));
  CARRY4 \data_out_reg[15]_i_9 
       (.CI(\data_out_reg[15]_i_8_n_0 ),
        .CO({\data_out_reg[15]_i_9_n_0 ,\data_out_reg[15]_i_9_n_1 ,\data_out_reg[15]_i_9_n_2 ,\data_out_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[5]}),
        .O(data_out1[8:5]),
        .S({p_0_in[8:6],cnt_num_reg[5]}));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(data_out[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(cnt_num_reg[14]),
        .I1(cnt_num_reg[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(cnt_num_reg[12]),
        .I1(cnt_num_reg[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(cnt_num_reg[10]),
        .I1(cnt_num_reg[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(cnt_num_reg[8]),
        .I1(cnt_num_reg[9]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(cnt_num_reg[14]),
        .I1(cnt_num_reg[15]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(cnt_num_reg[12]),
        .I1(cnt_num_reg[13]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(cnt_num_reg[10]),
        .I1(cnt_num_reg[11]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(cnt_num_reg[8]),
        .I1(cnt_num_reg[9]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(cnt_num_reg[22]),
        .I1(cnt_num_reg[23]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(cnt_num_reg[20]),
        .I1(cnt_num_reg[21]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(cnt_num_reg[18]),
        .I1(cnt_num_reg[19]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(cnt_num_reg[16]),
        .I1(cnt_num_reg[17]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(cnt_num_reg[22]),
        .I1(cnt_num_reg[23]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(cnt_num_reg[20]),
        .I1(cnt_num_reg[21]),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_7
       (.I0(cnt_num_reg[18]),
        .I1(cnt_num_reg[19]),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_8
       (.I0(cnt_num_reg[16]),
        .I1(cnt_num_reg[17]),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(cnt_num_reg[30]),
        .I1(cnt_num_reg[31]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(cnt_num_reg[28]),
        .I1(cnt_num_reg[29]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(cnt_num_reg[26]),
        .I1(cnt_num_reg[27]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(cnt_num_reg[24]),
        .I1(cnt_num_reg[25]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(cnt_num_reg[30]),
        .I1(cnt_num_reg[31]),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(cnt_num_reg[28]),
        .I1(cnt_num_reg[29]),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(cnt_num_reg[26]),
        .I1(cnt_num_reg[27]),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(cnt_num_reg[24]),
        .I1(cnt_num_reg[25]),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(cnt_num_reg[6]),
        .I1(cnt_num_reg[7]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(cnt_num_reg[2]),
        .I1(cnt_num_reg[3]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(cnt_num_reg[6]),
        .I1(cnt_num_reg[7]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(cnt_num_reg[4]),
        .I1(cnt_num_reg[5]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(cnt_num_reg[2]),
        .I1(cnt_num_reg[3]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(cnt_num_reg[0]),
        .I1(cnt_num_reg[1]),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(mosi_reg_i_3_n_7),
        .I2(mosi_i_4_n_0),
        .I3(mosi_reg_i_5_n_4),
        .I4(mosi_i_6_n_0),
        .O(mosi_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_i_10
       (.I0(cnt_num_reg[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_i_11
       (.I0(cnt_num_reg[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_i_12
       (.I0(cnt_num_reg[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_i_13
       (.I0(cnt_num_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_14
       (.I0(data_in[14]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[15]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_18_n_0),
        .O(mosi_i_14_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_15
       (.I0(data_in[10]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[11]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_19_n_0),
        .O(mosi_i_15_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_16
       (.I0(data_in[6]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[7]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_20_n_0),
        .O(mosi_i_16_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_17
       (.I0(data_in[2]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[3]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_21_n_0),
        .O(mosi_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_18
       (.I0(data_in[12]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[13]),
        .O(mosi_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_19
       (.I0(data_in[8]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[9]),
        .O(mosi_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_2
       (.I0(addr[14]),
        .I1(addr[15]),
        .I2(mosi_reg_i_5_n_7),
        .I3(addr[12]),
        .I4(cnt_num_reg[0]),
        .I5(addr[13]),
        .O(mosi_i_2_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_20
       (.I0(data_in[4]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[5]),
        .O(mosi_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_21
       (.I0(data_in[0]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(data_in[1]),
        .O(mosi_i_21_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    mosi_i_4
       (.I0(mosi_i_7_n_0),
        .I1(mosi_i_8_n_0),
        .I2(mosi_reg_i_5_n_5),
        .I3(mosi_reg_i_5_n_6),
        .I4(mosi_i_9_n_0),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_6
       (.I0(mosi_i_14_n_0),
        .I1(mosi_i_15_n_0),
        .I2(mosi_reg_i_5_n_5),
        .I3(mosi_i_16_n_0),
        .I4(mosi_reg_i_5_n_6),
        .I5(mosi_i_17_n_0),
        .O(mosi_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_7
       (.I0(addr[10]),
        .I1(addr[11]),
        .I2(mosi_reg_i_5_n_7),
        .I3(addr[8]),
        .I4(cnt_num_reg[0]),
        .I5(addr[9]),
        .O(mosi_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_8
       (.I0(addr[6]),
        .I1(addr[7]),
        .I2(mosi_reg_i_5_n_7),
        .I3(addr[4]),
        .I4(cnt_num_reg[0]),
        .I5(addr[5]),
        .O(mosi_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_9
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(mosi_reg_i_5_n_7),
        .I3(addr[0]),
        .I4(cnt_num_reg[0]),
        .I5(addr[1]),
        .O(mosi_i_9_n_0));
  FDRE mosi_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(mosi),
        .R(cs_n_i_1_n_0));
  CARRY4 mosi_reg_i_3
       (.CI(mosi_reg_i_5_n_0),
        .CO(NLW_mosi_reg_i_3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mosi_reg_i_3_O_UNCONNECTED[3:1],mosi_reg_i_3_n_7}),
        .S({1'b0,1'b0,1'b0,cnt_num_reg[5]}));
  CARRY4 mosi_reg_i_5
       (.CI(1'b0),
        .CO({mosi_reg_i_5_n_0,mosi_reg_i_5_n_1,mosi_reg_i_5_n_2,mosi_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[2],1'b0}),
        .O({mosi_reg_i_5_n_4,mosi_reg_i_5_n_5,mosi_reg_i_5_n_6,mosi_reg_i_5_n_7}),
        .S({p_0_in[4:3],cnt_num_reg[2],p_0_in[1]}));
  FDRE old_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready),
        .Q(old_ready),
        .R(1'b0));
  CARRY4 sclk_reg0_carry
       (.CI(1'b0),
        .CO({sclk_reg0_carry_n_0,sclk_reg0_carry_n_1,sclk_reg0_carry_n_2,sclk_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sclk_reg0_carry_i_1_n_0,1'b0,sclk_reg0_carry_i_2_n_0}),
        .O(NLW_sclk_reg0_carry_O_UNCONNECTED[3:0]),
        .S({sclk_reg0_carry_i_3_n_0,sclk_reg0_carry_i_4_n_0,sclk_reg0_carry_i_5_n_0,sclk_reg0_carry_i_6_n_0}));
  CARRY4 sclk_reg0_carry__0
       (.CI(sclk_reg0_carry_n_0),
        .CO({sclk_reg0_carry__0_n_0,sclk_reg0_carry__0_n_1,sclk_reg0_carry__0_n_2,sclk_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S({sclk_reg0_carry__0_i_1_n_0,sclk_reg0_carry__0_i_2_n_0,sclk_reg0_carry__0_i_3_n_0,sclk_reg0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__0_i_1
       (.I0(sclk_reg0_carry__0_i_5_n_6),
        .I1(sclk_reg0_carry__0_i_5_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__0_i_2
       (.I0(sclk_reg0_carry__0_i_6_n_4),
        .I1(sclk_reg0_carry__0_i_5_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__0_i_3
       (.I0(sclk_reg0_carry__0_i_6_n_6),
        .I1(sclk_reg0_carry__0_i_6_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__0_i_4
       (.I0(sclk_reg0_carry_i_8_n_4),
        .I1(sclk_reg0_carry__0_i_6_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__0_i_4_n_0));
  CARRY4 sclk_reg0_carry__0_i_5
       (.CI(sclk_reg0_carry__0_i_6_n_0),
        .CO({sclk_reg0_carry__0_i_5_n_0,sclk_reg0_carry__0_i_5_n_1,sclk_reg0_carry__0_i_5_n_2,sclk_reg0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry__0_i_5_n_4,sclk_reg0_carry__0_i_5_n_5,sclk_reg0_carry__0_i_5_n_6,sclk_reg0_carry__0_i_5_n_7}),
        .S(cnt_clk_reg[16:13]));
  CARRY4 sclk_reg0_carry__0_i_6
       (.CI(sclk_reg0_carry_i_8_n_0),
        .CO({sclk_reg0_carry__0_i_6_n_0,sclk_reg0_carry__0_i_6_n_1,sclk_reg0_carry__0_i_6_n_2,sclk_reg0_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry__0_i_6_n_4,sclk_reg0_carry__0_i_6_n_5,sclk_reg0_carry__0_i_6_n_6,sclk_reg0_carry__0_i_6_n_7}),
        .S(cnt_clk_reg[12:9]));
  CARRY4 sclk_reg0_carry__1
       (.CI(sclk_reg0_carry__0_n_0),
        .CO({sclk_reg0_carry__1_n_0,sclk_reg0_carry__1_n_1,sclk_reg0_carry__1_n_2,sclk_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk_reg0_carry__1_O_UNCONNECTED[3:0]),
        .S({sclk_reg0_carry__1_i_1_n_0,sclk_reg0_carry__1_i_2_n_0,sclk_reg0_carry__1_i_3_n_0,sclk_reg0_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__1_i_1
       (.I0(sclk_reg0_carry__1_i_5_n_6),
        .I1(sclk_reg0_carry__1_i_5_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__1_i_2
       (.I0(sclk_reg0_carry__1_i_6_n_4),
        .I1(sclk_reg0_carry__1_i_5_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__1_i_3
       (.I0(sclk_reg0_carry__1_i_6_n_6),
        .I1(sclk_reg0_carry__1_i_6_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__1_i_4
       (.I0(sclk_reg0_carry__0_i_5_n_4),
        .I1(sclk_reg0_carry__1_i_6_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__1_i_4_n_0));
  CARRY4 sclk_reg0_carry__1_i_5
       (.CI(sclk_reg0_carry__1_i_6_n_0),
        .CO({sclk_reg0_carry__1_i_5_n_0,sclk_reg0_carry__1_i_5_n_1,sclk_reg0_carry__1_i_5_n_2,sclk_reg0_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry__1_i_5_n_4,sclk_reg0_carry__1_i_5_n_5,sclk_reg0_carry__1_i_5_n_6,sclk_reg0_carry__1_i_5_n_7}),
        .S(cnt_clk_reg[24:21]));
  CARRY4 sclk_reg0_carry__1_i_6
       (.CI(sclk_reg0_carry__0_i_5_n_0),
        .CO({sclk_reg0_carry__1_i_6_n_0,sclk_reg0_carry__1_i_6_n_1,sclk_reg0_carry__1_i_6_n_2,sclk_reg0_carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry__1_i_6_n_4,sclk_reg0_carry__1_i_6_n_5,sclk_reg0_carry__1_i_6_n_6,sclk_reg0_carry__1_i_6_n_7}),
        .S(cnt_clk_reg[20:17]));
  CARRY4 sclk_reg0_carry__2
       (.CI(sclk_reg0_carry__1_n_0),
        .CO({sclk_reg0_carry__2_n_0,sclk_reg0_carry__2_n_1,sclk_reg0_carry__2_n_2,sclk_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_clk,1'b0,1'b0,1'b0}),
        .O(NLW_sclk_reg0_carry__2_O_UNCONNECTED[3:0]),
        .S({sclk_reg0_carry__2_i_2_n_0,sclk_reg0_carry__2_i_3_n_0,sclk_reg0_carry__2_i_4_n_0,sclk_reg0_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    sclk_reg0_carry__2_i_1
       (.I0(cnt_clk1_carry__2_n_0),
        .I1(sclk_reg0_carry__2_i_6_n_5),
        .O(cnt_clk));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__2_i_2
       (.I0(sclk_reg0_carry__2_i_6_n_6),
        .I1(sclk_reg0_carry__2_i_6_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__2_i_3
       (.I0(sclk_reg0_carry__2_i_7_n_4),
        .I1(sclk_reg0_carry__2_i_6_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__2_i_4
       (.I0(sclk_reg0_carry__2_i_7_n_6),
        .I1(sclk_reg0_carry__2_i_7_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry__2_i_5
       (.I0(sclk_reg0_carry__1_i_5_n_4),
        .I1(sclk_reg0_carry__2_i_7_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry__2_i_5_n_0));
  CARRY4 sclk_reg0_carry__2_i_6
       (.CI(sclk_reg0_carry__2_i_7_n_0),
        .CO({NLW_sclk_reg0_carry__2_i_6_CO_UNCONNECTED[3:2],sclk_reg0_carry__2_i_6_n_2,sclk_reg0_carry__2_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sclk_reg0_carry__2_i_6_O_UNCONNECTED[3],sclk_reg0_carry__2_i_6_n_5,sclk_reg0_carry__2_i_6_n_6,sclk_reg0_carry__2_i_6_n_7}),
        .S({1'b0,cnt_clk_reg[31:29]}));
  CARRY4 sclk_reg0_carry__2_i_7
       (.CI(sclk_reg0_carry__1_i_5_n_0),
        .CO({sclk_reg0_carry__2_i_7_n_0,sclk_reg0_carry__2_i_7_n_1,sclk_reg0_carry__2_i_7_n_2,sclk_reg0_carry__2_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry__2_i_7_n_4,sclk_reg0_carry__2_i_7_n_5,sclk_reg0_carry__2_i_7_n_6,sclk_reg0_carry__2_i_7_n_7}),
        .S(cnt_clk_reg[28:25]));
  LUT3 #(
    .INIT(8'h7F)) 
    sclk_reg0_carry_i_1
       (.I0(sclk_reg0_carry_i_7_n_4),
        .I1(sclk_reg0_carry_i_8_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sclk_reg0_carry_i_2
       (.I0(sclk_reg0_carry_i_7_n_7),
        .I1(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry_i_3
       (.I0(sclk_reg0_carry_i_8_n_6),
        .I1(sclk_reg0_carry_i_8_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sclk_reg0_carry_i_4
       (.I0(sclk_reg0_carry_i_7_n_4),
        .I1(sclk_reg0_carry_i_8_n_7),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sclk_reg0_carry_i_5
       (.I0(sclk_reg0_carry_i_7_n_6),
        .I1(sclk_reg0_carry_i_7_n_5),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sclk_reg0_carry_i_6
       (.I0(sclk_reg0_carry_i_7_n_7),
        .I1(cnt_clk_reg[0]),
        .I2(cnt_clk1_carry__2_n_0),
        .O(sclk_reg0_carry_i_6_n_0));
  CARRY4 sclk_reg0_carry_i_7
       (.CI(1'b0),
        .CO({sclk_reg0_carry_i_7_n_0,sclk_reg0_carry_i_7_n_1,sclk_reg0_carry_i_7_n_2,sclk_reg0_carry_i_7_n_3}),
        .CYINIT(cnt_clk_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry_i_7_n_4,sclk_reg0_carry_i_7_n_5,sclk_reg0_carry_i_7_n_6,sclk_reg0_carry_i_7_n_7}),
        .S(cnt_clk_reg[4:1]));
  CARRY4 sclk_reg0_carry_i_8
       (.CI(sclk_reg0_carry_i_7_n_0),
        .CO({sclk_reg0_carry_i_8_n_0,sclk_reg0_carry_i_8_n_1,sclk_reg0_carry_i_8_n_2,sclk_reg0_carry_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sclk_reg0_carry_i_8_n_4,sclk_reg0_carry_i_8_n_5,sclk_reg0_carry_i_8_n_6,sclk_reg0_carry_i_8_n_7}),
        .S(cnt_clk_reg[8:5]));
  LUT2 #(
    .INIT(4'h2)) 
    sclk_reg_i_1
       (.I0(next_state1_out),
        .I1(sclk_reg0_carry__2_n_0),
        .O(sclk_reg_i_1_n_0));
  FDRE sclk_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_reg_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
