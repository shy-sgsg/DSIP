`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/14 16:24:54
// Design Name: 
// Module Name: axi_lite_write
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

module axi_lite_write(
input   wire [29:0] offset,
input   wire [31:0] data,
input   wire        s_axi_aclk,
input   wire        s_axi_awready,
input   wire        s_axi_wready,
input   wire        s_axi_bvalid,
input   wire [1:0]  s_axi_bresp, ////end up state, unused    
output  wire [11:0] s_axi_awaddr,
output  wire        s_axi_awvalid,
output  wire [31:0] s_axi_wdata,
output  wire        s_axi_wvalid,
output  wire        s_axi_bready,
input   wire        axi_wr_en,
output  wire        axi_wr_busy,
input   wire        rst
    );
    reg   [31:0] reg_addr;
    reg   [31:0] reg_data;
    reg    [1:0] reg_resp;
    reg          reg_avalid,reg_dvalid,reg_bready;
    reg          busy;    
    reg    [2:0] state;
    assign  s_axi_awaddr  = reg_addr[11:0];////---- notice: bit witdh is not matched ?
    assign  s_axi_awvalid = reg_avalid;
    assign  s_axi_wdata   = reg_data;
    assign  s_axi_wvalid  = reg_dvalid;
    assign  s_axi_bready = reg_bready;
    assign  axi_wr_busy   = busy;    
        
    always @(posedge s_axi_aclk or posedge rst) begin
        if(rst) begin
            state <= 3'd0;
            busy  <= 1'b0;
            //////////////////
            reg_addr   <= 32'b0; 
            reg_avalid <=  1'b0;
            reg_data   <= 32'b0;
            reg_dvalid <=  1'b0;
            reg_bready<=  1'b0;            
        end
        else if (state == 3'd0) begin
            busy <= axi_wr_en;
            state <= (axi_wr_en?(state +1):state);
           ///////////////////
            reg_addr   <= axi_wr_en?{offset,2'b00}:32'b0; 
            reg_avalid <= axi_wr_en;
            reg_data   <= axi_wr_en?data:32'b0;
            reg_dvalid <= axi_wr_en;
        end
        else if (state == 3'd1) begin
            busy <= 1'b1;
            state <= (s_axi_awready?(state +1):state);
            ///////////////////wait for addr write ready 
            reg_addr   <= (s_axi_awready?32'b0:reg_addr); 
            reg_avalid <= ~s_axi_awready;
            reg_bready<= s_axi_awready;                 
        end
        else if (state == 3'd2) begin
            busy <= 1'b1;
            state <= (s_axi_wready?(state +1):state);
            ///////////////////wait for data write ready
            reg_data   <= (s_axi_wready?32'b0:s_axi_wdata);
            reg_dvalid <= ~s_axi_wready;            
        end        
        else if (state == 3'd3) begin
            busy <= 1'b1;
            state <= (s_axi_bvalid?(state +1):state);                        
        end  
        else if (state == 3'd4) begin
            busy <= 1'b0;
            state <= (busy?state:3'd0);//----- wait for busy 1 -> 0
        end        
    end
    
endmodule
