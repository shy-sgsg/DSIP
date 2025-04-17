`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 10:07:07
// Design Name: 
// Module Name: axi_top
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


module axi_top(
			axi_clk          ,          // in : system clock
            axi_rstn         ,          // in : system reset : low valid
            // with aw
            awaddr           ,
            awvalid          ,
            awready          ,
            // with w        
            wdata            ,
            wvalid           ,
            wready           ,
            // with ar    
            araddr           ,
            arvalid          ,
            arready          ,
            // with r
            rdata            ,
            rresp            ,
            rvalid           ,
            rready           ,
            // with b 
            bresp            ,
            bvalid           ,
            bready           ,
			// with test
            axi_rstdone      
    );
/********************************************************************************\
    I/O
\********************************************************************************/
input                              axi_clk                      ;   // in :system clock
input                              axi_rstn                     ;   // in :system reset : low valid
// with aw                   
(*keep = "true"*)output   [11 : 0]                  awaddr      ;                     
(*keep = "true"*)output                             awvalid     ; 
(*keep = "true"*)input                              awready     ; 
// with w                    
(*keep = "true"*)output   [31 : 0]                  wdata       ; 
(*keep = "true"*)output                             wvalid      ; 
(*keep = "true"*)input                              wready      ; 
// with ar                   
(*keep = "true"*)output   [11 : 0]                  araddr      ; 
(*keep = "true"*)output                             arvalid     ; 
(*keep = "true"*)input                              arready     ; 
// with r
(*keep = "true"*)input    [31 : 0]                  rdata       ; 
(*keep = "true"*)input    [1 : 0]                   rresp       ; 
(*keep = "true"*)input                              rvalid      ; 
(*keep = "true"*)output                             rready      ; 
// with b 
(*keep = "true"*)input    [1 : 0]                   bresp       ; 
(*keep = "true"*)input                              bvalid      ; 
(*keep = "true"*)output                             bready      ; 
// with test
(*keep = "true"*)output                             axi_rstdone ;
/********************************************************************************\
    wire
\********************************************************************************/
(*keep = "true"*)
wire                               wr_ok                        ;
(*keep = "true"*)
wire                               rd_ok                        ;
wire                               wr_start                     ;
wire                               rd_start                     ;
wire     [11 : 0]                  wr_addr                      ; 
wire     [11 : 0]                  rd_addr                      ;
wire     [31 : 0]                  wr_data                      ;
wire     [31 : 0]                  rd_data                      ;
wire                               axi_rstdone                  ;
/********************************************************************************\
    axi_prco inst
\********************************************************************************/
axi_proc  u_axi_proc (
     .axi_clk     (axi_clk     ),          // in : system clock
     .axi_rstn    (axi_rstn    ),          // in : system reset : low valid
      // with aw              
     .awaddr      (awaddr      ),
     .awvalid     (awvalid     ),
     .awready     (awready     ),
      // with w               
     .wdata       (wdata       ),
     .wvalid      (wvalid      ),
     .wready      (wready      ),
      // with ar              
     .araddr      (araddr      ),
     .arvalid     (arvalid     ),
     .arready     (arready     ),
      // with r               
     .rdata       (rdata       ),
     .rresp       (rresp       ),
     .rvalid      (rvalid      ),
     .rready      (rready      ),
      // with b               
     .bresp       (bresp       ),
     .bvalid      (bvalid      ),
     .bready      (bready      ),
      // with app             
     .wr_start    (wr_start    ),
     .wr_addr     (wr_addr     ),
     .wr_data     (wr_data     ),
     .wr_ok       (wr_ok       ),
                              
     .rd_start    (rd_start    ),
     .rd_addr     (rd_addr     ),
     .rd_ok       (rd_ok       ),
     .rd_data     (rd_data     )
);
/********************************************************************************\
    axi_cfg inst
\********************************************************************************/
axi_cfg   u_axi_cfg (    
    .axi_clk      (axi_clk     ),          // in : system clock
    .axi_rstn     (axi_rstn    ),          // in : system reset : low valid
     // with app               
    .wr_start     (wr_start    ),
    .wr_addr      (wr_addr     ),
    .wr_data      (wr_data     ),
    .wr_ok        (wr_ok       ),
                               
    .rd_start     (rd_start    ),
    .rd_addr      (rd_addr     ),
    .rd_ok        (rd_ok       ),
    .rd_data      (rd_data     ),
                               
    .axi_rstdone  (axi_rstdone )
);     
    
    
endmodule
