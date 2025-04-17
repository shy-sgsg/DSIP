// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 16 19:27:38 2024
// Host        : GL-0301-950 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_adc1_spi_1_sim_netlist.v
// Design      : ADC_adc1_spi_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADC_adc1_spi_1,axi_lite_spi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_lite_spi,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    rst,
    sclk,
    cs_n,
    mosi,
    miso);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ADC_clk_100m, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ADC_clk_100m, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output rst;
  output sclk;
  output cs_n;
  output mosi;
  input miso;

  wire \<const0> ;
  wire cs_n;
  wire miso;
  wire mosi;
  wire rst;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sclk;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi inst
       (.cs_n(cs_n),
        .miso(miso),
        .mosi(mosi),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sclk(sclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_spi
   (cs_n,
    mosi,
    s_axi_wready,
    s_axi_awready,
    s_axi_arready,
    rst,
    s_axi_rdata,
    sclk,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    miso,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wstrb,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output cs_n;
  output mosi;
  output s_axi_wready;
  output s_axi_awready;
  output s_axi_arready;
  output rst;
  output [31:0]s_axi_rdata;
  output sclk;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input miso;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire [15:0]addr;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire cs_n;
  wire miso;
  wire mosi;
  wire [3:0]p_0_in;
  wire [31:0]p_1_in;
  wire [31:0]reg_data_out;
  wire rst;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sclk;
  wire [3:0]sel0;
  wire [31:1]slv_reg0;
  wire [31:1]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:15]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [15:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:16]slv_reg3__0;
  wire [0:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:1]slv_reg5__0;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(s_axi_awready),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[3]),
        .Q(sel0[3]),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s_axi_arready),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready),
        .I2(s_axi_wready),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg3[0]),
        .I1(addr[0]),
        .I2(sel0[1]),
        .I3(addr[15]),
        .I4(sel0[0]),
        .I5(rst),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg3[10]),
        .I1(addr[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg3[11]),
        .I1(addr[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg3[12]),
        .I1(addr[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg3[13]),
        .I1(addr[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg3[14]),
        .I1(addr[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[16]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[16]_i_5_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[16]_i_4 
       (.I0(slv_reg7[16]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(slv_reg3__0[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[17]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[17]_i_5_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[17]_i_4 
       (.I0(slv_reg7[17]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg3__0[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[18]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[18]_i_5_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[18]_i_4 
       (.I0(slv_reg7[18]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg3__0[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[19]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[19]_i_5_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[19]_i_4 
       (.I0(slv_reg7[19]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg3__0[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg3[1]),
        .I1(addr[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[20]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[20]_i_5_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[20]_i_4 
       (.I0(slv_reg7[20]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg3__0[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[21]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[21]_i_5_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg7[21]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg3__0[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[22]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[22]_i_5_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg7[22]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg3__0[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[23]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[23]_i_5_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg7[23]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg3__0[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[24]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[24]_i_5_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg7[24]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg3__0[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[25]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[25]_i_5_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg7[25]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg3__0[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[26]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[26]_i_5_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg7[26]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg3__0[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[27]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[27]_i_5_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg7[27]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg3__0[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[28]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[28]_i_5_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg7[28]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg3__0[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[29]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[29]_i_5_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg7[29]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg3__0[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg3[2]),
        .I1(addr[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[30]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[30]_i_5_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg7[30]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg3__0[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[31]_i_5_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[31]_i_6_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[31]_i_5 
       (.I0(slv_reg7[31]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(slv_reg5__0[31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg3__0[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg3[3]),
        .I1(addr[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg3[4]),
        .I1(addr[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg3[5]),
        .I1(addr[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg3[6]),
        .I1(addr[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg3[7]),
        .I1(addr[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg3[8]),
        .I1(addr[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg3[9]),
        .I1(addr[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[0]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[0]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready),
        .I2(s_axi_wready),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[3]),
        .O(p_1_in[31]));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[0]),
        .Q(rst),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[1]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[3]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(addr[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(addr[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(addr[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(addr[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(addr[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(addr[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(addr[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(addr[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(addr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(addr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(addr[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(addr[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(addr[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(addr[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(addr[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(addr[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg3__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg3__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg3__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg3__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg3__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg3__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg3__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg3__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg3__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg3__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg3__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg3__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg3__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg3__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg3__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg3__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg5),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg5__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg5__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg5__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg5__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg5__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg5__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg5__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg5__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg5__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg5__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg5__0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg5__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg5__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg5__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg5__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg5__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg5__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg5__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg5__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg5__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg5__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg5__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg5__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg5__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg5__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg5__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg5__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg5__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg5__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg5__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg5__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface spi_interface_1
       (.D(reg_data_out[15:0]),
        .Q({slv_reg5__0[15:1],slv_reg5}),
        .addr(addr),
        .\axi_rdata_reg[0] (sel0),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_i_3_n_0 ),
        .\axi_rdata_reg[0]_1 (\axi_rdata[0]_i_4_n_0 ),
        .\axi_rdata_reg[10] (\axi_rdata_reg[10]_i_3_n_0 ),
        .\axi_rdata_reg[10]_0 (\axi_rdata[10]_i_4_n_0 ),
        .\axi_rdata_reg[11] (\axi_rdata_reg[11]_i_3_n_0 ),
        .\axi_rdata_reg[11]_0 (\axi_rdata[11]_i_4_n_0 ),
        .\axi_rdata_reg[12] (\axi_rdata_reg[12]_i_3_n_0 ),
        .\axi_rdata_reg[12]_0 (\axi_rdata[12]_i_4_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata_reg[13]_i_3_n_0 ),
        .\axi_rdata_reg[13]_0 (\axi_rdata[13]_i_4_n_0 ),
        .\axi_rdata_reg[14] (\axi_rdata_reg[14]_i_3_n_0 ),
        .\axi_rdata_reg[14]_0 (\axi_rdata[14]_i_4_n_0 ),
        .\axi_rdata_reg[15] (\axi_rdata_reg[15]_i_3_n_0 ),
        .\axi_rdata_reg[15]_0 (\axi_rdata[15]_i_4_n_0 ),
        .\axi_rdata_reg[15]_i_2_0 (slv_reg7[15:0]),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1]_i_3_n_0 ),
        .\axi_rdata_reg[1]_0 (\axi_rdata[1]_i_4_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata_reg[2]_i_3_n_0 ),
        .\axi_rdata_reg[2]_0 (\axi_rdata[2]_i_4_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata_reg[3]_i_3_n_0 ),
        .\axi_rdata_reg[3]_0 (\axi_rdata[3]_i_4_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4]_i_3_n_0 ),
        .\axi_rdata_reg[4]_0 (\axi_rdata[4]_i_4_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata_reg[5]_i_3_n_0 ),
        .\axi_rdata_reg[5]_0 (\axi_rdata[5]_i_4_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata_reg[6]_i_3_n_0 ),
        .\axi_rdata_reg[6]_0 (\axi_rdata[6]_i_4_n_0 ),
        .\axi_rdata_reg[7] (\axi_rdata_reg[7]_i_3_n_0 ),
        .\axi_rdata_reg[7]_0 (\axi_rdata[7]_i_4_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata_reg[8]_i_3_n_0 ),
        .\axi_rdata_reg[8]_0 (\axi_rdata[8]_i_4_n_0 ),
        .\axi_rdata_reg[9] (\axi_rdata_reg[9]_i_3_n_0 ),
        .\axi_rdata_reg[9]_0 (\axi_rdata[9]_i_4_n_0 ),
        .cs_n(cs_n),
        .miso(miso),
        .mosi(mosi),
        .mosi_i_6_0(slv_reg3),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .sclk(sclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_interface
   (cs_n,
    mosi,
    sclk,
    D,
    Q,
    s_axi_aclk,
    rst,
    mosi_i_6_0,
    addr,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[15]_i_2_0 ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[13]_0 ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[15]_0 ,
    miso);
  output cs_n;
  output mosi;
  output sclk;
  output [15:0]D;
  input [15:0]Q;
  input s_axi_aclk;
  input rst;
  input [15:0]mosi_i_6_0;
  input [15:0]addr;
  input [3:0]\axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[0]_1 ;
  input [15:0]\axi_rdata_reg[15]_i_2_0 ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[13]_0 ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[15] ;
  input \axi_rdata_reg[15]_0 ;
  input miso;

  wire [15:0]D;
  wire [15:0]Q;
  wire [15:0]addr;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire [3:0]\axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[15]_0 ;
  wire [15:0]\axi_rdata_reg[15]_i_2_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[9] ;
  wire \axi_rdata_reg[9]_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire busy;
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
  wire [15:0]data_out;
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
  wire \data_out_reg[15]_i_12_n_4 ;
  wire \data_out_reg[15]_i_12_n_5 ;
  wire \data_out_reg[15]_i_12_n_6 ;
  wire \data_out_reg[15]_i_12_n_7 ;
  wire \data_out_reg[15]_i_13_n_0 ;
  wire \data_out_reg[15]_i_13_n_1 ;
  wire \data_out_reg[15]_i_13_n_2 ;
  wire \data_out_reg[15]_i_13_n_3 ;
  wire \data_out_reg[15]_i_13_n_4 ;
  wire \data_out_reg[15]_i_13_n_5 ;
  wire \data_out_reg[15]_i_13_n_6 ;
  wire \data_out_reg[15]_i_13_n_7 ;
  wire \data_out_reg[15]_i_15_n_0 ;
  wire \data_out_reg[15]_i_15_n_1 ;
  wire \data_out_reg[15]_i_15_n_2 ;
  wire \data_out_reg[15]_i_15_n_3 ;
  wire \data_out_reg[15]_i_15_n_4 ;
  wire \data_out_reg[15]_i_15_n_5 ;
  wire \data_out_reg[15]_i_15_n_6 ;
  wire \data_out_reg[15]_i_15_n_7 ;
  wire \data_out_reg[15]_i_16_n_0 ;
  wire \data_out_reg[15]_i_16_n_1 ;
  wire \data_out_reg[15]_i_16_n_2 ;
  wire \data_out_reg[15]_i_16_n_3 ;
  wire \data_out_reg[15]_i_16_n_4 ;
  wire \data_out_reg[15]_i_16_n_5 ;
  wire \data_out_reg[15]_i_16_n_6 ;
  wire \data_out_reg[15]_i_16_n_7 ;
  wire \data_out_reg[15]_i_27_n_0 ;
  wire \data_out_reg[15]_i_27_n_1 ;
  wire \data_out_reg[15]_i_27_n_2 ;
  wire \data_out_reg[15]_i_27_n_3 ;
  wire \data_out_reg[15]_i_27_n_4 ;
  wire \data_out_reg[15]_i_27_n_5 ;
  wire \data_out_reg[15]_i_27_n_6 ;
  wire \data_out_reg[15]_i_27_n_7 ;
  wire \data_out_reg[15]_i_36_n_2 ;
  wire \data_out_reg[15]_i_36_n_3 ;
  wire \data_out_reg[15]_i_36_n_5 ;
  wire \data_out_reg[15]_i_36_n_6 ;
  wire \data_out_reg[15]_i_36_n_7 ;
  wire \data_out_reg[15]_i_8_n_0 ;
  wire \data_out_reg[15]_i_8_n_1 ;
  wire \data_out_reg[15]_i_8_n_2 ;
  wire \data_out_reg[15]_i_8_n_3 ;
  wire \data_out_reg[15]_i_8_n_4 ;
  wire \data_out_reg[15]_i_8_n_5 ;
  wire \data_out_reg[15]_i_8_n_6 ;
  wire \data_out_reg[15]_i_8_n_7 ;
  wire \data_out_reg[15]_i_9_n_0 ;
  wire \data_out_reg[15]_i_9_n_1 ;
  wire \data_out_reg[15]_i_9_n_2 ;
  wire \data_out_reg[15]_i_9_n_3 ;
  wire \data_out_reg[15]_i_9_n_4 ;
  wire \data_out_reg[15]_i_9_n_5 ;
  wire \data_out_reg[15]_i_9_n_6 ;
  wire \data_out_reg[15]_i_9_n_7 ;
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
  wire mosi_i_10_n_0;
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
  wire [15:0]mosi_i_6_0;
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
  wire rst;
  wire s_axi_aclk;
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

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [0]),
        .I1(busy),
        .I2(\axi_rdata_reg[0] [1]),
        .I3(Q[0]),
        .I4(\axi_rdata_reg[0] [0]),
        .I5(data_out[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [10]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[10]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [11]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[11]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [12]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[12]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [13]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[13]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [14]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[14]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[15]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [15]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[15]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [1]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[1]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[2]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [2]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[2]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [3]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [4]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[5]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [5]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[5]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [6]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[6]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[7]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [7]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[7]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [8]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[8]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_5 
       (.I0(\axi_rdata_reg[15]_i_2_0 [9]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(Q[9]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(data_out[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_0 ),
        .O(D[0]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata_reg[0]_1 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10] ),
        .O(D[10]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata_reg[10]_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] ),
        .O(D[11]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata_reg[11]_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12] ),
        .O(D[12]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata_reg[12]_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13] ),
        .O(D[13]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata_reg[13]_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14] ),
        .O(D[14]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata_reg[14]_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15] ),
        .O(D[15]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata_reg[15]_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .O(D[1]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata_reg[1]_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2] ),
        .O(D[2]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata_reg[2]_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3] ),
        .O(D[3]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata_reg[3]_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4] ),
        .O(D[4]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata_reg[4]_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5] ),
        .O(D[5]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata_reg[5]_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6] ),
        .O(D[6]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata_reg[6]_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7] ),
        .O(D[7]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata_reg[7]_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8] ),
        .O(D[8]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata_reg[8]_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9] ),
        .O(D[9]),
        .S(\axi_rdata_reg[0] [3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata_reg[9]_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(\axi_rdata_reg[0] [2]));
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
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_5 ),
        .Q(cnt_clk_reg[10]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[8]_i_1_n_4 ),
        .Q(cnt_clk_reg[11]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[12] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_6 ),
        .Q(cnt_clk_reg[13]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_5 ),
        .Q(cnt_clk_reg[14]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[12]_i_1_n_4 ),
        .Q(cnt_clk_reg[15]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[16] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_6 ),
        .Q(cnt_clk_reg[17]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_5 ),
        .Q(cnt_clk_reg[18]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[16]_i_1_n_4 ),
        .Q(cnt_clk_reg[19]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_6 ),
        .Q(cnt_clk_reg[1]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[20] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_6 ),
        .Q(cnt_clk_reg[21]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_5 ),
        .Q(cnt_clk_reg[22]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[20]_i_1_n_4 ),
        .Q(cnt_clk_reg[23]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[24] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_6 ),
        .Q(cnt_clk_reg[25]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_5 ),
        .Q(cnt_clk_reg[26]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[24]_i_1_n_4 ),
        .Q(cnt_clk_reg[27]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[28] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_6 ),
        .Q(cnt_clk_reg[29]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_5 ),
        .Q(cnt_clk_reg[2]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_5 ),
        .Q(cnt_clk_reg[30]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[28]_i_1_n_4 ),
        .Q(cnt_clk_reg[31]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[0]_i_1_n_4 ),
        .Q(cnt_clk_reg[3]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_6 ),
        .Q(cnt_clk_reg[5]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_5 ),
        .Q(cnt_clk_reg[6]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_clk_reg[4]_i_1_n_4 ),
        .Q(cnt_clk_reg[7]),
        .R(cs_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[8] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_5 ),
        .Q(cnt_num_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[11] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[8]_i_1_n_4 ),
        .Q(cnt_num_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[12] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_6 ),
        .Q(cnt_num_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[14] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_5 ),
        .Q(cnt_num_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[15] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[12]_i_1_n_4 ),
        .Q(cnt_num_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[16] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_6 ),
        .Q(cnt_num_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[18] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_5 ),
        .Q(cnt_num_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[19] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[16]_i_1_n_4 ),
        .Q(cnt_num_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[1] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_6 ),
        .Q(cnt_num_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[20] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_6 ),
        .Q(cnt_num_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[22] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_5 ),
        .Q(cnt_num_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[23] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[20]_i_1_n_4 ),
        .Q(cnt_num_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[24] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_6 ),
        .Q(cnt_num_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[26] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_5 ),
        .Q(cnt_num_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[27] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[24]_i_1_n_4 ),
        .Q(cnt_num_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[28] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_6 ),
        .Q(cnt_num_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[2] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_5 ),
        .Q(cnt_num_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[30] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_5 ),
        .Q(cnt_num_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[31] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[28]_i_1_n_4 ),
        .Q(cnt_num_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[3] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[0]_i_2_n_4 ),
        .Q(cnt_num_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[4] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_6 ),
        .Q(cnt_num_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[6] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_5 ),
        .Q(cnt_num_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[7] 
       (.C(s_axi_aclk),
        .CE(\cnt_num[0]_i_1_n_0 ),
        .D(\cnt_num_reg[4]_i_1_n_4 ),
        .Q(cnt_num_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_num_reg[8] 
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
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
       (.C(s_axi_aclk),
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
        .I4(Q[0]),
        .I5(rst),
        .O(next_state1_out));
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
       (.C(s_axi_aclk),
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
       (.I0(\data_out_reg[15]_i_8_n_6 ),
        .I1(\data_out[15]_i_5_n_0 ),
        .I2(\data_out[15]_i_6_n_0 ),
        .I3(\data_out[15]_i_7_n_0 ),
        .I4(\data_out_reg[15]_i_8_n_5 ),
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
       (.I0(\data_out_reg[15]_i_8_n_7 ),
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
       (.I0(\data_out_reg[15]_i_8_n_7 ),
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
        .I1(\data_out_reg[15]_i_8_n_7 ),
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
       (.I0(\data_out_reg[15]_i_16_n_7 ),
        .I1(\data_out_reg[15]_i_27_n_4 ),
        .I2(\data_out_reg[15]_i_16_n_5 ),
        .I3(\data_out_reg[15]_i_16_n_6 ),
        .O(\data_out[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_11 
       (.I0(\data_out_reg[15]_i_27_n_7 ),
        .I1(\data_out_reg[15]_i_9_n_4 ),
        .I2(\data_out_reg[15]_i_27_n_5 ),
        .I3(\data_out_reg[15]_i_27_n_6 ),
        .O(\data_out[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_14 
       (.I0(\data_out_reg[15]_i_36_n_7 ),
        .I1(\data_out_reg[15]_i_12_n_4 ),
        .I2(\data_out_reg[15]_i_36_n_5 ),
        .I3(\data_out_reg[15]_i_36_n_6 ),
        .O(\data_out[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_17 
       (.I0(\data_out_reg[15]_i_13_n_7 ),
        .I1(\data_out_reg[15]_i_15_n_4 ),
        .I2(\data_out_reg[15]_i_13_n_5 ),
        .I3(\data_out_reg[15]_i_13_n_6 ),
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
        .I3(\data_out_reg[15]_i_8_n_5 ),
        .I4(\data_out_reg[15]_i_8_n_6 ),
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
       (.I0(\data_out_reg[15]_i_8_n_7 ),
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
       (.I0(\data_out_reg[15]_i_9_n_6 ),
        .I1(\data_out_reg[15]_i_9_n_5 ),
        .I2(\data_out_reg[15]_i_8_n_4 ),
        .I3(\data_out_reg[15]_i_9_n_7 ),
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
       (.I0(\data_out_reg[15]_i_12_n_6 ),
        .I1(\data_out_reg[15]_i_12_n_5 ),
        .I2(\data_out_reg[15]_i_13_n_4 ),
        .I3(\data_out_reg[15]_i_12_n_7 ),
        .I4(\data_out[15]_i_14_n_0 ),
        .O(\data_out[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[15]_i_7 
       (.I0(\data_out_reg[15]_i_15_n_6 ),
        .I1(\data_out_reg[15]_i_15_n_5 ),
        .I2(\data_out_reg[15]_i_16_n_4 ),
        .I3(\data_out_reg[15]_i_15_n_7 ),
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
       (.I0(\data_out_reg[15]_i_8_n_6 ),
        .I1(\data_out_reg[15]_i_8_n_5 ),
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
       (.I0(\data_out_reg[15]_i_8_n_5 ),
        .I1(\data_out[15]_i_5_n_0 ),
        .I2(\data_out[15]_i_6_n_0 ),
        .I3(\data_out[15]_i_7_n_0 ),
        .I4(\data_out_reg[15]_i_8_n_6 ),
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
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[15]_i_1_n_0 ),
        .Q(data_out[15]),
        .R(1'b0));
  CARRY4 \data_out_reg[15]_i_12 
       (.CI(\data_out_reg[15]_i_13_n_0 ),
        .CO({\data_out_reg[15]_i_12_n_0 ,\data_out_reg[15]_i_12_n_1 ,\data_out_reg[15]_i_12_n_2 ,\data_out_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_reg[15]_i_12_n_4 ,\data_out_reg[15]_i_12_n_5 ,\data_out_reg[15]_i_12_n_6 ,\data_out_reg[15]_i_12_n_7 }),
        .S(p_0_in[28:25]));
  CARRY4 \data_out_reg[15]_i_13 
       (.CI(\data_out_reg[15]_i_15_n_0 ),
        .CO({\data_out_reg[15]_i_13_n_0 ,\data_out_reg[15]_i_13_n_1 ,\data_out_reg[15]_i_13_n_2 ,\data_out_reg[15]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_reg[15]_i_13_n_4 ,\data_out_reg[15]_i_13_n_5 ,\data_out_reg[15]_i_13_n_6 ,\data_out_reg[15]_i_13_n_7 }),
        .S(p_0_in[24:21]));
  CARRY4 \data_out_reg[15]_i_15 
       (.CI(\data_out_reg[15]_i_16_n_0 ),
        .CO({\data_out_reg[15]_i_15_n_0 ,\data_out_reg[15]_i_15_n_1 ,\data_out_reg[15]_i_15_n_2 ,\data_out_reg[15]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_reg[15]_i_15_n_4 ,\data_out_reg[15]_i_15_n_5 ,\data_out_reg[15]_i_15_n_6 ,\data_out_reg[15]_i_15_n_7 }),
        .S(p_0_in[20:17]));
  CARRY4 \data_out_reg[15]_i_16 
       (.CI(\data_out_reg[15]_i_27_n_0 ),
        .CO({\data_out_reg[15]_i_16_n_0 ,\data_out_reg[15]_i_16_n_1 ,\data_out_reg[15]_i_16_n_2 ,\data_out_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_reg[15]_i_16_n_4 ,\data_out_reg[15]_i_16_n_5 ,\data_out_reg[15]_i_16_n_6 ,\data_out_reg[15]_i_16_n_7 }),
        .S(p_0_in[16:13]));
  CARRY4 \data_out_reg[15]_i_27 
       (.CI(\data_out_reg[15]_i_9_n_0 ),
        .CO({\data_out_reg[15]_i_27_n_0 ,\data_out_reg[15]_i_27_n_1 ,\data_out_reg[15]_i_27_n_2 ,\data_out_reg[15]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_reg[15]_i_27_n_4 ,\data_out_reg[15]_i_27_n_5 ,\data_out_reg[15]_i_27_n_6 ,\data_out_reg[15]_i_27_n_7 }),
        .S(p_0_in[12:9]));
  CARRY4 \data_out_reg[15]_i_36 
       (.CI(\data_out_reg[15]_i_12_n_0 ),
        .CO({\NLW_data_out_reg[15]_i_36_CO_UNCONNECTED [3:2],\data_out_reg[15]_i_36_n_2 ,\data_out_reg[15]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_reg[15]_i_36_O_UNCONNECTED [3],\data_out_reg[15]_i_36_n_5 ,\data_out_reg[15]_i_36_n_6 ,\data_out_reg[15]_i_36_n_7 }),
        .S({1'b0,p_0_in[31:29]}));
  CARRY4 \data_out_reg[15]_i_8 
       (.CI(1'b0),
        .CO({\data_out_reg[15]_i_8_n_0 ,\data_out_reg[15]_i_8_n_1 ,\data_out_reg[15]_i_8_n_2 ,\data_out_reg[15]_i_8_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,\data_out[15]_i_19_n_0 }),
        .O({\data_out_reg[15]_i_8_n_4 ,\data_out_reg[15]_i_8_n_5 ,\data_out_reg[15]_i_8_n_6 ,\data_out_reg[15]_i_8_n_7 }),
        .S({\data_out[15]_i_20_n_0 ,\data_out[15]_i_21_n_0 ,\data_out[15]_i_22_n_0 ,cnt_num_reg[1]}));
  CARRY4 \data_out_reg[15]_i_9 
       (.CI(\data_out_reg[15]_i_8_n_0 ),
        .CO({\data_out_reg[15]_i_9_n_0 ,\data_out_reg[15]_i_9_n_1 ,\data_out_reg[15]_i_9_n_2 ,\data_out_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[5]}),
        .O({\data_out_reg[15]_i_9_n_4 ,\data_out_reg[15]_i_9_n_5 ,\data_out_reg[15]_i_9_n_6 ,\data_out_reg[15]_i_9_n_7 }),
        .S({p_0_in[8:6],cnt_num_reg[5]}));
  FDRE \data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_out_reg[9] 
       (.C(s_axi_aclk),
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
        .O(mosi_i_10_n_0));
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
       (.I0(mosi_i_6_0[14]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[15]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_18_n_0),
        .O(mosi_i_14_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_15
       (.I0(mosi_i_6_0[10]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[11]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_19_n_0),
        .O(mosi_i_15_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_16
       (.I0(mosi_i_6_0[6]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[7]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_20_n_0),
        .O(mosi_i_16_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    mosi_i_17
       (.I0(mosi_i_6_0[2]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[3]),
        .I4(mosi_reg_i_5_n_7),
        .I5(mosi_i_21_n_0),
        .O(mosi_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_18
       (.I0(mosi_i_6_0[12]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[13]),
        .O(mosi_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_19
       (.I0(mosi_i_6_0[8]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_20
       (.I0(mosi_i_6_0[4]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[5]),
        .O(mosi_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    mosi_i_21
       (.I0(mosi_i_6_0[0]),
        .I1(cnt_num_reg[0]),
        .I2(addr[15]),
        .I3(mosi_i_6_0[1]),
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
       (.C(s_axi_aclk),
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
        .DI({1'b0,1'b0,mosi_i_10_n_0,1'b0}),
        .O({mosi_reg_i_5_n_4,mosi_reg_i_5_n_5,mosi_reg_i_5_n_6,mosi_reg_i_5_n_7}),
        .S({p_0_in[4:3],cnt_num_reg[2],p_0_in[1]}));
  FDRE old_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
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
       (.C(s_axi_aclk),
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
