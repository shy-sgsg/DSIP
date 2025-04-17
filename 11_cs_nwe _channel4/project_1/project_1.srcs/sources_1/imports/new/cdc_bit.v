`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/15 21:12:34
// Design Name: 
// Module Name: cdc_bit
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


module cdc_bit(
    input src_clk,
    input dest_clk,
    input src_in,
    output dest_out
    );

   xpm_cdc_single #(
      .DEST_SYNC_FF(3),   // DECIMAL; range: 2-10
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .SRC_INPUT_REG(1)   // DECIMAL; 0=do not register input, 1=register input
   )
   xpm_cdc_single_inst (
      .dest_out(dest_out), // 1-bit output: src_in synchronized to the destination clock domain. This output is
                           // registered.

      .dest_clk(dest_clk), // 1-bit input: Clock signal for the destination clock domain.
      .src_clk(src_clk),   // 1-bit input: optional; required when SRC_INPUT_REG = 1
      .src_in(src_in)      // 1-bit input: Input signal to be synchronized to dest_clk domain.
   );

endmodule
