`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  div_cfg set the divider_factor of sysref
//  sysref_cnt defines the number of sysref generated after rst=1
//  v1.0, 20180714
//  by wdy
//////////////////////////////////////////////////////////////////////////////////

module sysref_gen(
input clk,
input rst,
input [7:0] div_cfg,
input [7:0] sysref_num,
output reg sysref
);

reg [7:0] cnt;
reg [7:0] sysref_cnt;

always @(posedge clk) begin
	if (rst) begin
		cnt <= 1;
		sysref_cnt <= 0;
		sysref <= 0;
	end
	else begin
		sysref <= 0;
		if (cnt < div_cfg)
			cnt <= cnt + 1;
		else begin
			cnt <= 1;
			if (sysref_cnt < sysref_num) begin
				sysref <= 1;
				sysref_cnt <= sysref_cnt + 1;
			end
			else
				sysref <= 0;
		end
	end
end

endmodule
