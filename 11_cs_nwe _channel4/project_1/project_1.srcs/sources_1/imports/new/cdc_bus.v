`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/15 21:00:53
// Design Name: 
// Module Name: cdc_bus
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


module cdc_bus
#(
    parameter DATA_WIDTH = 16
)
    (
        input                  src_clk,
        input                  dest_clk,
        input [DATA_WIDTH-1:0] src_in,
        output[DATA_WIDTH-1:0] dest_out
    );

        reg [DATA_WIDTH-1:0] src_in_d1 ;
        reg src_send ;
        wire src_rcv;

        always@(posedge src_clk)
        begin
            src_in_d1 <= src_in;
            if(src_in_d1 != src_in)
            begin
                src_send <= 1'b1;
            end
            else if(src_rcv)
            begin
                src_send <= 1'b0;
            end
        end


   xpm_cdc_handshake #(
      .DEST_EXT_HSK(0),   // DECIMAL; 0=internal handshake, 1=external handshake
      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .SRC_SYNC_FF(4),    // DECIMAL; range: 2-10
      .WIDTH(DATA_WIDTH)           // DECIMAL; range: 1-1024
   )
   xpm_cdc_handshake_inst (
      .dest_out(dest_out), // WIDTH-bit output: Input bus (src_in) synchronized to destination clock domain.
                           // This output is registered.

      .dest_req(dest_req), // 1-bit output: Assertion of this signal indicates that new dest_out data has been
                           // received and is ready to be used or captured by the destination logic. When
                           // DEST_EXT_HSK = 1, this signal will deassert once the source handshake
                           // acknowledges that the destination clock domain has received the transferred data.
                           // When DEST_EXT_HSK = 0, this signal asserts for one clock period when dest_out bus
                           // is valid. This output is registered.

      .src_rcv(src_rcv),   // 1-bit output: Acknowledgement from destination logic that src_in has been
                           // received. This signal will be deasserted once destination handshake has fully
                           // completed, thus completing a full data transfer. This output is registered.

      .dest_ack(),          // 1-bit input: optional; required when DEST_EXT_HSK = 1
      .dest_clk(dest_clk), // 1-bit input: Destination clock.
      .src_clk(src_clk),   // 1-bit input: Source clock.
      .src_in(src_in_d1),     // WIDTH-bit input: Input bus that will be synchronized to the destination clock
                           // domain.

      .src_send(src_send)  // 1-bit input: Assertion of this signal allows the src_in bus to be synchronized to
                           // the destination clock domain. This signal should only be asserted when src_rcv is
                           // deasserted, indicating that the previous data transfer is complete. This signal
                           // should only be deasserted once src_rcv is asserted, acknowledging that the src_in
                           // has been received by the destination logic.

   );
endmodule
