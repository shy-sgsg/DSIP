`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/16 10:02:55
// Design Name: 
// Module Name: adc_top
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


module adc_top(

    input	        	    axi_clk			        ,
    input	        	    jesd_rst_p		        ,
    input	        	    axi_cfg_rstn	        ,
                                                    
    input	        	    global_clk_p		    ,
    input	        	    global_clk_n		    ,
                                                    
    input	        	    ad1_ref_clk_p			,
    input	        	    ad1_ref_clk_n			,
    input	        	    ad2_ref_clk_p			,
    input	        	    ad2_ref_clk_n			,
    input	        	    ad3_ref_clk_p			,
    input	        	    ad3_ref_clk_n			,
    input	        	    ad4_ref_clk_p			,
    input	        	    ad4_ref_clk_n			,
                                            
    input	        [07:00]	ad1_rxp			        ,
    input	        [07:00] ad1_rxn			        ,
    input	        [07:00]	ad2_rxp			        ,
    input	        [07:00] ad2_rxn			        ,
    input	        [07:00]	ad3_rxp			        ,
    input	        [07:00] ad3_rxn			        ,
    input	        [07:00]	ad4_rxp			        ,
    input	        [07:00] ad4_rxn			        ,
                                                          
    input                   rx_sysref               ,
    
    output	        		ad1_sync_p		        ,
    output	        		ad1_sync_n		        ,
    output	        		ad2_sync_p		        ,
    output	        		ad2_sync_n		        ,
    output	        		ad3_sync_p		        ,
    output	        		ad3_sync_n		        ,
    output	        		ad4_sync_p		        ,
    output	        		ad4_sync_n		        ,   
                                
    output                  rx_aclk1                ,  //由core_clk例化得到，250M
    output                  rx_aresetn1             ,    
    output  wire            rx_sync1                ,
    output  wire          	rx_tvalid1				,
    output  wire	[255:0]	rx_tdata1		        ,	
    
    output                  rx_aclk2                , //由core_clk例化得到，250M
    output                  rx_aresetn2             ,    
    output  wire            rx_sync2                ,
    output  wire          	rx_tvalid2				,
    output  wire	[255:0]	rx_tdata2		        ,
    
    output                  rx_aclk3                ,  //由core_clk例化得到，250M
    output                  rx_aresetn3             ,    
    output  wire            rx_sync3                ,
    output  wire          	rx_tvalid3				,
    output  wire	[255:0]	rx_tdata3		        ,
    
    output                  rx_aclk4                ,  //由core_clk例化得到，250M
    output                  rx_aresetn4             ,    
    output  wire            rx_sync4                ,
    output  wire          	rx_tvalid4				,
    output  wire	[255:0]	rx_tdata4		        	
    
    

);                   

    wire            refclk1                     ;
    wire            refclk2                     ;
    wire            refclk3                     ;
    wire            refclk4                     ;
    wire            rx_core_clk                 ;
 
jesd204_0_clocking

i_shared_clocks(
  .refclk1_pad_n        (ad1_ref_clk_n  ),
  .refclk1_pad_p        (ad1_ref_clk_p  ),
  .refclk2_pad_n        (ad2_ref_clk_n  ),
  .refclk2_pad_p        (ad2_ref_clk_p  ),
  .refclk3_pad_n        (ad3_ref_clk_n  ),
  .refclk3_pad_p        (ad3_ref_clk_p  ),
  .refclk4_pad_n        (ad4_ref_clk_n  ),
  .refclk4_pad_p        (ad4_ref_clk_p  ),
    
  .refclk1              (refclk1        ),       //Used to drive GT Ref clock      
  .refclk2              (refclk2        ),       //Used to drive GT Ref clock
  .refclk3              (refclk3        ),       //Used to drive GT Ref clock
  .refclk4              (refclk4        ),       //Used to drive GT Ref clock

  .glblclk_pad_n        (global_clk_n   ),
  .glblclk_pad_p        (global_clk_p   ),
                                        
  .coreclk              (rx_core_clk    )  //Clock used by JESD204 core and usrclk2 input for GT module

 );  
    

adc_module    u1_adc_module(

    .axi_clk		    (axi_clk	        ),// I AXI 时钟复位输入	
    .jesd_rst_p		    (jesd_rst_p		    ),
    .axi_cfg_rstn	    (axi_cfg_rstn	    ),
    
    .rx_sysref          (rx_sysref          ), // I sysref in
    
    

    .refclk             (refclk1            ),// I gtx ref
    .rx_core_clk        (rx_core_clk        ),// I glb

    .ad_rxp			    (ad1_rxp			),// I serdes
    .ad_rxn			    (ad1_rxn			),// I serdes
 
    .ad_sync_p		    (ad1_sync_p		    ),// O SYNC差分输出
    .ad_sync_n		    (ad1_sync_n		    ),
    
    .rx_aclk            (rx_aclk1           ),// O ADC时钟复位输出
    .rx_aresetn         (rx_aresetn1        ),
    
    .rx_tdata           (rx_tdata1          ),// O user data
    .rx_tvalid          (rx_tvalid1         ),// O user data valid     
    .rx_sync            (rx_sync1           )// O user sync    
        
);

adc_module    u2_adc_module(

    .axi_clk		    (axi_clk	        ),// I AXI 时钟复位输入	
    .jesd_rst_p		    (jesd_rst_p		    ),
    .axi_cfg_rstn	    (axi_cfg_rstn	    ),
    
    .rx_sysref          (rx_sysref          ), // I sysref in
    
    

    .refclk             (refclk2            ),// I gtx ref
    .rx_core_clk        (rx_core_clk        ),// I glb

    .ad_rxp			    (ad2_rxp			),// I serdes
    .ad_rxn			    (ad2_rxn			),// I serdes
 
    .ad_sync_p		    (ad2_sync_p		    ),// O SYNC差分输出
    .ad_sync_n		    (ad2_sync_n		    ),
    
    .rx_aclk            (rx_aclk2           ),// O ADC时钟复位输出
    .rx_aresetn         (rx_aresetn2        ),
    
    .rx_tdata           (rx_tdata2          ),// O user data
    .rx_tvalid          (rx_tvalid2         ),// O user data valid     
    .rx_sync            (rx_sync2           )// O user sync    
        
);

adc_module    u3_adc_module(

    .axi_clk		    (axi_clk	        ),// I AXI 时钟复位输入	
    .jesd_rst_p		    (jesd_rst_p		    ),
    .axi_cfg_rstn	    (axi_cfg_rstn	    ),
    
    .rx_sysref          (rx_sysref          ), // I sysref in
    
    

    .refclk             (refclk3            ),// I gtx ref
    .rx_core_clk        (rx_core_clk        ),// I glb

    .ad_rxp			    (ad3_rxp			),// I serdes
    .ad_rxn			    (ad3_rxn			),// I serdes
 
    .ad_sync_p		    (ad3_sync_p		    ),// O SYNC差分输出
    .ad_sync_n		    (ad3_sync_n		    ),
    
    .rx_aclk            (rx_aclk3           ),// O ADC时钟复位输出
    .rx_aresetn         (rx_aresetn3        ),
    
    .rx_tdata           (rx_tdata3          ),// O user data
    .rx_tvalid          (rx_tvalid3         ),// O user data valid     
    .rx_sync            (rx_sync3           )// O user sync    
        
);

adc_module    u4_adc_module(

    .axi_clk		    (axi_clk	        ),// I AXI 时钟复位输入	
    .jesd_rst_p		    (jesd_rst_p		    ),
    .axi_cfg_rstn	    (axi_cfg_rstn	    ),
    
    .rx_sysref          (rx_sysref          ), // I sysref in
    
    

    .refclk             (refclk4            ),// I gtx ref
    .rx_core_clk        (rx_core_clk        ),// I glb

    .ad_rxp			    (ad4_rxp			),// I serdes
    .ad_rxn			    (ad4_rxn			),// I serdes
 
    .ad_sync_p		    (ad4_sync_p		    ),// O SYNC差分输出
    .ad_sync_n		    (ad4_sync_n		    ),
    
    .rx_aclk            (rx_aclk4           ),// O ADC时钟复位输出
    .rx_aresetn         (rx_aresetn4        ),
    
    .rx_tdata           (rx_tdata4          ),// O user data
    .rx_tvalid          (rx_tvalid4         ),// O user data valid     
    .rx_sync            (rx_sync4           )// O user sync    
        
);    
    
    
    
    
    
endmodule
