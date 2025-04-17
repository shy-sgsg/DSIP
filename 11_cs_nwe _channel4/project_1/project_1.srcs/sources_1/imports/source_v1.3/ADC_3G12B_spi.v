//`include "ADC3G12B_adc_def.v"

// ---------------------------------------- 
// ADC3G12BIT - JTAG_SPI
// Sel JTAG or SPI  
// ----------------------------------------
module JTAG_SPI(
    SDO_EN  ,
    SCLK    ,
    SDI     ,
    SDO     ,
    CSN     ,
    SEL ,
    RST     ,
    // JTAG
    TCK     ,
    TDI     ,
    TDO     ,
    TMS     ,
    TRST    ,
    // SPI
    S_SCLK  ,
    S_SDI   ,
    S_SDO   ,
    S_CSN   ,
    S_RST
);

// ---------- ports --------------------------------------
input SEL,SCLK,SDI,CSN,RST;
output SDO_EN,SDO;
output TCK,TDI,TMS,TRST;
input TDO;
output S_SCLK,S_SDI,S_CSN,S_RST;
input S_SDO;

// ---------- SEL --------------------------------------
assign TCK      = SCLK;
assign TDI      = (SEL==1'b1) ? SDI   : 1'b0 ;
assign TMS      = (SEL==1'b1) ? CSN   : 1'b1 ;
assign TRST     = (SEL==1'b1) ? RST   : 1'b0 ;
assign S_SCLK   = SCLK;
assign S_SDI    = (SEL==1'b1) ? 1'b0  : SDI  ;
assign S_CSN    = (SEL==1'b1) ? 1'b1  : CSN  ;
assign S_RST    = (SEL==1'b1) ? 1'b0  : RST  ;
assign SDO      = (SEL==1'b1) ? TDO   : S_SDO;
assign SDO_EN = SEL|(~CSN);
endmodule

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------





// ---------------------------------------- 

// ADC3G12BIT - SPI 

// ----------------------------------------



module SPI(

    clk     ,

    

    // SPI

    sclk    ,

    sdin    ,

    cs_n    ,

    srst    ,

    sdout   ,



    // addr-reg

    write           ,
    read            ,
    addr            ,
    data_in         ,
    rw_done         ,
    cs_n_ana        ,
    cs_n_cala       ,
    cs_n_ddc        ,
    cs_n_apb        ,
    data_out_ana    ,
    data_out_cala   ,
    data_out_ddc    ,
    data_out_apb    ,
    cs_n_calb1      ,
    cs_n_calb2      ,
    cs_n_calb3      ,
    cs_n_calb4      ,
    cs_n_calb5      ,
    data_out_calb1  ,
    data_out_calb2  ,
    data_out_calb3  ,
    data_out_calb4  ,
    data_out_calb5  ,
    //EFUSE
    cs_n_ef     ,
    data_out_ef

);





// ---------- ports --------------------------------------

input clk;

input sclk,sdin,cs_n,srst;

output sdout;



output reg write,read;

output  [12:0] addr;

output  [15:0] data_in;

input rw_done;



output cs_n_ana,cs_n_cala,cs_n_ddc,cs_n_apb,cs_n_calb1,cs_n_calb2,cs_n_calb3,cs_n_calb4,cs_n_calb5,cs_n_ef;

input [15:0] data_out_ana,data_out_cala,data_out_ddc,data_out_apb,data_out_ef,data_out_calb1,data_out_calb2,data_out_calb3,data_out_calb4,data_out_calb5;



// ---------- SPI --------------------------------------

reg [15:0] bit_addr;

reg [15:0] bit_data;

reg [7:0]  bit_cnt;

reg [15:0] data_out,reg_data;





always @ (posedge sclk or posedge srst)

begin

    if (srst)

        bit_cnt <= 1'b0;

        

    else if (~cs_n)

        if (bit_cnt == 8'd35)

            bit_cnt <= 1'b0;

        else

            bit_cnt <= bit_cnt + 1'b1;

    else

        bit_cnt <= 1'b0;

end



always @ (posedge sclk or posedge srst)

begin

    if (srst)

        begin

        bit_addr <= 16'd0;

        bit_data <= 16'd0;

        end

    else if (~cs_n)

        if (bit_cnt < 8'd16)    // bit15, receiving the last addr bit

            begin

            bit_addr[0] <= sdin;

            bit_addr[15:1] <= bit_addr[14:0];

            end
//------------------------------------------------------------------------
//-- 这里为什么要空四个cnt？或许跟下面的spi_i的上升沿检测有关？
//-- 答：
//------------------------------------------------------------------------

        else if (bit_cnt > 8'd19)   // bit31, receiving the first data bit

            begin

            bit_data[0] <= sdin;

            bit_data[15:1] <= bit_data[14:0];

            end

end



wire spi_i;

assign spi_i = (bit_cnt >= 8'd16) ? 1'b1 : 1'b0;



always @ (posedge sclk or posedge srst)

begin

    if (srst)

        begin

        reg_data <= 1'b0;

        end

        

    else if ((bit_cnt == 8'd19) && (~bit_addr[15])) 

        //reg_data <= data_out;
        reg_data <= 16'hc57e;

        

    else if ((bit_cnt >= 8'd20) && (~bit_addr[15]))

        begin

        reg_data[15:1] <= reg_data[14:0];

        end

end

assign sdout = reg_data[15];





// ---------- CLK 100M Logic --------------------------------------

reg spi_i_r1,spi_i_r2,spi_i_r3;

reg [15:0] bit_addr_r;

reg [15:0] bit_data_r;

reg [8:0] cs_n_adc;



always @ (posedge clk or posedge srst)

begin

    if (srst)

        begin

        spi_i_r1 <= 1'b0;

        spi_i_r2 <= 1'b0;

        spi_i_r3 <= 1'b0;

        bit_addr_r <= 1'b0;

        bit_data_r <= 1'b0;

        read <= 1'b0;

        write <= 1'b0;

        cs_n_adc <= 9'b1_1111_1111;

        data_out <= 1'b0;

        end

    else

        begin

        spi_i_r1 <= spi_i;

        spi_i_r2 <= spi_i_r1;

        spi_i_r3 <= spi_i_r2;

            

        if ((~spi_i_r3) && (spi_i_r2))  // posedge

            begin

            bit_addr_r <= bit_addr;

            if (~bit_addr[15])

                read <= 1'b1;

            end

        else if (rw_done)

            begin

            read <= 1'b0;

            end

            

        

        if ((spi_i_r3) && (~spi_i_r2)) // negedge

            begin

            bit_data_r <= bit_data;

            if (bit_addr_r[15])

                write <= 1'b1;

            end

        else if (rw_done)

            begin

            write <= 1'b0;

            end

            

        if (bit_addr_r[14:13] == 2'b10)

            begin

            cs_n_adc <= 9'b0_1111_1111;

            data_out <= data_out_apb;

            end

        else if (bit_addr_r[14:13] == 2'b01)

            begin

            cs_n_adc <= 9'b1_0111_1111;

            data_out <= data_out_ddc;

            end

        else if (bit_addr_r[14:13] == 2'b00)

            case (bit_addr_r[12:10])

                3'b000  :   begin

                            cs_n_adc <= 9'b1_1111_1110;

                            data_out <= data_out_ana;

                            end

                3'b001  :   begin

                            cs_n_adc <= 9'b1_1111_1101;

                            data_out <= data_out_cala;

                            end

                3'b010  :   begin

                            cs_n_adc <= 9'b1_1111_1011;

                            data_out <= data_out_ef;

                            end

                3'b011  :   begin

                            cs_n_adc <= 9'b1_1111_0111;

                            data_out <= data_out_calb2;

                            end

                3'b100  :   begin

                            cs_n_adc <= 9'b1_1110_1111;

                            data_out <= data_out_calb3;

                            end

                3'b101  :   begin

                            cs_n_adc <= 9'b1_1101_1111;

                            data_out <= data_out_calb4;

                            end

                3'b110  :   begin

                            cs_n_adc <= 9'b1_1011_1111;

                            data_out <= data_out_calb5;

                            end

                default :   begin

                            cs_n_adc <= 9'b1_1111_1111;

                            data_out <= 1'b0;

                            end     

            endcase

        end

end





assign addr =  bit_addr_r[12:0];

assign data_in = bit_data_r;

assign cs_n_ana   = cs_n_adc[0];

assign cs_n_cala  = cs_n_adc[1];

assign cs_n_ef = cs_n_adc[2];

assign cs_n_calb2 = cs_n_adc[3];

assign cs_n_calb3 = cs_n_adc[4];

assign cs_n_calb4 = cs_n_adc[5];

assign cs_n_calb5 = cs_n_adc[6];

assign cs_n_ddc   = cs_n_adc[7];

assign cs_n_apb   = cs_n_adc[8];





endmodule



// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------





// ------------------------------------

// ADC3G12BIT - Reg_Global 

// Reg for Global

// addr : 10bit

// reg  : 16bit

// ------------------------------------



module Reg_Global # (
    parameter [5:0] ADDR_WIDTH     = 6'd10 ,
    parameter [5:0] DATA_WIDTH     = 6'd16
)
(
    clk                     ,
    rst                     ,
    cs_n                    ,
    //addr-reg
    write                   ,
    read                    ,
    addr                    ,
    data_in                 ,
    data_out                ,
    rw_done                 ,
    //cal
    offset_key                      ,
    gain_key                        ,
    skew_key                        ,
    key_TI_cal_S                ,
    skew_key_sel                ,
    wt                              ,
    ADC_dout_sel                    ,
    C_cal_key                   ,
    MDAC_cal_key                ,
    key_C_cal_S                 ,
    key_MDAC_cal_S          ,
    skew_acc_sign                   ,
    skew_mode_sel                   ,
    o_mis1_din                  ,
    o_mis2_din                  ,
    o_mis3_din                  ,
    o_mis4_din                  ,
    g_mis2_din                  ,
    g_mis3_din                  ,
    g_mis4_din                  ,
    Los1_din                ,
    Hos1_din                ,
    Los2_din                ,
    Hos2_din                ,
    Los3_din                ,
    Hos3_din                ,
    Los4_din                ,
    Hos4_din                ,
    Lga2_din                ,
    Hga2_din                ,
    Lga3_din                ,
    Hga3_din                ,
    Lga4_din                ,
    Hga4_din                ,
    Lsk2_din                ,
    Hsk2_din                ,
    Lsk3_din                ,
    Hsk3_din                ,
    Lsk4_din                ,
    Hsk4_din                ,
    A1_din                  ,
    A2_din                  ,
    A3_din                  ,
    A4_din                  ,
    B2_din                  ,
    B3_din                  ,
    B4_din                  ,
    C2_din                  ,
    C3_din                  ,
    C4_din                  ,
    clk_D_din                   ,                  
    C_weight1_1_1_din       ,
    C_weight1_1_2_din       ,
    C_weight1_1_3_din       ,
    C_weight1_1_4_din       ,
    C_weight1_1_5_din       ,
    C_weight1_1_6_din       ,
    C_weight1_2_1_din       ,
    C_weight1_2_2_din       ,
    C_weight1_2_3_din       ,
    C_weight1_2_4_din       ,
    C_weight1_2_5_din       ,
    C_weight1_2_6_din       ,
    C_weight1_3_1_din       ,
    C_weight1_3_2_din       ,
    C_weight1_3_3_din       ,
    C_weight1_3_4_din       ,
    C_weight1_3_5_din       ,
    C_weight1_3_6_din       ,
    C_weight2_1_1_din       ,
    C_weight2_1_2_din       ,
    C_weight2_1_3_din       ,
    C_weight2_1_4_din       ,
    C_weight2_1_5_din       ,
    C_weight2_1_6_din       ,
    C_weight2_2_1_din       ,
    C_weight2_2_2_din       ,
    C_weight2_2_3_din       ,
    C_weight2_2_4_din       ,
    C_weight2_2_5_din       ,
    C_weight2_2_6_din       ,
    C_weight2_3_1_din       ,
    C_weight2_3_2_din       ,
    C_weight2_3_3_din       ,
    C_weight2_3_4_din       ,
    C_weight2_3_5_din       ,
    C_weight2_3_6_din       ,
    C_weight3_1_1_din       ,
    C_weight3_1_2_din       ,
    C_weight3_1_3_din       ,
    C_weight3_1_4_din       ,
    C_weight3_1_5_din       ,
    C_weight3_1_6_din       ,
    C_weight3_2_1_din       ,
    C_weight3_2_2_din       ,
    C_weight3_2_3_din       ,
    C_weight3_2_4_din       ,
    C_weight3_2_5_din       ,
    C_weight3_2_6_din       ,
    C_weight3_3_1_din       ,
    C_weight3_3_2_din       ,
    C_weight3_3_3_din       ,
    C_weight3_3_4_din       ,
    C_weight3_3_5_din       ,
    C_weight3_3_6_din       ,
    C_weight4_1_1_din       ,
    C_weight4_1_2_din       ,
    C_weight4_1_3_din       ,
    C_weight4_1_4_din       ,
    C_weight4_1_5_din       ,
    C_weight4_1_6_din       ,
    C_weight4_2_1_din       ,
    C_weight4_2_2_din       ,
    C_weight4_2_3_din       ,
    C_weight4_2_4_din       ,
    C_weight4_2_5_din       ,
    C_weight4_2_6_din       ,
    C_weight4_3_1_din       ,
    C_weight4_3_2_din       ,
    C_weight4_3_3_din       ,
    C_weight4_3_4_din       ,
    C_weight4_3_5_din       ,
    C_weight4_3_6_din       ,
    MDAC_weight1_1_din      ,
    MDAC_weight1_2_din      ,
    MDAC_weight1_3_din      ,
    MDAC_weight2_1_din      ,
    MDAC_weight2_2_din      ,
    MDAC_weight2_3_din      ,
    MDAC_weight3_1_din      ,
    MDAC_weight3_2_din      ,
    MDAC_weight3_3_din      ,
    MDAC_weight4_1_din      ,
    MDAC_weight4_2_din      ,
    MDAC_weight4_3_din      ,
    ADC_data_overflow       ,
    ADC_data_overflow_clr   ,
    o_mis1_dout             ,
    o_mis2_dout             ,
    o_mis3_dout             ,
    o_mis4_dout             ,
    g_mis2_dout             ,
    g_mis3_dout             ,
    g_mis4_dout             ,
    t_mis1_dout             ,
    t_mis2_dout             ,
    t_mis3_dout             ,
    t_mis4_dout             ,
    offset1_dout            ,
    offset2_dout            ,
    offset3_dout            ,
    offset4_dout            ,
    gain2_dout              ,
    gain3_dout              ,
    gain4_dout              ,
    skew2_dout              ,
    skew3_dout              ,
    skew4_dout              ,
    Los1_dout               ,
    Hos1_dout               , 
    Los2_dout               ,
    Hos2_dout               , 
    Los3_dout               ,
    Hos3_dout               , 
    Los4_dout               ,
    Hos4_dout               ,
    Lga2_dout               ,
    Hga2_dout               ,
    Lga3_dout               ,
    Hga3_dout               ,
    Lga4_dout               ,
    Hga4_dout               ,
    Lsk2_dout               ,
    Hsk2_dout               ,
    Lsk3_dout               ,
    Hsk3_dout               ,
    Lsk4_dout               ,
    Hsk4_dout               ,
     A1_dout                ,
     A2_dout                ,
     A3_dout                ,
     A4_dout                ,
     B2_dout                ,
     B3_dout                ,
     B4_dout                ,
     C2_dout                ,
     C3_dout                ,
     C4_dout                ,
    clk_D_dout              ,
    ADC_raw_sel		    ,
    // ports of serdes
    intr_o                  ,
    pslverr_o               ,
    strdata_valid_o         ,
    pll_lock_o              ,
    // reg for Global
    sys_rst                 ,//rest for the whole digital circuit
    PN_SET                  ,
    PN_RESET               ,
    CMP_SR                   ,
    D_AP_CAL                 ,
    DRETIMING                ,
    R1                      ,   
    R2                      ,
    D_OP                     ,
    D_BGA                    ,
    D_REF                    ,
    D_IN_BUF                 ,
    clk_ctrl        
);

// ---------- ports --------------------------------------

input clk,rst,cs_n;
input write,read;
input [ADDR_WIDTH-1:0] addr;
input [DATA_WIDTH-1:0] data_in;
input intr_o    ;
input pslverr_o ;
input strdata_valid_o;
input pll_lock_o    ;
output reg [DATA_WIDTH-1:0] data_out;
output reg rw_done;

output reg sys_rst; //rest for the whole digital circuit
output reg [11:0]   PN_SET      ;
output reg [11:0]   PN_RESET    ;
output reg [143:0]  CMP_SR      ;
output reg [15:0]   D_AP_CAL    ;
output reg [39:0]   DRETIMING   ;
output reg [47:0]   D_OP        ;
output reg [3:0]    D_BGA       ;
output reg [11:0]   D_REF       ;   
output reg [3:0]    D_IN_BUF    ;
output reg [7:0]    clk_ctrl    ;   
output reg [7:0]    R1      ;
output reg [7:0]    R2      ;


// cal
output reg  offset_key                     ;
output reg  gain_key                       ;
output reg  skew_key                       ;
output reg [3:0] key_TI_cal_S              ;
output reg [2:0] skew_key_sel              ;
output reg  wt                             ;
output reg  ADC_dout_sel                   ;
output reg [2:0] C_cal_key                 ;
output reg [2:0] MDAC_cal_key              ;
output reg [3:0] key_C_cal_S               ;
output reg [3:0] key_MDAC_cal_S            ;
output reg  skew_acc_sign                  ;
output reg  skew_mode_sel                  ;
output reg  signed [11:0] o_mis1_din                   ;
output reg  signed [11:0] o_mis2_din                   ;
output reg  signed [11:0] o_mis3_din                   ;
output reg  signed [11:0] o_mis4_din                   ;
output reg  signed [11:0] g_mis2_din                   ;
output reg  signed [11:0] g_mis3_din                   ;
output reg  signed [11:0] g_mis4_din                   ;
output reg signed [31:0] Los1_din                  ;
output reg  signed [31:0] Hos1_din                 ;
output reg  signed [31:0] Los2_din                 ;
output reg  signed [31:0] Hos2_din                 ;
output reg  signed [31:0] Los3_din                 ;
output reg  signed [31:0] Hos3_din                 ;
output reg  signed [31:0] Los4_din                 ;
output reg  signed [31:0] Hos4_din                 ;
output reg  signed [31:0] Lga2_din                 ;
output reg  signed [31:0] Hga2_din                 ;
output reg  signed [31:0] Lga3_din                 ;
output reg  signed [31:0] Hga3_din                 ;
output reg  signed [31:0] Lga4_din                 ;
output reg  signed [31:0] Hga4_din                 ;
output reg  signed [31:0] Lsk2_din                 ;
output reg  signed [31:0] Hsk2_din                 ;
output reg  signed [31:0] Lsk3_din                 ;
output reg  signed [31:0] Hsk3_din                 ;
output reg  signed [31:0] Lsk4_din                 ;
output reg  signed [31:0] Hsk4_din                 ;
output reg         [4:0] A1_din                    ;
output reg         [4:0] A2_din                    ;
output reg         [4:0] A3_din                    ;
output reg         [4:0] A4_din                    ;
output reg         [4:0] B2_din                    ;
output reg         [4:0] B3_din                    ;
output reg         [4:0] B4_din                    ;
output reg         [4:0] C2_din                    ;
output reg         [4:0] C3_din                    ;
output reg         [4:0] C4_din                    ;
output reg         [8:0] clk_D_din                 ;                          
output reg  signed  [7:0] C_weight1_1_1_din        ;
output reg  signed [7:0] C_weight1_1_2_din         ;
output reg  signed [7:0] C_weight1_1_3_din         ;
output reg  signed [7:0] C_weight1_1_4_din         ;
output reg  signed [7:0] C_weight1_1_5_din         ;
output reg  signed [7:0] C_weight1_1_6_din         ;
output reg  signed [7:0] C_weight1_2_1_din         ;
output reg  signed [7:0] C_weight1_2_2_din         ;
output reg  signed [7:0] C_weight1_2_3_din         ;
output reg  signed [7:0] C_weight1_2_4_din         ;
output reg  signed [7:0] C_weight1_2_5_din         ;
output reg  signed [7:0] C_weight1_2_6_din         ;
output reg  signed [7:0] C_weight1_3_1_din         ;
output reg  signed [7:0] C_weight1_3_2_din         ;
output reg  signed [7:0] C_weight1_3_3_din         ;
output reg  signed [7:0] C_weight1_3_4_din         ;
output reg  signed [7:0] C_weight1_3_5_din         ;
output reg  signed [7:0] C_weight1_3_6_din         ;
output reg  signed [7:0] C_weight2_1_1_din         ;
output reg  signed [7:0] C_weight2_1_2_din         ;
output reg  signed [7:0] C_weight2_1_3_din         ;
output reg  signed [7:0] C_weight2_1_4_din         ;
output reg  signed [7:0] C_weight2_1_5_din         ;
output reg  signed [7:0] C_weight2_1_6_din         ;
output reg  signed [7:0] C_weight2_2_1_din         ;
output reg  signed [7:0] C_weight2_2_2_din         ;
output reg  signed [7:0] C_weight2_2_3_din         ;
output reg  signed [7:0] C_weight2_2_4_din         ;
output reg  signed [7:0] C_weight2_2_5_din         ;
output reg  signed [7:0] C_weight2_2_6_din         ;
output reg  signed [7:0] C_weight2_3_1_din         ;
output reg  signed [7:0] C_weight2_3_2_din         ;
output reg  signed [7:0] C_weight2_3_3_din         ;
output reg  signed [7:0] C_weight2_3_4_din         ;
output reg  signed [7:0] C_weight2_3_5_din         ;
output reg  signed [7:0] C_weight2_3_6_din         ;
output reg  signed [7:0] C_weight3_1_1_din         ;
output reg  signed [7:0] C_weight3_1_2_din         ;
output reg  signed [7:0] C_weight3_1_3_din         ;
output reg  signed [7:0] C_weight3_1_4_din         ;
output reg  signed [7:0] C_weight3_1_5_din         ;
output reg  signed [7:0] C_weight3_1_6_din         ;
output reg  signed [7:0] C_weight3_2_1_din         ;
output reg  signed [7:0] C_weight3_2_2_din         ;
output reg  signed [7:0] C_weight3_2_3_din         ;
output reg  signed [7:0] C_weight3_2_4_din         ;
output reg  signed [7:0] C_weight3_2_5_din         ;
output reg  signed [7:0] C_weight3_2_6_din         ;
output reg  signed [7:0] C_weight3_3_1_din         ;
output reg  signed [7:0] C_weight3_3_2_din         ;
output reg  signed [7:0] C_weight3_3_3_din         ;
output reg  signed [7:0] C_weight3_3_4_din         ;
output reg  signed [7:0] C_weight3_3_5_din         ;
output reg  signed [7:0] C_weight3_3_6_din         ;
output reg  signed [7:0] C_weight4_1_1_din         ;
output reg  signed [7:0] C_weight4_1_2_din         ;
output reg  signed [7:0] C_weight4_1_3_din         ;
output reg  signed [7:0] C_weight4_1_4_din         ;
output reg  signed [7:0] C_weight4_1_5_din         ;
output reg  signed [7:0] C_weight4_1_6_din         ;
output reg  signed [7:0] C_weight4_2_1_din         ;
output reg  signed [7:0] C_weight4_2_2_din         ;
output reg  signed [7:0] C_weight4_2_3_din         ;
output reg  signed [7:0] C_weight4_2_4_din         ;
output reg  signed [7:0] C_weight4_2_5_din         ;
output reg  signed [7:0] C_weight4_2_6_din         ;
output reg  signed [7:0] C_weight4_3_1_din         ;
output reg  signed [7:0] C_weight4_3_2_din         ;
output reg  signed [7:0] C_weight4_3_3_din         ;
output reg  signed [7:0] C_weight4_3_4_din         ;
output reg  signed [7:0] C_weight4_3_5_din         ;
output reg  signed [7:0] C_weight4_3_6_din         ;
output reg  signed [7:0] MDAC_weight1_1_din         ;
output reg  signed [7:0] MDAC_weight1_2_din         ;
output reg  signed [7:0] MDAC_weight1_3_din        ;
output reg  signed [7:0] MDAC_weight2_1_din         ;
output reg  signed [7:0] MDAC_weight2_2_din         ;
output reg  signed [7:0] MDAC_weight2_3_din        ;
output reg signed  [7:0] MDAC_weight3_1_din         ;
output reg signed  [7:0] MDAC_weight3_2_din         ;
output reg signed  [7:0] MDAC_weight3_3_din        ;
output reg signed  [7:0] MDAC_weight4_1_din         ;
output reg signed  [7:0] MDAC_weight4_2_din         ;
output reg signed  [7:0] MDAC_weight4_3_din         ;
output reg 		 ADC_raw_sel		    ;
input                    ADC_data_overflow          ;
output reg               ADC_data_overflow_clr      ;
input      signed  [11:0] o_mis1_dout           ;
input      signed  [11:0] o_mis2_dout           ;
input      signed  [11:0] o_mis3_dout           ;
input      signed  [11:0] o_mis4_dout           ;
input      signed  [11:0] g_mis2_dout           ;
input      signed  [11:0] g_mis3_dout           ;
input      signed  [11:0] g_mis4_dout           ;
input              [9:0]  t_mis1_dout           ;
input              [9:0]  t_mis2_dout           ;
input              [9:0]  t_mis3_dout           ;
input              [9:0]  t_mis4_dout           ;
input signed       [31:0] offset1_dout          ;
input signed       [31:0] offset2_dout          ;
input signed       [31:0] offset3_dout          ;
input signed       [31:0] offset4_dout          ;
input signed       [31:0] gain2_dout            ;
input signed       [31:0] gain3_dout            ;
input signed       [31:0] gain4_dout            ;
input signed       [31:0] skew2_dout            ;
input signed       [31:0] skew3_dout            ;
input signed       [31:0] skew4_dout            ;
input signed       [31:0] Los1_dout             ;
input signed       [31:0] Hos1_dout             ;
input signed       [31:0] Los2_dout             ;
input signed       [31:0] Hos2_dout             ;
input signed       [31:0] Los3_dout             ;
input signed       [31:0] Hos3_dout             ;
input signed       [31:0] Los4_dout             ;
input signed       [31:0] Hos4_dout             ;
input signed       [31:0] Lga2_dout             ;
input signed       [31:0] Hga2_dout             ;
input signed       [31:0] Lga3_dout             ;
input signed       [31:0] Hga3_dout             ;
input signed       [31:0] Lga4_dout             ;
input signed       [31:0] Hga4_dout             ;
input signed       [31:0] Lsk2_dout             ;
input signed       [31:0] Hsk2_dout             ;
input signed       [31:0] Lsk3_dout             ;
input signed       [31:0] Hsk3_dout             ;
input signed       [31:0] Lsk4_dout             ;
input signed       [31:0] Hsk4_dout             ;
input              [4:0] A1_dout                ;
input              [4:0] A2_dout                ;
input              [4:0] A3_dout                ;
input              [4:0] A4_dout                ;
input              [4:0] B2_dout                ;
input              [4:0] B3_dout                ;
input              [4:0] B4_dout                ;
input              [4:0] C2_dout                ;
input              [4:0] C3_dout                ;
input              [4:0] C4_dout                ;
input              [8:0] clk_D_dout             ;

localparam [15:0] ChipID = 16'h0152;

// ---------- Addr Reg --------------------------------------
reg write_r1,write_r2,read_r1,read_r2;
reg [9:0] addr_r1,addr_r2;
reg [15:0] data_in_r1,data_in_r2;

always @(posedge clk or posedge rst)
begin
    if (rst)
        begin
        write_r1    <= 1'b0 ;
        write_r2    <= 1'b0 ;
        read_r1     <= 1'b0 ;
        read_r2     <= 1'b0 ;
        addr_r1     <= 1'b0 ;
        addr_r2     <= 1'b0 ;
        data_in_r1  <= 1'b0 ;
        data_in_r2  <= 1'b0 ;
        end
    else if (~cs_n)
        begin
        write_r1    <= write        ;
        write_r2    <= write_r1     ;
        read_r1     <= read         ;
        read_r2     <= read_r1      ;
        addr_r1     <= addr         ;
        addr_r2     <= addr_r1      ;
        data_in_r1  <= data_in      ;
        data_in_r2  <= data_in_r1   ;
        end
    else
        begin
        write_r1    <= 1'b0 ;
        write_r2    <= 1'b0 ;
        read_r1     <= 1'b0 ;
        read_r2     <= 1'b0 ;
        addr_r1     <= 1'b0 ;
        addr_r2     <= 1'b0 ;
        data_in_r1  <= 1'b0 ;
        data_in_r2  <= 1'b0 ;
        end

end 

always @(posedge clk or posedge rst)
begin
    if (rst)
        begin
        PN_SET      <= 12'h0;
        PN_RESET    <= 12'hfff;
        CMP_SR      <= 144'hffffffffffffffffffffffffffffffffffff;
        D_AP_CAL    <= 16'b1000100010001000;
        DRETIMING   <= 40'b0;
        D_OP[15:0]  <= 16'b1110_1110_1110_1110;
        D_OP[31:16] <= 16'b1110_1110_1110_1110;
        D_OP[47:32] <= 16'b1110_1110_1110_1110;
        D_BGA       <= 4'b1110;
        D_REF       <= 12'b010010010010;
        D_IN_BUF    <= 4'b1110;     
        clk_ctrl    <= 8'h00;
        sys_rst     <= 1'b0;
        R1          <= 8'hff;
        R2          <= 8'hff;
        
	ADC_raw_sel		<= 1'b0;
        offset_key              <= 1'b0;
        gain_key                <= 1'b0;
        skew_key                <= 1'b0;
        key_TI_cal_S            <= 4'd0;
        skew_key_sel            <= 3'd0;
        wt                      <= 1'b0;
        ADC_dout_sel            <= 1'b1;
        C_cal_key               <= 3'd0;
        MDAC_cal_key            <= 3'd0;
        key_C_cal_S             <= 4'd0;
        key_MDAC_cal_S          <= 4'd0;
        skew_acc_sign           <= 1'b1;
        skew_mode_sel           <= 1'b1;       
        o_mis1_din              <= 12'd0;
        o_mis2_din              <= 12'd0;
        o_mis3_din              <= 12'd0;
        o_mis4_din              <= 12'd0;
        g_mis2_din              <= 12'd0;
        g_mis3_din              <= 12'd0;
        g_mis4_din              <= 12'd0;    
        Los1_din                <=-32'sd134152192;
        Hos1_din                <= 32'sd134152192;
        Los2_din                <=-32'sd134152192;
        Hos2_din                <= 32'sd134152192;
        Los3_din                <=-32'sd134152192;
        Hos3_din                <= 32'sd134152192;
        Los4_din                <=-32'sd134152192;
        Hos4_din                <= 32'sd134152192;          
        Lga2_din                <=-32'sd134152192;
        Hga2_din                <= 32'sd134152192;
        Lga3_din                <=-32'sd134152192;
        Hga3_din                <= 32'sd134152192;
        Lga4_din                <=-32'sd134152192;
        Hga4_din                <= 32'sd134152192;                      
        Lsk2_din                <=-32'sd8323022;
        Hsk2_din                <= 32'sd8323022;
        Lsk3_din                <=-32'sd8323022;
        Hsk3_din                <= 32'sd8323022;
        Lsk4_din                <=-32'sd8323022;
        Hsk4_din                <= 32'sd8323022;        
        A1_din                  <= 5'd16;
        A2_din                  <= 5'd16;
        A3_din                  <= 5'd16;
        A4_din                  <= 5'd16;
        B2_din                  <= 5'd16;
        B3_din                  <= 5'd16;
        B4_din                  <= 5'd16;
        C2_din                  <= 5'd16;
        C3_din                  <= 5'd16;
        C4_din                  <= 5'd16;   
        clk_D_din               <= 9'd50;       
        C_weight1_1_1_din       <= 8'd0;
        C_weight1_1_2_din       <= 8'd0;
        C_weight1_1_3_din       <= 8'd0;
        C_weight1_1_4_din       <= 8'd0;
        C_weight1_1_5_din       <= 8'd0;
        C_weight1_1_6_din       <= 8'd0;
        C_weight1_2_1_din       <= 8'd0;
        C_weight1_2_2_din       <= 8'd0;
        C_weight1_2_3_din       <= 8'd0;
        C_weight1_2_4_din       <= 8'd0;
        C_weight1_2_5_din       <= 8'd0;
        C_weight1_2_6_din       <= 8'd0;
        C_weight1_3_1_din       <= 8'd0;
        C_weight1_3_2_din       <= 8'd0;
        C_weight1_3_3_din       <= 8'd0;
        C_weight1_3_4_din       <= 8'd0;
        C_weight1_3_5_din       <= 8'd0;
        C_weight1_3_6_din       <= 8'd0;
        C_weight2_1_1_din       <= 8'd0;
        C_weight2_1_2_din       <= 8'd0;
        C_weight2_1_3_din       <= 8'd0;
        C_weight2_1_4_din       <= 8'd0;
        C_weight2_1_5_din       <= 8'd0;
        C_weight2_1_6_din       <= 8'd0;
        C_weight2_2_1_din       <= 8'd0;
        C_weight2_2_2_din       <= 8'd0;
        C_weight2_2_3_din       <= 8'd0;
        C_weight2_2_4_din       <= 8'd0;
        C_weight2_2_5_din       <= 8'd0;
        C_weight2_2_6_din       <= 8'd0;
        C_weight2_3_1_din       <= 8'd0;
        C_weight2_3_2_din       <= 8'd0;
        C_weight2_3_3_din       <= 8'd0;
        C_weight2_3_4_din       <= 8'd0;
        C_weight2_3_5_din       <= 8'd0;
        C_weight2_3_6_din       <= 8'd0;
        C_weight3_1_1_din       <= 8'd0;
        C_weight3_1_2_din       <= 8'd0;
        C_weight3_1_3_din       <= 8'd0;
        C_weight3_1_4_din       <= 8'd0;
        C_weight3_1_5_din       <= 8'd0;
        C_weight3_1_6_din       <= 8'd0;
        C_weight3_2_1_din       <= 8'd0;
        C_weight3_2_2_din       <= 8'd0;
        C_weight3_2_3_din       <= 8'd0;
        C_weight3_2_4_din       <= 8'd0;
        C_weight3_2_5_din       <= 8'd0;
        C_weight3_2_6_din       <= 8'd0;
        C_weight3_3_1_din       <= 8'd0;
        C_weight3_3_2_din       <= 8'd0;
        C_weight3_3_3_din       <= 8'd0;
        C_weight3_3_4_din       <= 8'd0;
        C_weight3_3_5_din       <= 8'd0;
        C_weight3_3_6_din       <= 8'd0;
        C_weight4_1_1_din       <= 8'd0;
        C_weight4_1_2_din       <= 8'd0;
        C_weight4_1_3_din       <= 8'd0;
        C_weight4_1_4_din       <= 8'd0;
        C_weight4_1_5_din       <= 8'd0;
        C_weight4_1_6_din       <= 8'd0;
        C_weight4_2_1_din       <= 8'd0;
        C_weight4_2_2_din       <= 8'd0;
        C_weight4_2_3_din       <= 8'd0;
        C_weight4_2_4_din       <= 8'd0;
        C_weight4_2_5_din       <= 8'd0;
        C_weight4_2_6_din       <= 8'd0;
        C_weight4_3_1_din       <= 8'd0;
        C_weight4_3_2_din       <= 8'd0;
        C_weight4_3_3_din       <= 8'd0;
        C_weight4_3_4_din       <= 8'd0;
        C_weight4_3_5_din       <= 8'd0;
        C_weight4_3_6_din       <= 8'd0;
        MDAC_weight1_1_din      <= 8'd0;
        MDAC_weight1_2_din      <= 8'd0;
        MDAC_weight1_3_din      <= 8'd0;
        MDAC_weight2_1_din      <= 8'd0;
        MDAC_weight2_2_din      <= 8'd0;
        MDAC_weight2_3_din      <= 8'd0;
        MDAC_weight3_1_din      <= 8'd0;
        MDAC_weight3_2_din      <= 8'd0;
        MDAC_weight3_3_din      <= 8'd0;
        MDAC_weight4_1_din      <= 8'd0;
        MDAC_weight4_2_din      <= 8'd0;
        MDAC_weight4_3_din      <= 8'd0;
        ADC_data_overflow_clr   <=  1'b0;
        end
    else
        if (write_r2)
            begin
            rw_done <= 1'b1;
            case (addr_r2)
            10'd1       :   begin
                                    {PN_SET,sys_rst}  <= {data_in_r2[15:4],data_in_r2[0]};
                            end
            10'd2       :   begin   PN_RESET            <= data_in_r2; end  
            10'd3       :   begin   CMP_SR[15  :0   ]   <= data_in_r2; end
            10'd4       :   begin   CMP_SR[31  :16  ]   <= data_in_r2; end
            10'd5       :   begin   CMP_SR[47  :32  ]   <= data_in_r2; end
            10'd6       :   begin   CMP_SR[63  :48  ]   <= data_in_r2; end
            10'd7       :   begin   CMP_SR[79  :64  ]   <= data_in_r2; end
            10'd8       :   begin   CMP_SR[95  :80  ]   <= data_in_r2; end
            10'd9       :   begin   CMP_SR[111 :96  ]   <= data_in_r2; end
            10'd10      :   begin   CMP_SR[127 :112 ]   <= data_in_r2; end
            10'd11      :   begin   CMP_SR[143 :128 ]   <= data_in_r2; end
            10'd12      :   begin   D_AP_CAL            <= data_in_r2; end
            10'd13      :   begin   DRETIMING[15 : 0 ]  <= data_in_r2; end
            10'd14      :   begin   DRETIMING[31 : 16]  <= data_in_r2; end
            10'd15      :   begin   DRETIMING[39 : 32]  <= data_in_r2[7:0]; end         
            10'd16      :   begin   D_OP[15 : 0 ]       <= data_in_r2; end
            10'd17      :   begin   D_OP[31 : 16]       <= data_in_r2; end
            10'd18      :   begin   D_OP[47 : 32]       <= data_in_r2; end
            10'd19      :   begin
                                    D_BGA               <= data_in_r2[3:0];
                                    D_REF               <= data_in_r2[15:4];
                            end                     
            10'd20      :   begin   {clk_ctrl,D_IN_BUF} <= {data_in_r2[11:4],data_in_r2[3:0]}; end  
            10'd21      :   begin 
                            R1 <= data_in_r2[7:0]; 
                            R2 <= data_in_r2[15:8]; 
                        end
            10'd23      : begin {skew_mode_sel,skew_acc_sign,C_cal_key,wt,skew_key_sel,key_TI_cal_S,skew_key,gain_key,offset_key} <= data_in_r2; end
            10'd24      : begin {key_MDAC_cal_S,key_C_cal_S,MDAC_cal_key,ADC_dout_sel} <= data_in_r2[11:0]; end
            10'd25      : begin o_mis1_din <= data_in_r2[11:0]; end
            10'd26      : begin o_mis2_din <= data_in_r2[11:0]; end
            10'd27      : begin o_mis3_din <= data_in_r2[11:0]; end
            10'd28      : begin o_mis4_din <= data_in_r2[11:0]; end
            10'd29      : begin g_mis2_din <= data_in_r2[11:0]; end
            10'd30      : begin g_mis3_din <= data_in_r2[11:0]; end
            10'd31      : begin g_mis4_din <= data_in_r2[11:0]; end
            10'd36      : begin Los1_din[15:0] <= data_in_r2;end
            10'd37      : begin Los1_din[31:16] <= data_in_r2;end
            10'd38      : begin Hos1_din[15:0] <= data_in_r2;end
            10'd39      : begin Hos1_din[31:16] <= data_in_r2;end
            10'd40      : begin Los2_din[15:0] <= data_in_r2;end
            10'd41      : begin Los2_din[31:16] <= data_in_r2;end
            10'd42      : begin Hos2_din[15:0] <= data_in_r2;end
            10'd43      : begin Hos2_din[31:16] <= data_in_r2;end
            10'd44      : begin Los3_din[15:0] <= data_in_r2;end
            10'd45      : begin Los3_din[31:16] <= data_in_r2;end
            10'd46      : begin Hos3_din[15:0] <= data_in_r2;end
            10'd47      : begin Hos3_din[31:16] <= data_in_r2;end
            10'd48      : begin Los4_din[15:0] <= data_in_r2;end
            10'd49      : begin Los4_din[31:16] <= data_in_r2;end
            10'd50      : begin Hos4_din[15:0] <= data_in_r2;end
            10'd51      : begin Hos4_din[31:16] <= data_in_r2;end   
            10'd52      : begin Lga2_din[15:0] <= data_in_r2;end
            10'd53      : begin Lga2_din[31:16] <= data_in_r2;end
            10'd54      : begin Hga2_din[15:0] <= data_in_r2;end
            10'd55      : begin Hga2_din[31:16] <= data_in_r2;end
            10'd56      : begin Lga3_din[15:0] <= data_in_r2;end
            10'd57      : begin Lga3_din[31:16] <= data_in_r2;end
            10'd58      : begin Hga3_din[15:0] <= data_in_r2;end
            10'd59      : begin Hga3_din[31:16] <= data_in_r2;end
            10'd60      : begin Lga4_din[15:0] <= data_in_r2;end
            10'd61      : begin Lga4_din[31:16] <= data_in_r2;end
            10'd62      : begin Hga4_din[15:0] <= data_in_r2;end
            10'd63      : begin Hga4_din[31:16] <= data_in_r2;end
            10'd64      : begin Lsk2_din[15:0] <= data_in_r2;end
            10'd65      : begin Lsk2_din[31:16] <= data_in_r2;end
            10'd66      : begin Hsk2_din[15:0] <= data_in_r2;end
            10'd67      : begin Hsk2_din[31:16] <= data_in_r2;end
            10'd68      : begin Lsk3_din[15:0] <= data_in_r2;end
            10'd69      : begin Lsk3_din[31:16] <= data_in_r2;end
            10'd70      : begin Hsk3_din[15:0] <= data_in_r2;end
            10'd71      : begin Hsk3_din[31:16] <= data_in_r2;end
            10'd72      : begin Lsk4_din[15:0] <= data_in_r2;end
            10'd73      : begin Lsk4_din[31:16] <= data_in_r2;end
            10'd74      : begin Hsk4_din[15:0] <= data_in_r2;end
            10'd75      : begin Hsk4_din[31:16] <= data_in_r2;end   
            10'd76      : begin {A3_din,A2_din,A1_din} <= data_in_r2[14:0];end
            10'd77      : begin A4_din <= data_in_r2[4:0];end       
            10'd78      : begin {B4_din,B3_din,B2_din} <= data_in_r2[14:0];end
            10'd79      : begin {C4_din,C3_din,C2_din} <= data_in_r2[14:0];end
            10'd80      : begin clk_D_din <= data_in_r2[8:0];end
            10'd81      : begin {C_weight1_1_2_din,C_weight1_1_1_din} <= data_in_r2;end
            10'd82      : begin {C_weight1_1_4_din,C_weight1_1_3_din} <= data_in_r2;end
            10'd83      : begin {C_weight1_1_6_din,C_weight1_1_5_din} <= data_in_r2;end
            10'd84      : begin {C_weight1_2_2_din,C_weight1_2_1_din} <= data_in_r2;end
            10'd85      : begin {C_weight1_2_4_din,C_weight1_2_3_din} <= data_in_r2;end
            10'd86      : begin {C_weight1_2_6_din,C_weight1_2_5_din} <= data_in_r2;end
            10'd87      : begin {C_weight1_3_2_din,C_weight1_3_1_din} <= data_in_r2;end
            10'd88      : begin {C_weight1_3_4_din,C_weight1_3_3_din} <= data_in_r2;end
            10'd89      : begin {C_weight1_3_6_din,C_weight1_3_5_din} <= data_in_r2;end                     
            10'd90      : begin {C_weight2_1_2_din,C_weight2_1_1_din} <= data_in_r2;end
            10'd91      : begin {C_weight2_1_4_din,C_weight2_1_3_din} <= data_in_r2;end
            10'd92      : begin {C_weight2_1_6_din,C_weight2_1_5_din} <= data_in_r2;end
            10'd93      : begin {C_weight2_2_2_din,C_weight2_2_1_din} <= data_in_r2;end
            10'd94      : begin {C_weight2_2_4_din,C_weight2_2_3_din} <= data_in_r2;end
            10'd95      : begin {C_weight2_2_6_din,C_weight2_2_5_din} <= data_in_r2;end
            10'd96      : begin {C_weight2_3_2_din,C_weight2_3_1_din} <= data_in_r2;end
            10'd97      : begin {C_weight2_3_4_din,C_weight2_3_3_din} <= data_in_r2;end
            10'd98      : begin {C_weight2_3_6_din,C_weight2_3_5_din} <= data_in_r2;end                     
            10'd99      : begin {C_weight3_1_2_din,C_weight3_1_1_din} <= data_in_r2;end
            10'd100     : begin {C_weight3_1_4_din,C_weight3_1_3_din} <= data_in_r2;end
            10'd101     : begin {C_weight3_1_6_din,C_weight3_1_5_din} <= data_in_r2;end
            10'd102     : begin {C_weight3_2_2_din,C_weight3_2_1_din} <= data_in_r2;end
            10'd103     : begin {C_weight3_2_4_din,C_weight3_2_3_din} <= data_in_r2;end
            10'd104     : begin {C_weight3_2_6_din,C_weight3_2_5_din} <= data_in_r2;end
            10'd105     : begin {C_weight3_3_2_din,C_weight3_3_1_din} <= data_in_r2;end
            10'd106     : begin {C_weight3_3_4_din,C_weight3_3_3_din} <= data_in_r2;end
            10'd107     : begin {C_weight3_3_6_din,C_weight3_3_5_din} <= data_in_r2;end         
            10'd108     : begin {C_weight4_1_2_din,C_weight4_1_1_din} <= data_in_r2;end
            10'd109     : begin {C_weight4_1_4_din,C_weight4_1_3_din} <= data_in_r2;end
            10'd110     : begin {C_weight4_1_6_din,C_weight4_1_5_din} <= data_in_r2;end
            10'd111     : begin {C_weight4_2_2_din,C_weight4_2_1_din} <= data_in_r2;end
            10'd112     : begin {C_weight4_2_4_din,C_weight4_2_3_din} <= data_in_r2;end
            10'd113     : begin {C_weight4_2_6_din,C_weight4_2_5_din} <= data_in_r2;end
            10'd114     : begin {C_weight4_3_2_din,C_weight4_3_1_din} <= data_in_r2;end
            10'd115     : begin {C_weight4_3_4_din,C_weight4_3_3_din} <= data_in_r2;end
            10'd116     : begin {C_weight4_3_6_din,C_weight4_3_5_din} <= data_in_r2;end                     
            10'd117     : begin {MDAC_weight1_2_din,MDAC_weight1_1_din} <= data_in_r2;end
            10'd118     : begin MDAC_weight1_3_din <= data_in_r2[7:0];end
            10'd119     : begin {MDAC_weight2_2_din,MDAC_weight2_1_din} <= data_in_r2;end
            10'd120     : begin MDAC_weight2_3_din <= data_in_r2[7:0];end
            10'd121     : begin {MDAC_weight3_2_din,MDAC_weight3_1_din} <= data_in_r2;end
            10'd122     : begin MDAC_weight3_3_din <= data_in_r2[7:0];end   
            10'd123     : begin {MDAC_weight4_2_din,MDAC_weight4_1_din} <= data_in_r2;end
            10'd124     : begin MDAC_weight4_3_din <= data_in_r2[7:0];end
            10'd201     : begin ADC_data_overflow_clr <= data_in_r2[0];end
 	    10'd202	: begin ADC_raw_sel <= data_in_r2[0];end
            default     :   ;
            endcase
            end
        else if (read_r2)
            begin
                rw_done <= 1'b1;
            case (addr_r2)
            10'd0   : data_out <= ChipID                    ;
            10'd1   : data_out <= {PN_SET,3'b0,sys_rst}     ;
            10'd2   : data_out <= {4'b0,PN_RESET}           ;
            10'd3   : data_out <= CMP_SR[15  :0   ]         ;
            10'd4   : data_out <= CMP_SR[31  :16  ]         ;
            10'd5   : data_out <= CMP_SR[47  :32  ]         ;
            10'd6   : data_out <= CMP_SR[63  :48  ]         ;
            10'd7   : data_out <= CMP_SR[79  :64  ]         ;
            10'd8   : data_out <= CMP_SR[95  :80  ]         ;
            10'd9   : data_out <= CMP_SR[111 :96  ]         ;
            10'd10  : data_out <= CMP_SR[127 :112 ]         ;
            10'd11  : data_out <= CMP_SR[143 :128 ]         ;
            10'd12  : data_out <= D_AP_CAL                  ;
            10'd13  : data_out <= DRETIMING[15 : 0 ]        ;
            10'd14  : data_out <= DRETIMING[31 : 16]        ;
            10'd15  : data_out <= DRETIMING[39 : 32]        ;
            10'd16  : data_out <= D_OP[15 : 0 ]             ;
            10'd17  : data_out <= D_OP[31 : 16]             ;
            10'd18  : data_out <= D_OP[47 : 32]             ;
            10'd19  : data_out <= {D_REF,D_BGA}             ;
            10'd20  : data_out <= {4'd0,clk_ctrl,D_IN_BUF}  ;
            10'd21  : data_out <= {R2,R1}                   ;
            10'd22  : data_out <= {12'd0,intr_o,pslverr_o,strdata_valid_o,pll_lock_o};
            10'd23  : data_out <= {skew_mode_sel,skew_acc_sign,C_cal_key,wt,skew_key_sel,key_TI_cal_S,skew_key,gain_key,offset_key};
            10'd24  : data_out <={4'd0,key_MDAC_cal_S,key_C_cal_S,MDAC_cal_key,ADC_dout_sel};
            10'd25  : data_out <= {4'd0,o_mis1_din}         ; 
            10'd26  : data_out <= {4'd0,o_mis2_din}         ; 
            10'd27  : data_out <= {4'd0,o_mis3_din}         ; 
            10'd28  : data_out <= {4'd0,o_mis4_din}         ; 
            10'd29  : data_out <= {4'd0,g_mis2_din}         ; 
            10'd30  : data_out <= {4'd0,g_mis3_din}         ; 
            10'd31  : data_out <= {4'd0,g_mis4_din}         ; 
            10'd36  : data_out <= Los1_din[15:0]            ;
            10'd37  : data_out <= Los1_din[31:16]           ;
            10'd38  : data_out <= Hos1_din[15:0]            ;
            10'd39  : data_out <= Hos1_din[31:16]           ;
            10'd40  : data_out <= Los2_din[15:0]            ;
            10'd41  : data_out <= Los2_din[31:16]           ;
            10'd42  : data_out <= Hos2_din[15:0]            ;
            10'd43  : data_out <= Hos2_din[31:16]           ;
            10'd44  : data_out <= Los3_din[15:0]            ;
            10'd45  : data_out <= Los3_din[31:16]           ;
            10'd46  : data_out <= Hos3_din[15:0]            ;
            10'd47  : data_out <= Hos3_din[31:16]           ;
            10'd48  : data_out <= Los4_din[15:0]            ;
            10'd49  : data_out <= Los4_din[31:16]           ;
            10'd50  : data_out <= Hos4_din[15:0]            ;
            10'd51  : data_out <= Hos4_din[31:16]           ;   
            10'd52  : data_out <= Lga2_din[15:0]            ;
            10'd53  : data_out <= Lga2_din[31:16]           ;
            10'd54  : data_out <= Hga2_din[15:0]            ;
            10'd55  : data_out <= Hga2_din[31:16]           ;
            10'd56  : data_out <= Lga3_din[15:0]            ;
            10'd57  : data_out <= Lga3_din[31:16]           ;
            10'd58  : data_out <= Hga3_din[15:0]            ;
            10'd59  : data_out <= Hga3_din[31:16]           ;
            10'd60  : data_out <= Lga4_din[15:0]            ;
            10'd61  : data_out <= Lga4_din[31:16]           ;
            10'd62  : data_out <= Hga4_din[15:0]            ;
            10'd63  : data_out <= Hga4_din[31:16]           ;
            10'd64  : data_out <= Lsk2_din[15:0]            ;
            10'd65  : data_out <= Lsk2_din[31:16]           ;
            10'd66  : data_out <= Hsk2_din[15:0]            ;
            10'd67  : data_out <= Hsk2_din[31:16]           ;
            10'd68  : data_out <= Lsk3_din[15:0]            ;
            10'd69  : data_out <= Lsk3_din[31:16]           ;
            10'd70  : data_out <= Hsk3_din[15:0]            ;
            10'd71  : data_out <= Hsk3_din[31:16]           ;
            10'd72  : data_out <= Lsk4_din[15:0]            ;
            10'd73  : data_out <= Lsk4_din[31:16]           ;
            10'd74  : data_out <= Hsk4_din[15:0]            ;
            10'd75  : data_out <= Hsk4_din[31:16]           ;   
            10'd76  : data_out <= {1'b0,A3_din,A2_din,A1_din}   ;
            10'd77  : data_out <= {11'd0,A4_din}                ;       
            10'd78  : data_out <= {1'b0,B4_din,B3_din,B2_din}   ;
            10'd79  : data_out <= {1'b0,C4_din,C3_din,C2_din}   ;
            10'd80  : data_out <= {7'd0,clk_D_din}              ;
            10'd81  : data_out <=  {C_weight1_1_2_din,C_weight1_1_1_din};
            10'd82  : data_out <=  {C_weight1_1_4_din,C_weight1_1_3_din};
            10'd83  : data_out <=  {C_weight1_1_6_din,C_weight1_1_5_din};
            10'd84  : data_out <=  {C_weight1_2_2_din,C_weight1_2_1_din};
            10'd85  : data_out <=  {C_weight1_2_4_din,C_weight1_2_3_din};
            10'd86  : data_out <=  {C_weight1_2_6_din,C_weight1_2_5_din};
            10'd87  : data_out <=  {C_weight1_3_2_din,C_weight1_3_1_din};
            10'd88  : data_out <=  {C_weight1_3_4_din,C_weight1_3_3_din};
            10'd89  : data_out <=  {C_weight1_3_6_din,C_weight1_3_5_din};                   
            10'd90  : data_out <=  {C_weight2_1_2_din,C_weight2_1_1_din};
            10'd91  : data_out <=  {C_weight2_1_4_din,C_weight2_1_3_din};
            10'd92  : data_out <=  {C_weight2_1_6_din,C_weight2_1_5_din};
            10'd93  : data_out <=  {C_weight2_2_2_din,C_weight2_2_1_din};
            10'd94  : data_out <=  {C_weight2_2_4_din,C_weight2_2_3_din};
            10'd95  : data_out <=  {C_weight2_2_6_din,C_weight2_2_5_din};
            10'd96  : data_out <=  {C_weight2_3_2_din,C_weight2_3_1_din};
            10'd97  : data_out <=  {C_weight2_3_4_din,C_weight2_3_3_din};
            10'd98  : data_out <=  {C_weight2_3_6_din,C_weight2_3_5_din};                       
            10'd99  : data_out <=  {C_weight3_1_2_din,C_weight3_1_1_din};
            10'd100 : data_out <=  {C_weight3_1_4_din,C_weight3_1_3_din};
            10'd101 : data_out <=  {C_weight3_1_6_din,C_weight3_1_5_din};
            10'd102 : data_out <=  {C_weight3_2_2_din,C_weight3_2_1_din};
            10'd103 : data_out <=  {C_weight3_2_4_din,C_weight3_2_3_din};
            10'd104 : data_out <=  {C_weight3_2_6_din,C_weight3_2_5_din};
            10'd105 : data_out <=  {C_weight3_3_2_din,C_weight3_3_1_din};
            10'd106 : data_out <=  {C_weight3_3_4_din,C_weight3_3_3_din};
            10'd107 : data_out <=  {C_weight3_3_6_din,C_weight3_3_5_din};           
            10'd108 : data_out <=  {C_weight4_1_2_din,C_weight4_1_1_din};
            10'd109 : data_out <=  {C_weight4_1_4_din,C_weight4_1_3_din};
            10'd110 : data_out <=  {C_weight4_1_6_din,C_weight4_1_5_din};
            10'd111 : data_out <=  {C_weight4_2_2_din,C_weight4_2_1_din};
            10'd112 : data_out <=  {C_weight4_2_4_din,C_weight4_2_3_din};
            10'd113 : data_out <=  {C_weight4_2_6_din,C_weight4_2_5_din};
            10'd114 : data_out <=  {C_weight4_3_2_din,C_weight4_3_1_din};
            10'd115 : data_out <=  {C_weight4_3_4_din,C_weight4_3_3_din};
            10'd116 : data_out <=  {C_weight4_3_6_din,C_weight4_3_5_din};                           
            10'd117 : data_out <=  {MDAC_weight1_2_din,MDAC_weight1_1_din};
            10'd118 : data_out <=  {8'd0,MDAC_weight1_3_din}              ;
            10'd119 : data_out <=  {MDAC_weight2_2_din,MDAC_weight2_1_din};
            10'd120 : data_out <=   {8'd0,MDAC_weight2_3_din}             ;
            10'd121 : data_out <=  {MDAC_weight3_2_din,MDAC_weight3_1_din};
            10'd122 : data_out <=  {8'd0,MDAC_weight3_3_din}              ; 
            10'd123 : data_out <=  {MDAC_weight4_2_din,MDAC_weight4_1_din};
            10'd124 : data_out <=   {8'd0,MDAC_weight4_3_din}             ;                     
            10'd125 : data_out <=  {4'd0,o_mis1_dout};
            10'd126 : data_out <=  {4'd0,o_mis2_dout};
            10'd127 : data_out <=  {4'd0,o_mis3_dout};
            10'd128 : data_out <=  {4'd0,o_mis4_dout};
            10'd129 : data_out <=  {4'd0,g_mis2_dout};
            10'd130 : data_out <=  {4'd0,g_mis3_dout};          
            10'd131 : data_out <=  {4'd0,g_mis4_dout};
            10'd132 : data_out <=  {6'd0,t_mis1_dout};
            10'd133 : data_out <=  {6'd0,t_mis2_dout};
            10'd134 : data_out <=  {6'd0,t_mis3_dout};
            10'd135 : data_out <=  {6'd0,t_mis4_dout};
            10'd136 : data_out <=  offset1_dout[15:0];
            10'd137 : data_out <=  offset1_dout[31:16];
            10'd138 : data_out <=  offset2_dout[15:0];
            10'd139 : data_out <=  offset2_dout[31:16];         
            10'd140 : data_out <=  offset3_dout[15:0];
            10'd141 : data_out <=  offset3_dout[31:16];
            10'd142 : data_out <=  offset4_dout[15:0];
            10'd143 : data_out <=  offset4_dout[31:16];     
            10'd144 : data_out <=  gain2_dout[15:0];
            10'd145 : data_out <=  gain2_dout[31:16];           
            10'd146 : data_out <=  gain3_dout[15:0];
            10'd147 : data_out <=  gain3_dout[31:16];
            10'd148 : data_out <=  gain4_dout[15:0];
            10'd149 : data_out <=  gain4_dout[31:16];           
            10'd150 : data_out <=  skew2_dout[15:0];
            10'd151 : data_out <=  skew2_dout[31:16];           
            10'd152 : data_out <=  skew3_dout[15:0];
            10'd153 : data_out <=  skew3_dout[31:16];
            10'd154 : data_out <=  skew4_dout[15:0];
            10'd155 : data_out <=  skew4_dout[31:16];               
            10'd156 : data_out <=  Los1_dout[15:0];
            10'd157 : data_out <=  Los1_dout[31:16];
            10'd158 : data_out <=  Hos1_dout[15:0];
            10'd159 : data_out <=  Hos1_dout[31:16];            
            10'd160 : data_out <=  Los2_dout[15:0];
            10'd161 : data_out <=  Los2_dout[31:16];
            10'd162 : data_out <=  Hos2_dout[15:0];
            10'd163 : data_out <=  Hos2_dout[31:16];        
            10'd164 : data_out <=  Los3_dout[15:0];
            10'd165 : data_out <=  Los3_dout[31:16];            
            10'd166 : data_out <=  Hos3_dout[15:0];
            10'd167 : data_out <=  Hos3_dout[31:16];
            10'd168 : data_out <=  Los4_dout[15:0];
            10'd169 : data_out <=  Los4_dout[31:16];            
            10'd170 : data_out <=  Hos4_dout[15:0];
            10'd171 : data_out <=  Hos4_dout[31:16];            
            10'd172 : data_out <=  Lga2_dout[15:0];
            10'd173 : data_out <=  Lga2_dout[31:16];
            10'd174 : data_out <=  Hga2_dout[15:0];
            10'd175 : data_out <=  Hga2_dout[31:16];    
            10'd176 : data_out <=  Lga3_dout[15:0];
            10'd177 : data_out <=  Lga3_dout[31:16];
            10'd178 : data_out <=  Hga3_dout[15:0];
            10'd179 : data_out <=  Hga3_dout[31:16];            
            10'd180 : data_out <=  Lga4_dout[15:0];
            10'd181 : data_out <=  Lga4_dout[31:16];
            10'd182 : data_out <=  Hga4_dout[15:0];
            10'd183 : data_out <=  Hga4_dout[31:16];        
            10'd184 : data_out <=  Lsk2_dout[15:0];
            10'd185 : data_out <=  Lsk2_dout[31:16];            
            10'd186 : data_out <=  Hsk2_dout[15:0];
            10'd187 : data_out <=  Hsk2_dout[31:16];
            10'd188 : data_out <=  Lsk3_dout[15:0];
            10'd189 : data_out <=  Lsk3_dout[31:16];            
            10'd190 : data_out <=  Hsk3_dout[15:0];
            10'd191 : data_out <=  Hsk3_dout[31:16];            
            10'd192 : data_out <=  Lsk4_dout[15:0];
            10'd193 : data_out <=  Lsk4_dout[31:16];
            10'd194 : data_out <=  Hsk4_dout[15:0];
            10'd195 : data_out <=  Hsk4_dout[31:16];    
            10'd196 : data_out <= {1'b0,A3_dout,A2_dout,A1_dout};
            10'd197 : data_out <= {11'd0,A4_dout};      
            10'd198 : data_out <= {1'b0,B4_dout,B3_dout,B2_dout};
            10'd199 : data_out <= {1'b0,C4_dout,C3_dout,C2_dout};
            10'd200 : data_out <= {7'd0,clk_D_dout};
            10'd201 : data_out <= {14'd0,ADC_data_overflow,ADC_data_overflow_clr};
	    10'd202 : data_out <= {15'd0,ADC_raw_sel};
            default     :   data_out <= 1'b0;
            endcase 
            end

        else

            rw_done <= 1'b0;

end
// ---------- Other Ctrl --------------------------------------

endmodule





// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------





// ---------------------------------------- 

// APB 

// ----------------------------------------



module APB(

    clk  ,

    rst  ,

    

    // addr-reg

    write       ,

    read        ,

    addr        ,

    data_in     ,

    data_out    ,

    cs_n        ,

    rw_done     ,

    

    // APB

    pclk_i      ,

    paddr_i     ,

    pstrb_i     ,

    pwdata_i    ,

    pselx_i     ,

    pwrite_i    ,

    penable_i   ,

    pready_o    ,

    prdata_o

);





// ---------- ports --------------------------------------

input clk,rst;

input write,read;

input [12:0] addr;

input [15:0] data_in;

input cs_n;

output reg [15:0] data_out;

output reg rw_done;



output pclk_i;

output reg [11:0] paddr_i;

output reg [3:0] pstrb_i;

output reg [31:0] pwdata_i;

output reg pselx_i,pwrite_i,penable_i;

input pready_o;

input [31:0] prdata_o;





// ---------- parameters --------------------------------------

localparam  st_idle  = 4'd0 ,

            st_w1b_1 = 4'd1 ,

            st_w1b_2 = 4'd2 ,

            st_w4b_1 = 4'd3 ,

            st_w4b_2 = 4'd4 ,

            st_w4b_3 = 4'd5 ,

            st_r4b_1 = 4'd6 ,

            st_r4b_2 = 4'd7 ;





// ---------- Receive addr-reg --------------------------------------

reg write_r1,write_r2,read_r1,read_r2;

reg [12:0] addr_r1,addr_r2;

reg [15:0] data_in_r1,data_in_r2;



always @(posedge clk or posedge rst)

begin

    if (rst)

        begin 

        write_r1    <= 1'b0 ;

        write_r2    <= 1'b0 ;

        read_r1     <= 1'b0 ;

        read_r2     <= 1'b0 ;

        addr_r1     <= 1'b0 ;

        addr_r2     <= 1'b0 ;

        data_in_r1  <= 1'b0 ;

        data_in_r2  <= 1'b0 ;

        end

    else if (~cs_n)

        begin

        write_r1    <= write        ;

        write_r2    <= write_r1     ;

        read_r1     <= read         ;

        read_r2     <= read_r1      ;

        addr_r1     <= addr         ;

        addr_r2     <= addr_r1      ;

        data_in_r1  <= data_in      ;

        data_in_r2  <= data_in_r1   ;

        end

    else

        begin

        write_r1    <= 1'b0 ;

        write_r2    <= 1'b0 ;

        read_r1     <= 1'b0 ;

        read_r2     <= 1'b0 ;

        addr_r1     <= 1'b0 ;

        addr_r2     <= 1'b0 ;

        data_in_r1  <= 1'b0 ;

        data_in_r2  <= 1'b0 ;

        end

end 







// ---------- APB Process --------------------------------------

reg [3:0] st_apb ;

reg [3:0] cnt ;

reg clr_cnt;

reg [31:0] data_out_r;



assign pclk_i = clk;



always @ (posedge clk or posedge rst)

begin

    if (rst)

        cnt <= 1'b0;

    else if (clr_cnt)

        cnt <= 1'b0;

    else

        cnt <= cnt + 1'b1;

end

always @ (posedge clk or posedge rst)

begin

    if (rst)

        begin

        st_apb <= 1'b0;

        clr_cnt <= 1'b1;

        paddr_i     <= 1'b0;

        pstrb_i     <= 1'b0;

        pwdata_i    <= 1'b0;

        pselx_i     <= 1'b0;

        pwrite_i    <= 1'b0;

        penable_i   <= 1'b0;

        rw_done <= 1'b0;

        data_out_r <= 1'b0;

        data_out <= 1'b0;

        

        end

    //else if (pready_o)

    else

        case (st_apb)

            st_idle     :   begin

                            rw_done     <= 1'b0;    

                            paddr_i     <= 1'b0;

                            pstrb_i     <= 1'b0;

                            // pwdata_i    <= 1'b0;

                            pselx_i     <= 1'b0;

                            pwrite_i    <= 1'b0;

                            penable_i   <= 1'b0;

                            data_out_r  <= 1'b0;

                            clr_cnt     <= 1'b1;

                            if (pready_o)

                                if (write_r2)

                                    begin

                                    //clr_cnt <= 1'b1;

                                    if (addr_r2[12])    // write 1 byte

                                        begin

                                        st_apb <= st_w1b_1;

                                        end

                                    else                // write 4 byte

                                        begin

                                        st_apb <= st_w4b_1;

                                        end

                                    end

                                else if (read_r2)

                                    begin

                                    //clr_cnt <= 1'b1;

                                    st_apb <= st_r4b_1;

                                    end

                                else

                                    begin

                                    //clr_cnt <= 1'b0;

                                    st_apb <= st_idle;

                                    end

                            end

                            

            st_w1b_1    :   begin // write in 3 cycle

                            clr_cnt <= 1'b0;

                            rw_done <= 1'b0;

                            if (cnt==4'd1)

                                begin

                                paddr_i <= {addr_r2[11:2],2'b00};

                                case (addr_r2[1:0])

                                    2'b00:  begin pstrb_i<=4'b0001;pwdata_i[7:0]  <=data_in_r2[7:0]; end

                                    2'b01:  begin pstrb_i<=4'b0010;pwdata_i[15:8] <=data_in_r2[7:0]; end

                                    2'b10:  begin pstrb_i<=4'b0100;pwdata_i[23:16]<=data_in_r2[7:0]; end

                                    2'b11:  begin pstrb_i<=4'b1000;pwdata_i[31:24]<=data_in_r2[7:0]; end

                                endcase

                                pselx_i    <= 1'b1;

                                pwrite_i   <= 1'b1;

                                penable_i  <= 1'b0;

                                end

                            else if (cnt==4'd3)

                                penable_i <= 1'b1;

                            else if (cnt==4'd4)

                                begin

                                penable_i <= 1'b0;

                                st_apb <= st_w1b_2;

                                end

                            end

                            

            st_w1b_2    :   begin // rw_done

                            rw_done <= 1'b1;

                            if (~write_r2)

                                st_apb <= st_idle;

                            end

                            

            st_w4b_1    :   begin // get the data

                            if (addr_r2[0])

                                begin

                                pwdata_i[31:16]<=data_in_r2;

                                if (~write_r2)

                                    st_apb <= st_w4b_2;

                                end

                            else

                                begin

                                pwdata_i[15:0]<=data_in_r2;

                                if (~write_r2)

                                    st_apb <= st_idle;

                                end

                            rw_done <= 1'b1;

                            end

                            

            st_w4b_2    :   begin // write in 3 cycle

                            clr_cnt <= 1'b0;

                            if (cnt==4'd1)

                                begin

                                paddr_i <= {addr_r2[11:2],2'b00};

                                pstrb_i    <= 4'b1111;

                                pselx_i    <= 1'b1;

                                pwrite_i   <= 1'b1;

                                penable_i  <= 1'b0;

                                end

                            else if (cnt==4'd3)

                                penable_i <= 1'b1;

                            else if (cnt==4'd4)

                                begin

                                penable_i <= 1'b0;

                                st_apb <= st_w4b_3;

                                end

                            end



            st_w4b_3    :   begin // rw_done

                            if (~write_r2)

                                begin

                                st_apb <= st_idle;

                                end

                            end



            st_r4b_1    :   begin // read in 3 cycle

                            clr_cnt <= 1'b0;

                            if (cnt==4'd1)  

                                begin

                                pselx_i    <= 1'b0;

                                pwrite_i   <= 1'b0;

                                end

                            else if (cnt==4'd2)

                                begin

                                paddr_i <= {addr_r2[11:2],2'b00};

                                pstrb_i    <= 4'b0000;

                                pselx_i    <= 1'b1;

                                pwrite_i   <= 1'b0;

                                penable_i <= 1'b0;

                                end

                            else if (cnt==4'd4)

                                begin

                                penable_i <= 1'b1;

                                end

                            else if (cnt==4'd5)

                                begin

                                penable_i <= 1'b0;

                                data_out_r <= prdata_o;

                                st_apb <= st_r4b_2;

                                end

                            end



            st_r4b_2    :   begin // snd data and rw_done

                            rw_done <= 1'b1;

                            if (addr_r2[0])

                                data_out <= data_out_r[31:16];

                            else

                                data_out <= data_out_r[15:0];

                                

                            if (~read_r2)

                                st_apb <= st_idle;

                            end



            default     :   begin

                            st_apb <= st_idle;

                            clr_cnt <= 1'b0;

                            paddr_i     <= 1'b0;

                            pstrb_i     <= 1'b0;

                            pwdata_i    <= 1'b0;

                            pselx_i     <= 1'b0;

                            pwrite_i    <= 1'b0;

                            penable_i   <= 1'b0;

                            rw_done <= 1'b0;

                            data_out_r <= 1'b0;

                            end

        endcase 

    /*

    else

        begin

        st_apb <= st_idle;

        clr_cnt <= 1'b0;

        paddr_i     <= 1'b0;

        pstrb_i     <= 1'b0;

        pwdata_i    <= 1'b0;

        pselx_i     <= 1'b0;

        pwrite_i    <= 1'b0;

        penable_i   <= 1'b0;

        rw_done <= 1'b0;

        data_out_r <= 1'b0;

        end 

    */



end



endmodule





// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------

// ------------------------------------------------------------------------





// ------------------------------------

// DAC8G14BIT - JTAG

// Bridge from IEEE1500 to JTAG

// ------------------------------------



// Bridge from IEEE1500 to JTAG

module i1500_jtag(

  // JTAG pads

  TMS_i, 

  TCK_i, 

  TRST_i, 

  TDI_i, 

  TDO_o, 



  // IEEE1500

  wrck_o,

  wrstn_o,

  shiftwr_o,

  updatewr_o,

  capturewr_o,

  selectwir_o,

  wsi_o,

  wso_i

);

input TMS_i, TCK_i, TRST_i, TDI_i;

output TDO_o;

output wrck_o, shiftwr_o, updatewr_o, capturewr_o, selectwir_o, wsi_o, wrstn_o;

input wso_i;



wire TDO_OE_o, TDO_o_internal;

wire shift_dr_o, pause_dr_o, update_dr_o, capture_dr_o, update_ir_o;

wire update_select, capture_select, ir_select, dr_select, bypass_select;

wire tdo_sub_o;

wire debug_tdi_i, bs_chain_tdi_i, mbist_tdi_i;



wire accessed;

wire accessed_ir;

reg capturewr_o_reg, shiftwr_o_reg, selectwir_o_reg;

reg isIR;

reg isDR;

reg ir_select_d1, dr_select_d1;

reg update_ir_d1, update_ir_d2;



assign accessed = isIR | isDR;

assign accessed_ir = isIR;

assign wrck_o = TCK_i;

assign wrstn_o = ~TRST_i;

assign wsi_o = TDI_i;

assign TDO_o = accessed ? wso_i : TDO_o_internal;

assign capturewr_o = capturewr_o_reg;

assign shiftwr_o = shiftwr_o_reg;

assign updatewr_o = accessed & update_select & update_ir_d2;

assign selectwir_o = selectwir_o_reg;



always @(negedge TCK_i) begin

  capturewr_o_reg = accessed & capture_select & update_ir_d2;

  shiftwr_o_reg = accessed & shift_dr_o;

  selectwir_o_reg = accessed_ir;

end



always @(posedge TCK_i or posedge TRST_i) begin

  if (TRST_i) begin

    ir_select_d1 <= 0;

    dr_select_d1 <= 0;

//    update_select_d1 <= 0;

//    capture_select_d1 <= 0;

    update_ir_d1 <= 0;

    update_ir_d2 <= 0;

    isIR <= 0;

    isDR <= 0;

  end

  else begin

    ir_select_d1 <= ir_select;

    dr_select_d1 <= dr_select;

//    update_select_d1 <= update_select;

//    capture_select_d1 <= capture_select;

    update_ir_d1 <= update_ir_o;

    update_ir_d2 <= update_ir_d1;

    if(ir_select & (~ir_select_d1)) begin

      isIR <= 1;

      isDR <= 0;

    end

    else begin

      if (dr_select & (~dr_select_d1)) begin

        isIR <= 0;

        isDR <= 1;

      end

      else begin

        if (bypass_select) begin

          isIR <= 0;

          isDR <= 0;

        end

      end

    end

  end

end



tap_top tap_inst(

  // JTAG pads

  .tms_pad_i(TMS_i), 

  .tck_pad_i(TCK_i), 

  .trst_pad_i(TRST_i), 

  .tdi_pad_i(TDI_i), 

  .tdo_pad_o(TDO_o_internal), 

  .tdo_padoe_o(TDO_OE_o),



  // TAP states

  .shift_dr_o(shift_dr_o),

  .pause_dr_o(pause_dr_o), 

  .update_dr_o(update_dr_o),

  .capture_dr_o(capture_dr_o),

  .update_ir_o(update_ir_o),

  

  // Select signals for boundary scan or mbist

  .extest_select_o(update_select), 

  .sample_preload_select_o(capture_select),

  .mbist_select_o(ir_select),

  .debug_select_o(dr_select),

  .bypass_select_o(bypass_select),

  

  // TDO signal that is connected to TDI of sub-modules.

  .tdo_o(tdo_sub_o), 

  

  // TDI signals from sub-modules

  .debug_tdi_i(1'b0),    // from debug module

  .bs_chain_tdi_i(1'b0), // from Boundary Scan Chain

  .mbist_tdi_i(1'b0)     // from Mbist Chain

  );

endmodule







// Define IDCODE Value

`define IDCODE_VALUE  32'h9ad12ac1

// 0001             version

// 0100100101010001 part number (IQ)

// 00011100001      manufacturer id (flextronics)

// 1                required by standard



// Length of the Instruction register

`define IR_LENGTH   4



// Supported Instructions

`define EXTEST          4'b0000   //update

`define SAMPLE_PRELOAD  4'b0001   //capture

`define IDCODE          4'b0010

`define DEBUG           4'b1000   //IR

`define MBIST           4'b1001   //DR

`define BYPASS          4'b1111   //cancel IR DR





// synopsys translate_off

`timescale 1ps/1ps

// synopsys translate_on

//`include "tap_defines.v"



// Top module

module tap_top(

                // JTAG pads

                tms_pad_i, 

                tck_pad_i, 

                trst_pad_i, 

                tdi_pad_i, 

                tdo_pad_o, 

                tdo_padoe_o,



                // TAP states

                shift_dr_o,

                pause_dr_o, 

                update_dr_o,

                capture_dr_o,

                update_ir_o,

                

                // Select signals for boundary scan or mbist

                extest_select_o, 

                sample_preload_select_o,

                mbist_select_o,

                debug_select_o,

                bypass_select_o,

                

                // TDO signal that is connected to TDI of sub-modules.

                tdo_o, 

                

                // TDI signals from sub-modules

                debug_tdi_i,    // from debug module

                bs_chain_tdi_i, // from Boundary Scan Chain

                mbist_tdi_i     // from Mbist Chain

              );





// JTAG pins

input   tms_pad_i;      // JTAG test mode select pad

input   tck_pad_i;      // JTAG test clock pad

input   trst_pad_i;     // JTAG test reset pad

input   tdi_pad_i;      // JTAG test data input pad

output  tdo_pad_o;      // JTAG test data output pad

output  tdo_padoe_o;    // Output enable for JTAG test data output pad 



// TAP states

output  shift_dr_o;

output  pause_dr_o;

output  update_dr_o;

output  capture_dr_o;

output  update_ir_o;



// Select signals for boundary scan or mbist

output  extest_select_o;

output  sample_preload_select_o;

output  mbist_select_o;

output  debug_select_o;

output  bypass_select_o;



// TDO signal that is connected to TDI of sub-modules.

output  tdo_o;



// TDI signals from sub-modules

input   debug_tdi_i;    // from debug module

input   bs_chain_tdi_i; // from Boundary Scan Chain

input   mbist_tdi_i;    // from Mbist Chain



// Registers

reg     test_logic_reset;

reg     run_test_idle;

reg     select_dr_scan;

reg     capture_dr;

reg     shift_dr;

reg     exit1_dr;

reg     pause_dr;

reg     exit2_dr;

reg     update_dr;

reg     select_ir_scan;

reg     capture_ir;

reg     shift_ir, shift_ir_neg;

reg     exit1_ir;

reg     pause_ir;

reg     exit2_ir;

reg     update_ir;

reg     extest_select;

reg     sample_preload_select;

reg     idcode_select;

reg     mbist_select;

reg     debug_select;

reg     bypass_select;

reg     tdo_pad_o;

reg     tdo_padoe_o;

reg     tms_q1, tms_q2, tms_q3, tms_q4;

wire    tms_reset;



assign tdo_o = tdi_pad_i;

assign shift_dr_o = shift_dr;

assign pause_dr_o = pause_dr;

assign update_dr_o = update_dr;

assign capture_dr_o = capture_dr;

assign update_ir_o = update_ir;



assign extest_select_o = extest_select;

assign sample_preload_select_o = sample_preload_select;

assign mbist_select_o = mbist_select;

assign debug_select_o = debug_select;

assign bypass_select_o = bypass_select;





always @ (posedge tck_pad_i)

begin

  tms_q1 <= #1 tms_pad_i;

  tms_q2 <= #1 tms_q1;

  tms_q3 <= #1 tms_q2;

  tms_q4 <= #1 tms_q3;

end





assign tms_reset = tms_q1 & tms_q2 & tms_q3 & tms_q4 & tms_pad_i;    // 5 consecutive TMS=1 causes reset





/**********************************************************************************

*                                                                                 *

*   TAP State Machine: Fully JTAG compliant                                       *

*                                                                                 *

**********************************************************************************/



// test_logic_reset state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    test_logic_reset<=#1 1'b1;

  else if (tms_reset)

    test_logic_reset<=#1 1'b1;

  else

    begin

      if(tms_pad_i & (test_logic_reset | select_ir_scan))

        test_logic_reset<=#1 1'b1;

      else

        test_logic_reset<=#1 1'b0;

    end

end



// run_test_idle state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    run_test_idle<=#1 1'b0;

  else if (tms_reset)

    run_test_idle<=#1 1'b0;

  else

  if(~tms_pad_i & (test_logic_reset | run_test_idle | update_dr | update_ir))

    run_test_idle<=#1 1'b1;

  else

    run_test_idle<=#1 1'b0;

end



// select_dr_scan state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    select_dr_scan<=#1 1'b0;

  else if (tms_reset)

    select_dr_scan<=#1 1'b0;

  else

  if(tms_pad_i & (run_test_idle | update_dr | update_ir))

    select_dr_scan<=#1 1'b1;

  else

    select_dr_scan<=#1 1'b0;

end



// capture_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    capture_dr<=#1 1'b0;

  else if (tms_reset)

    capture_dr<=#1 1'b0;

  else

  if(~tms_pad_i & select_dr_scan)

    capture_dr<=#1 1'b1;

  else

    capture_dr<=#1 1'b0;

end



// shift_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    shift_dr<=#1 1'b0;

  else if (tms_reset)

    shift_dr<=#1 1'b0;

  else

  if(~tms_pad_i & (capture_dr | shift_dr | exit2_dr))

    shift_dr<=#1 1'b1;

  else

    shift_dr<=#1 1'b0;

end



// exit1_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    exit1_dr<=#1 1'b0;

  else if (tms_reset)

    exit1_dr<=#1 1'b0;

  else

  if(tms_pad_i & (capture_dr | shift_dr))

    exit1_dr<=#1 1'b1;

  else

    exit1_dr<=#1 1'b0;

end



// pause_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    pause_dr<=#1 1'b0;

  else if (tms_reset)

    pause_dr<=#1 1'b0;

  else

  if(~tms_pad_i & (exit1_dr | pause_dr))

    pause_dr<=#1 1'b1;

  else

    pause_dr<=#1 1'b0;

end



// exit2_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    exit2_dr<=#1 1'b0;

  else if (tms_reset)

    exit2_dr<=#1 1'b0;

  else

  if(tms_pad_i & pause_dr)

    exit2_dr<=#1 1'b1;

  else

    exit2_dr<=#1 1'b0;

end



// update_dr state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    update_dr<=#1 1'b0;

  else if (tms_reset)

    update_dr<=#1 1'b0;

  else

  if(tms_pad_i & (exit1_dr | exit2_dr))

    update_dr<=#1 1'b1;

  else

    update_dr<=#1 1'b0;

end



// select_ir_scan state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    select_ir_scan<=#1 1'b0;

  else if (tms_reset)

    select_ir_scan<=#1 1'b0;

  else

  if(tms_pad_i & select_dr_scan)

    select_ir_scan<=#1 1'b1;

  else

    select_ir_scan<=#1 1'b0;

end



// capture_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    capture_ir<=#1 1'b0;

  else if (tms_reset)

    capture_ir<=#1 1'b0;

  else

  if(~tms_pad_i & select_ir_scan)

    capture_ir<=#1 1'b1;

  else

    capture_ir<=#1 1'b0;

end



// shift_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    shift_ir<=#1 1'b0;

  else if (tms_reset)

    shift_ir<=#1 1'b0;

  else

  if(~tms_pad_i & (capture_ir | shift_ir | exit2_ir))

    shift_ir<=#1 1'b1;

  else

    shift_ir<=#1 1'b0;

end



// exit1_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    exit1_ir<=#1 1'b0;

  else if (tms_reset)

    exit1_ir<=#1 1'b0;

  else

  if(tms_pad_i & (capture_ir | shift_ir))

    exit1_ir<=#1 1'b1;

  else

    exit1_ir<=#1 1'b0;

end



// pause_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    pause_ir<=#1 1'b0;

  else if (tms_reset)

    pause_ir<=#1 1'b0;

  else

  if(~tms_pad_i & (exit1_ir | pause_ir))

    pause_ir<=#1 1'b1;

  else

    pause_ir<=#1 1'b0;

end



// exit2_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    exit2_ir<=#1 1'b0;

  else if (tms_reset)

    exit2_ir<=#1 1'b0;

  else

  if(tms_pad_i & pause_ir)

    exit2_ir<=#1 1'b1;

  else

    exit2_ir<=#1 1'b0;

end



// update_ir state

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    update_ir<=#1 1'b0;

  else if (tms_reset)

    update_ir<=#1 1'b0;

  else

  if(tms_pad_i & (exit1_ir | exit2_ir))

    update_ir<=#1 1'b1;

  else

    update_ir<=#1 1'b0;

end



/**********************************************************************************

*                                                                                 *

*   End: TAP State Machine                                                        *

*                                                                                 *

**********************************************************************************/







/**********************************************************************************

*                                                                                 *

*   jtag_ir:  JTAG Instruction Register                                           *

*                                                                                 *

**********************************************************************************/

reg [`IR_LENGTH-1:0]  jtag_ir;          // Instruction register

reg [`IR_LENGTH-1:0]  latched_jtag_ir, latched_jtag_ir_neg;

reg                   instruction_tdo;



always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    jtag_ir[`IR_LENGTH-1:0] <= #1 `IR_LENGTH'b0;

  else if(capture_ir)

    jtag_ir <= #1 4'b0101;          // This value is fixed for easier fault detection

  else if(shift_ir)

    jtag_ir[`IR_LENGTH-1:0] <= #1 {tdi_pad_i, jtag_ir[`IR_LENGTH-1:1]};

end



always @ (negedge tck_pad_i)

begin

  instruction_tdo <= #1 jtag_ir[0];

end

/**********************************************************************************

*                                                                                 *

*   End: jtag_ir                                                                  *

*                                                                                 *

**********************************************************************************/







/**********************************************************************************

*                                                                                 *

*   idcode logic                                                                  *

*                                                                                 *

**********************************************************************************/

reg [31:0] idcode_reg;

reg        idcode_tdo;



always @ (posedge tck_pad_i)

begin

  if(idcode_select & shift_dr)

    idcode_reg <= #1 {tdi_pad_i, idcode_reg[31:1]};

  else

    idcode_reg <= #1 `IDCODE_VALUE;

end



always @ (negedge tck_pad_i)

begin

    idcode_tdo <= #1 idcode_reg;

end

/**********************************************************************************

*                                                                                 *

*   End: idcode logic                                                             *

*                                                                                 *

**********************************************************************************/





/**********************************************************************************

*                                                                                 *

*   Bypass logic                                                                  *

*                                                                                 *

**********************************************************************************/

reg  bypassed_tdo;

reg  bypass_reg;



always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if (trst_pad_i)

    bypass_reg<=#1 1'b0;

  else if(shift_dr)

    bypass_reg<=#1 tdi_pad_i;

end



always @ (negedge tck_pad_i)

begin

  bypassed_tdo <=#1 bypass_reg;

end

/**********************************************************************************

*                                                                                 *

*   End: Bypass logic                                                             *

*                                                                                 *

**********************************************************************************/





/**********************************************************************************

*                                                                                 *

*   Activating Instructions                                                       *

*                                                                                 *

**********************************************************************************/

// Updating jtag_ir (Instruction Register)

always @ (posedge tck_pad_i or posedge trst_pad_i)

begin

  if(trst_pad_i)

    latched_jtag_ir <=#1 `IDCODE;   // IDCODE selected after reset

  else if (tms_reset)

    latched_jtag_ir <=#1 `IDCODE;   // IDCODE selected after reset

  else if(update_ir)

    latched_jtag_ir <=#1 jtag_ir;

end



/**********************************************************************************

*                                                                                 *

*   End: Activating Instructions                                                  *

*                                                                                 *

**********************************************************************************/





// Updating jtag_ir (Instruction Register)

always @ (latched_jtag_ir)

begin

  extest_select           = 1'b0;

  sample_preload_select   = 1'b0;

  idcode_select           = 1'b0;

  mbist_select            = 1'b0;

  debug_select            = 1'b0;

  bypass_select           = 1'b0;



  case(latched_jtag_ir)    /* synthesis parallel_case */ 

    `EXTEST:            extest_select           = 1'b1;    // External test

    `SAMPLE_PRELOAD:    sample_preload_select   = 1'b1;    // Sample preload

    `IDCODE:            idcode_select           = 1'b1;    // ID Code

    `MBIST:             mbist_select            = 1'b1;    // Mbist test

    `DEBUG:             debug_select            = 1'b1;    // Debug

    `BYPASS:            bypass_select           = 1'b1;    // BYPASS

    default:            bypass_select           = 1'b1;    // BYPASS

  endcase

end







/**********************************************************************************

*                                                                                 *

*   Multiplexing TDO data                                                         *

*                                                                                 *

**********************************************************************************/

always @ (shift_ir_neg or exit1_ir or instruction_tdo or latched_jtag_ir_neg or idcode_tdo or

          debug_tdi_i or bs_chain_tdi_i or mbist_tdi_i or 

          bypassed_tdo)

begin

  if(shift_ir_neg)

    tdo_pad_o = instruction_tdo;

  else

    begin

      case(latched_jtag_ir_neg)    // synthesis parallel_case

        `IDCODE:            tdo_pad_o = idcode_tdo;       // Reading ID code

        `DEBUG:             tdo_pad_o = debug_tdi_i;      // Debug

        `SAMPLE_PRELOAD:    tdo_pad_o = bs_chain_tdi_i;   // Sampling/Preloading

        `EXTEST:            tdo_pad_o = bs_chain_tdi_i;   // External test

        `MBIST:             tdo_pad_o = mbist_tdi_i;      // Mbist test

        default:            tdo_pad_o = bypassed_tdo;     // BYPASS instruction

      endcase

    end

end





// Tristate control for tdo_pad_o pin

always @ (negedge tck_pad_i)

begin

  tdo_padoe_o <= #1 shift_ir | shift_dr | (pause_dr & debug_select);

end

/**********************************************************************************

*                                                                                 *

*   End: Multiplexing TDO data                                                    *

*                                                                                 *

**********************************************************************************/





always @ (negedge tck_pad_i)

begin

  shift_ir_neg <= #1 shift_ir;

  latched_jtag_ir_neg <= #1 latched_jtag_ir;

end





endmodule






