`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/16 10:06:37
// Design Name: 
// Module Name: adc_module
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


module adc_module(

input			axi_clk			        ,
input			jesd_rst_p		        ,
input			axi_cfg_rstn	        ,
                                        
input			refclk                  ,
                                        
input			rx_core_clk             ,   //250M
                                        
input	[07:00]	ad_rxp			        ,
input	[07:00] ad_rxn			        ,
                                        
output			ad_sync_p		        ,
output			ad_sync_n		        ,

output          rx_aclk                 , //rx_aclk为250M  外部global给的
output          rx_aresetn              ,
input           rx_sysref               ,

output          rx_sync                 ,
output          rx_tdata                ,
output          rx_tvalid           

//output          rx_sysref_fpga 



    );


wire			rx_sync					        ;
wire			rx_sysref					    ;
wire	        rx_aresetn					    ;
wire	[3:0]	rx_start_of_frame			    ;
wire	[3:0]  	rx_end_of_frame			        ;
wire	[3:0]  	rx_start_of_multiframe		    ;
wire	[3:0]  	rx_end_of_multiframe		    ;
wire	[15:0]  rx_frame_error				    ;


wire			rx_aclk							;
wire          	rx_tvalid						;
wire	[255:0]	rx_tdata					    ;

wire            common0_pll_clk_out             ;
wire            common0_pll_refclk_out          ;
wire            common0_pll_lock_out            ;
wire            common1_pll_clk_out             ;
wire            common1_pll_refclk_out          ;
wire            common1_pll_lock_out	        ;


    
//---------adc axi cfg    
wire	[11:0]	axi_awaddr					; 
wire         	axi_awvalid				    ; 
wire         	axi_awready				    ; 
wire	[31:0]	axi_wdata					; 
wire         	axi_wvalid					; 
wire			axi_wready					; 
wire 	[01:0]  axi_bresp					; 
wire			axi_bvalid					; 
wire			axi_bready					; 
wire	[11:0]	axi_araddr					; 
wire			axi_arvalid				    ; 
wire			axi_arready				    ; 
wire	[31:0]	axi_rdata					; 
wire	[1:0]	axi_rresp					; 
wire			axi_rvalid					; 
wire			axi_rready					; 
wire			axi_rstdone				    ; 

//assign rx_sysref_fpga = rx_sysref ;

jesd204_0_support u_adc_jesd204b(                                                                                
  // GT Reference Clock                                                                                          
  .refclk                   (refclk                     ),                                                        
  // GLB CLK                                                                                                                                                                        
  .rx_core_clk              (rx_core_clk                ),      //250M                                      
  // common                                                                                                      
  .common0_pll_lock_out  	(common0_pll_lock_out  		),// output wire common0_pll_clk_out                                    
  .common0_pll_refclk_out	(common0_pll_refclk_out		),// output wire common0_pll_refclk_out                                 
  .common0_pll_clk_out      (common0_pll_clk_out   		),// output wire common0_pll_lock_out                                   
  .common1_pll_lock_out     (common1_pll_lock_out  		),// output wire common1_pll_clk_out                                    
  .common1_pll_refclk_out   (common1_pll_refclk_out		),// output wire common1_pll_refclk_out ,                              
  .common1_pll_clk_out      (common1_pll_clk_out   		),// output wire common1_pll_lock_out	                                  
                                                                                                                 
  .drpclk                   (axi_clk                    ),                                                      
   // Rx                                                                                                         
  .rx_reset                 (jesd_rst_p					),                                                               
  .rx_core_clk_out          (rx_aclk      		    	),     //rx_core_clk_out为250M                                                       
  .rx_sysref                (rx_sysref					),                                                               
  .rx_sync                  (rx_sync				    ),                                                               
                                                                                                                 
  .rxp                      (ad_rxp			            ),                                                             
  .rxn                      (ad_rxn			            ),                                                             
                                                                                                                 
  // Rx AXI-S interface for each lane ***output***                                                               
  .rx_aresetn               (rx_aresetn			        ),                                                             
  .rx_start_of_frame        (rx_start_of_frame		    ),                                                         
  .rx_end_of_frame          (rx_end_of_frame		    ),                                                           
  .rx_start_of_multiframe   (rx_start_of_multiframe     ),                                                       
  .rx_end_of_multiframe     (rx_end_of_multiframe	    ),                                                       
  .rx_frame_error           (rx_frame_error		        ),                                                           
                                                                                                                 
  .rx_tdata                 (rx_tdata				    ),                                                             
  .rx_tvalid                (rx_tvalid				    ),                                                               
                                                                                                                 
  // AXI-Lite Control/Status                                                                                     
  .s_axi_aclk               (axi_clk				    ),                                                               
  .s_axi_aresetn            (axi_cfg_rstn			    ),                                                             
  .s_axi_awaddr             (axi_awaddr 			    ),                                                             
  .s_axi_awvalid            (axi_awvalid			    ),                                                             
  .s_axi_awready            (axi_awready			    ),                                                             
  .s_axi_wdata              (axi_wdata  			    ),                                                             
  .s_axi_wstrb              (4'hF               		),                                                           
  .s_axi_wvalid             (axi_wvalid 			    ),                                                             
  .s_axi_wready             (axi_wready 			    ),                                                             
  .s_axi_bresp              (axi_bresp  			    ),                                                             
  .s_axi_bvalid             (axi_bvalid 			    ),                                                             
  .s_axi_bready             (axi_bready 			    ),                                                             
  .s_axi_araddr             (axi_araddr 			    ),                                                             
  .s_axi_arvalid            (axi_arvalid			    ),                                                             
  .s_axi_arready            (axi_arready			    ),                                                             
  .s_axi_rdata              (axi_rdata  			    ),                                                             
  .s_axi_rresp              (axi_rresp  			    ),                                                             
  .s_axi_rvalid             (axi_rvalid 			    ),                                                             
  .s_axi_rready             (axi_rready 			    )                                                              
);

   OBUFDS #(
      .IOSTANDARD   ("LVDS"              ),// Specify the output I/O standard
      .SLEW         ("FAST"                 ) // Specify the output slew rate
   ) OBUFDS_inst_syncb (
      .O            (ad_sync_p		        ),// Diff_p output (connect directly to top-level port)
      .OB           (ad_sync_n      	    ),// Diff_n output (connect directly to top-level port)
      .I            (rx_sync			    ) // Buffer input
   );



//----------------------------------
//----------AXI 配置
//----------------------------------
axi_top  u_axi_top(
	.axi_clk       			(axi_clk         	),          
	.axi_rstn      			(axi_cfg_rstn      	),
	               			                   	
	.awaddr        			(axi_awaddr         ),
	.awvalid       			(axi_awvalid        ),
	.awready       			(axi_awready        ),
           	                                    
	.wdata         			(axi_wdata          ),
	.wvalid        			(axi_wvalid         ),
	.wready        			(axi_wready         ),
           	                                    
	.araddr        			(axi_araddr         ),
	.arvalid       			(axi_arvalid        ),
	.arready       			(axi_arready        ),
           	                                    
	.rdata         			(axi_rdata          ),
	.rresp         			(axi_rresp          ),
	.rvalid        			(axi_rvalid         ),
	.rready        			(axi_rready         ),
           	                                    
	.bresp         			(axi_bresp          ),
	.bvalid        			(axi_bvalid         ),
	.bready        			(axi_bready         ),
	.axi_rstdone   			(axi_rstdone        )  
);





    
endmodule
