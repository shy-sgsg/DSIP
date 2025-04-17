`timescale 1ns / 1ps
// -----------------------------------------------------------
// SPI module, the std mod
// sclk is more slower than clk
// MSB first
// -----------------------------------------------------------

module SPI_module #(
	parameter SPI_WIDTH  	= 36 	,
	parameter DATA_WIDTH 	= 20	,
	parameter SCLK_CNT     = 150	,
	parameter DATA_RISING 	= 1 
	
)(
	clk		,
	rst		,
	
	sclk	,
	cs_n	,
	sdi		,
	sdo		,
	
	ready	,
	done	,
	wdata	,
	rdata   ,
//	sclk_sdk,
	sdi_sdk ,
//	csn_sdk ,
	vio_en  
);

// ---- ports -------------------------------------
input clk,rst;
output  reg sclk;
output  reg cs_n;
output  sdi;
input sdo;

input ready;
output done;
input [SPI_WIDTH-1:0] wdata;
output [DATA_WIDTH-1:0] rdata;

// output sclk_sdk;
input  sdi_sdk;
// output  csn_sdk;
input vio_en;

// ---- paramters -------------------------------------
localparam SCLK_CNT_1 = SCLK_CNT/3;
localparam SCLK_CNT_2 = (SCLK_CNT/3)*2;
localparam SCLK_CNT_RD = (DATA_RISING==1) ? SCLK_CNT_1 : SCLK_CNT_2; 


// ---- sclk and cnt -------------------------------------
reg [9:0] scnt;
reg [9:0] ncnt;

   // assign reg sclk=sclk_sdk;
   // assign cs_n=csn_sdk;

always @(posedge clk)
begin
     if (rst)
		begin
		scnt <= 1'b0;
		ncnt <= 1'b0;
		sclk <= 1'b0;
		cs_n <= 1'b1;
		end
	else
		begin
		if (ready)
			if (ncnt < SPI_WIDTH)
				begin
				cs_n <= 1'b0;
				if (scnt == SCLK_CNT)
					begin
					scnt <= 1'b0;
					ncnt <= ncnt + 1'b1;
					end
				else
					scnt <= scnt + 1'b1;
				end
			else
				cs_n <= 1'b1;
		else
			begin
			scnt <= 1'b0;
			ncnt <= 1'b0;
			cs_n <= 1'b1;
			end
			
		// sclk
		if (scnt < SCLK_CNT_1)
			sclk <= 1'b0;
		else if (scnt < SCLK_CNT_2)
			sclk <= 1'b1;
		else
			sclk <= 1'b0;
		end
end

assign done = (ncnt == SPI_WIDTH);



// ---- spi cmd -------------------------------------
reg [SPI_WIDTH-1:0] wdata1; 
reg [SPI_WIDTH-1:0] rdata1; 

always @(posedge clk)
begin
	if (rst)
		begin
		wdata1 <= 1'b0;
		rdata1 <= 1'b0;
		end
	else
		begin
		if (ready) 
			begin
			if ((ncnt == 1'b0) && (scnt == 1'b1))
				begin
				wdata1 <= wdata;
				rdata1 <= 1'b0;
				end
			else if (scnt == 1)
				wdata1[SPI_WIDTH-1:1] <= wdata1[SPI_WIDTH-2:0];
			else if (scnt == SCLK_CNT_RD)
				begin
				rdata1[0] <= sdo;
				rdata1[SPI_WIDTH-1:1] <= rdata1[SPI_WIDTH-2:0];
				end
			end
		else
			begin
			wdata1 <= 1'b0; 
			rdata1 <= 1'b0;
			end
		end
end 

assign sdi = (vio_en==1'b1)?wdata1[SPI_WIDTH-1]:sdi_sdk;
assign rdata = rdata1[DATA_WIDTH-1:0];

endmodule
