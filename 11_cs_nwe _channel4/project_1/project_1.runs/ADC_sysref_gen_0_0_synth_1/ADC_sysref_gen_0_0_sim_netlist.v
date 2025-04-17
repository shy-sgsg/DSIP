// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug 17 17:21:57 2023
// Host        : GL-0301-949 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_sysref_gen_0_0_sim_netlist.v
// Design      : ADC_sysref_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADC_sysref_gen_0_0,sysref_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sysref_gen,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    div_cfg,
    sysref_num,
    sysref);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ADC_adc_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]div_cfg;
  input [7:0]sysref_num;
  output sysref;

  wire clk;
  wire [7:0]div_cfg;
  wire rst;
  wire sysref;
  wire [7:0]sysref_num;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen inst
       (.clk(clk),
        .div_cfg(div_cfg),
        .rst(rst),
        .sysref(sysref),
        .sysref_num(sysref_num));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen
   (sysref,
    rst,
    clk,
    div_cfg,
    sysref_num);
  output sysref;
  input rst;
  input clk;
  input [7:0]div_cfg;
  input [7:0]sysref_num;

  wire clk;
  wire cnt1_carry_i_1_n_0;
  wire cnt1_carry_i_2_n_0;
  wire cnt1_carry_i_3_n_0;
  wire cnt1_carry_i_4_n_0;
  wire cnt1_carry_i_5_n_0;
  wire cnt1_carry_i_6_n_0;
  wire cnt1_carry_i_7_n_0;
  wire cnt1_carry_i_8_n_0;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire [7:0]cnt_reg__0;
  wire [7:0]div_cfg;
  wire [7:1]p_0_in;
  wire [7:1]p_0_in__0;
  wire rst;
  wire sysref;
  wire sysref_cnt0_carry_i_1_n_0;
  wire sysref_cnt0_carry_i_2_n_0;
  wire sysref_cnt0_carry_i_3_n_0;
  wire sysref_cnt0_carry_i_4_n_0;
  wire sysref_cnt0_carry_i_5_n_0;
  wire sysref_cnt0_carry_i_6_n_0;
  wire sysref_cnt0_carry_i_7_n_0;
  wire sysref_cnt0_carry_i_8_n_0;
  wire sysref_cnt0_carry_n_0;
  wire sysref_cnt0_carry_n_1;
  wire sysref_cnt0_carry_n_2;
  wire sysref_cnt0_carry_n_3;
  wire \sysref_cnt[0]_i_1_n_0 ;
  wire \sysref_cnt[7]_i_1_n_0 ;
  wire \sysref_cnt[7]_i_3_n_0 ;
  wire [7:0]sysref_cnt_reg__0;
  wire sysref_i_1_n_0;
  wire [7:0]sysref_num;
  wire [3:0]NLW_cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sysref_cnt0_carry_O_UNCONNECTED;

  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt1_carry_i_1_n_0,cnt1_carry_i_2_n_0,cnt1_carry_i_3_n_0,cnt1_carry_i_4_n_0}),
        .O(NLW_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({cnt1_carry_i_5_n_0,cnt1_carry_i_6_n_0,cnt1_carry_i_7_n_0,cnt1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt1_carry_i_1
       (.I0(div_cfg[6]),
        .I1(cnt_reg__0[6]),
        .I2(cnt_reg__0[7]),
        .I3(div_cfg[7]),
        .O(cnt1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt1_carry_i_2
       (.I0(div_cfg[4]),
        .I1(cnt_reg__0[4]),
        .I2(cnt_reg__0[5]),
        .I3(div_cfg[5]),
        .O(cnt1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt1_carry_i_3
       (.I0(div_cfg[2]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[3]),
        .I3(div_cfg[3]),
        .O(cnt1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt1_carry_i_4
       (.I0(div_cfg[0]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(div_cfg[1]),
        .O(cnt1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt1_carry_i_5
       (.I0(div_cfg[6]),
        .I1(cnt_reg__0[6]),
        .I2(div_cfg[7]),
        .I3(cnt_reg__0[7]),
        .O(cnt1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt1_carry_i_6
       (.I0(div_cfg[4]),
        .I1(cnt_reg__0[4]),
        .I2(div_cfg[5]),
        .I3(cnt_reg__0[5]),
        .O(cnt1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt1_carry_i_7
       (.I0(div_cfg[2]),
        .I1(cnt_reg__0[2]),
        .I2(div_cfg[3]),
        .I3(cnt_reg__0[3]),
        .O(cnt1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt1_carry_i_8
       (.I0(div_cfg[0]),
        .I1(cnt_reg__0[0]),
        .I2(div_cfg[1]),
        .I3(cnt_reg__0[1]),
        .O(cnt1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[4]),
        .I5(cnt_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[7]_i_1 
       (.I0(rst),
        .I1(cnt1_carry_n_0),
        .O(\cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_2 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt_reg__0[6]),
        .I2(cnt_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[2]),
        .I5(cnt_reg__0[4]),
        .O(\cnt[7]_i_3_n_0 ));
  FDSE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .S(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cnt_reg__0[1]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(cnt_reg__0[4]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(cnt_reg__0[5]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(cnt_reg__0[6]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(cnt_reg__0[7]),
        .R(\cnt[7]_i_1_n_0 ));
  CARRY4 sysref_cnt0_carry
       (.CI(1'b0),
        .CO({sysref_cnt0_carry_n_0,sysref_cnt0_carry_n_1,sysref_cnt0_carry_n_2,sysref_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sysref_cnt0_carry_i_1_n_0,sysref_cnt0_carry_i_2_n_0,sysref_cnt0_carry_i_3_n_0,sysref_cnt0_carry_i_4_n_0}),
        .O(NLW_sysref_cnt0_carry_O_UNCONNECTED[3:0]),
        .S({sysref_cnt0_carry_i_5_n_0,sysref_cnt0_carry_i_6_n_0,sysref_cnt0_carry_i_7_n_0,sysref_cnt0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sysref_cnt0_carry_i_1
       (.I0(sysref_num[6]),
        .I1(sysref_cnt_reg__0[6]),
        .I2(sysref_cnt_reg__0[7]),
        .I3(sysref_num[7]),
        .O(sysref_cnt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sysref_cnt0_carry_i_2
       (.I0(sysref_num[4]),
        .I1(sysref_cnt_reg__0[4]),
        .I2(sysref_cnt_reg__0[5]),
        .I3(sysref_num[5]),
        .O(sysref_cnt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sysref_cnt0_carry_i_3
       (.I0(sysref_num[2]),
        .I1(sysref_cnt_reg__0[2]),
        .I2(sysref_cnt_reg__0[3]),
        .I3(sysref_num[3]),
        .O(sysref_cnt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sysref_cnt0_carry_i_4
       (.I0(sysref_num[0]),
        .I1(sysref_cnt_reg__0[0]),
        .I2(sysref_cnt_reg__0[1]),
        .I3(sysref_num[1]),
        .O(sysref_cnt0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sysref_cnt0_carry_i_5
       (.I0(sysref_num[6]),
        .I1(sysref_cnt_reg__0[6]),
        .I2(sysref_num[7]),
        .I3(sysref_cnt_reg__0[7]),
        .O(sysref_cnt0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sysref_cnt0_carry_i_6
       (.I0(sysref_num[4]),
        .I1(sysref_cnt_reg__0[4]),
        .I2(sysref_num[5]),
        .I3(sysref_cnt_reg__0[5]),
        .O(sysref_cnt0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sysref_cnt0_carry_i_7
       (.I0(sysref_num[2]),
        .I1(sysref_cnt_reg__0[2]),
        .I2(sysref_num[3]),
        .I3(sysref_cnt_reg__0[3]),
        .O(sysref_cnt0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sysref_cnt0_carry_i_8
       (.I0(sysref_num[0]),
        .I1(sysref_cnt_reg__0[0]),
        .I2(sysref_num[1]),
        .I3(sysref_cnt_reg__0[1]),
        .O(sysref_cnt0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sysref_cnt[0]_i_1 
       (.I0(sysref_cnt_reg__0[0]),
        .O(\sysref_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sysref_cnt[1]_i_1 
       (.I0(sysref_cnt_reg__0[0]),
        .I1(sysref_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sysref_cnt[2]_i_1 
       (.I0(sysref_cnt_reg__0[0]),
        .I1(sysref_cnt_reg__0[1]),
        .I2(sysref_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sysref_cnt[3]_i_1 
       (.I0(sysref_cnt_reg__0[1]),
        .I1(sysref_cnt_reg__0[0]),
        .I2(sysref_cnt_reg__0[2]),
        .I3(sysref_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sysref_cnt[4]_i_1 
       (.I0(sysref_cnt_reg__0[2]),
        .I1(sysref_cnt_reg__0[0]),
        .I2(sysref_cnt_reg__0[1]),
        .I3(sysref_cnt_reg__0[3]),
        .I4(sysref_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sysref_cnt[5]_i_1 
       (.I0(sysref_cnt_reg__0[3]),
        .I1(sysref_cnt_reg__0[1]),
        .I2(sysref_cnt_reg__0[0]),
        .I3(sysref_cnt_reg__0[2]),
        .I4(sysref_cnt_reg__0[4]),
        .I5(sysref_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sysref_cnt[6]_i_1 
       (.I0(\sysref_cnt[7]_i_3_n_0 ),
        .I1(sysref_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \sysref_cnt[7]_i_1 
       (.I0(sysref_cnt0_carry_n_0),
        .I1(cnt1_carry_n_0),
        .O(\sysref_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sysref_cnt[7]_i_2 
       (.I0(\sysref_cnt[7]_i_3_n_0 ),
        .I1(sysref_cnt_reg__0[6]),
        .I2(sysref_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sysref_cnt[7]_i_3 
       (.I0(sysref_cnt_reg__0[5]),
        .I1(sysref_cnt_reg__0[3]),
        .I2(sysref_cnt_reg__0[1]),
        .I3(sysref_cnt_reg__0[0]),
        .I4(sysref_cnt_reg__0[2]),
        .I5(sysref_cnt_reg__0[4]),
        .O(\sysref_cnt[7]_i_3_n_0 ));
  FDRE \sysref_cnt_reg[0] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(\sysref_cnt[0]_i_1_n_0 ),
        .Q(sysref_cnt_reg__0[0]),
        .R(rst));
  FDRE \sysref_cnt_reg[1] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(sysref_cnt_reg__0[1]),
        .R(rst));
  FDRE \sysref_cnt_reg[2] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(sysref_cnt_reg__0[2]),
        .R(rst));
  FDRE \sysref_cnt_reg[3] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(sysref_cnt_reg__0[3]),
        .R(rst));
  FDRE \sysref_cnt_reg[4] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(sysref_cnt_reg__0[4]),
        .R(rst));
  FDRE \sysref_cnt_reg[5] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(sysref_cnt_reg__0[5]),
        .R(rst));
  FDRE \sysref_cnt_reg[6] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(sysref_cnt_reg__0[6]),
        .R(rst));
  FDRE \sysref_cnt_reg[7] 
       (.C(clk),
        .CE(\sysref_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(sysref_cnt_reg__0[7]),
        .R(rst));
  LUT3 #(
    .INIT(8'h02)) 
    sysref_i_1
       (.I0(sysref_cnt0_carry_n_0),
        .I1(cnt1_carry_n_0),
        .I2(rst),
        .O(sysref_i_1_n_0));
  FDRE sysref_reg
       (.C(clk),
        .CE(1'b1),
        .D(sysref_i_1_n_0),
        .Q(sysref),
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
