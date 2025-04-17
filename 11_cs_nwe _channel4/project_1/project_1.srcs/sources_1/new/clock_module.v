`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 16:55:49
// Design Name: 
// Module Name: clock_module
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


module clock_module(

    input           fpga_clk_100m_p         ,
    input           fpga_clk_100m_n         ,
          
    output          s_axi_aclk              ,   //100M
    output          edk_clk                 ,   //100M
    output          sysclk                  ,   //100M
    output          reset_n                 
        
    );
    
    wire                fpga_clk_100m       ;
    wire                locked              ;
        
    assign  reset_n = locked    ;
        
    IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst (
        .O              (fpga_clk_100m       ),  // Buffer output
        .I              (fpga_clk_100m_p     ),  // Diff_p buffer input (connect directly to top-level port)
        .IB             (fpga_clk_100m_n     ) // Diff_n buffer input (connect directly to top-level port)
    );
    BUFG BUFG_sysclk_inst (
       .O               (sysclk             ), // 1-bit output: Clock output
       .I               (fpga_clk_100m       )  // 1-bit input: Clock input
    );

    clk_wiz_0 da_clk_moudle
    (
        // Clock out ports
        .clk_out1       (s_axi_aclk         ),     // output clk_out1   100M
        .clk_out2       (edk_clk            ),     // output clk_out1   100M
        // Status and control signals
        .reset          (1'b0               ), // input reset
        .locked         (locked             ),       // output locked
        // Clock in ports
        .clk_in1        (sysclk             )
    );      // input clk_in1
endmodule
