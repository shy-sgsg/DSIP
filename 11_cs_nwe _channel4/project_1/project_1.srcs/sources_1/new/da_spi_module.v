`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 17:08:31
// Design Name: 
// Module Name: da_spi_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//这个模块通过外部SPI接口控制四个DAC的SPI通信，通过分频生成SPI时钟信号，并检测片选信号的变化。这个模块可以用于FPGA中，以实现对多个DAC的SPI控制

module da_spi_module(
    
    input               edk_clk             ,   //100M
    input               reset               ,
    
    input               ada16d6000_1_csn    ,//所有DAC设备共享同一个csn信号
    input               ada16d6000_1_rst    ,//所有DAC设备共享同一个rst信号
    input               ada16d6000_1_sclk   ,    //所有DAC设备共享同一个SPI时钟信号
    input               ada16d6000_1_sdi    ,   //所有DAC设备共享同一个SPI数据线
    output              ada16d6000_1_sdo    ,

    output              dac1_csn            ,           
    output              dac1_rst            ,
    output              dac1_sclk           ,   //6.25
    output              dac1_sdi            ,
    input               dac1_sdo            ,
    
    output              dac2_csn            ,           
    output              dac2_rst            ,
    output              dac2_sclk           , //6.25
    output              dac2_sdi            ,
    input               dac2_sdo            ,
    
    output              dac3_csn            ,           
    output              dac3_rst            ,
    output              dac3_sclk           ,//1M
    output              dac3_sdi            ,
    input               dac3_sdo            ,
    
    output              dac4_csn            ,           
    output              dac4_rst            ,
    output              dac4_sclk           , //1M
    output              dac4_sdi            ,
    input               dac4_sdo               
    
    );
    reg     [7:0]       div_cnt                 ;
    wire                ada16d6000_1_sclk_s     ;
    reg                 ada16d6000_1_csn_dly    ;
    wire                csn_nos                 ;
    
    assign  dac1_csn    =   ada16d6000_1_csn;
    assign  dac1_rst    =   ada16d6000_1_rst    ;
    assign  dac1_sclk   =   ada16d6000_1_sclk_s   ;
    assign  dac1_sdi    =   ada16d6000_1_sdi    ;
    
    assign  dac2_csn    =   ada16d6000_1_csn    ;
    assign  dac2_rst    =   ada16d6000_1_rst    ;
    assign  dac2_sclk   =   ada16d6000_1_sclk_s   ;
    assign  dac2_sdi    =   ada16d6000_1_sdi    ;
    
    assign  dac3_csn    =   ada16d6000_1_csn    ;
    assign  dac3_rst    =   ada16d6000_1_rst    ;
    assign  dac3_sclk   =   ada16d6000_1_sclk_s   ;
    assign  dac3_sdi    =   ada16d6000_1_sdi    ;
    
    assign  dac4_csn    =   ada16d6000_1_csn    ;
    assign  dac4_rst    =   ada16d6000_1_rst    ;
    assign  dac4_sclk   =   ada16d6000_1_sclk_s   ;
    assign  dac4_sdi    =   ada16d6000_1_sdi    ;
    
    assign  ada16d6000_1_sdo = dac4_sdo &  dac3_sdo & dac2_sdo & dac1_sdo  ;
    
    always @(posedge edk_clk or posedge reset)
    begin
        if(reset)
        begin
            div_cnt <= 8'h0;
        end
        else if(csn_nos)
        begin
            div_cnt <= 8'b0;
        end
        else if(div_cnt == 100)
        begin
            div_cnt <= div_cnt;
        end
        else
        begin
            div_cnt <= div_cnt + 1;
        end
    end
    assign ada16d6000_1_sclk_s = (div_cnt == 100) ? ada16d6000_1_sclk : 0;
    
    always@(posedge edk_clk or posedge reset)
    begin
        if(reset)
        begin
            ada16d6000_1_csn_dly <= 1'b1;
        end
        else
        begin
            ada16d6000_1_csn_dly <= ada16d6000_1_csn ;
        end
    end
    assign csn_nos = ada16d6000_1_csn_dly  && !ada16d6000_1_csn ;    
    
endmodule
