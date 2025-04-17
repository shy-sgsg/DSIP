`timescale 1ns / 1ps

module TOP_DAC(

    input   wire             sysclk          ,
    input   wire             syncbp          ,
    input   wire             syncbn          ,
    output  wire             rst_out         ,
    input   wire             refclk_p        ,                              // input wire refclk_p
    input   wire             refclk_n        ,                              // input wire refclk_n
    input   wire             tx_core_clk_in  ,
    output  wire     [7:0]   txp             ,    //输出的dac并行信号
    output  wire     [7:0]   txn             ,
    input   wire             s_axi_aclk      ,
    output  wire             sysref_logic    ,
    output  wire             dac_status      ,
   
    input   wire     [15:0]  delta_phase_vio ,
    input   wire             rst_dds_vio     ,
    input   wire     [7:0]   sysref_div_vio  ,
    input   wire     [7:0]   sysref_num_vio  ,
    input   wire             rst_sysref      ,
    input   wire             rst_dac_spi     ,
    input   wire             rst_axi_vio     ,
    input   wire             axi_wr_en_vio   ,
    input   wire     [29:0]  axi_addr_vio    ,
    input   wire     [31:0]  axi_data_vio    ,
    input   wire     [255:0] tx_tdata_vio                
   
    );
    
    //////////////---------------debug-------///////////////////////////
    wire axi_wr_busy_vio;////(*mark_debug*)
    (* MARK_DEBUG="true" *)wire syncb_logic;///// (*mark_debug*)
    wire tx_tready           ;
    ///////////////////////////////////////////////////////////////////   
    
    wire        done;
    wire [35:0] wdata;
    wire [19:0] spi_rd_total,rdata;
    (* MARK_DEBUG="true" *)wire [255:0] tx_tdata;
    
      assign  rst_out = rst_dac_spi;       
    ///////////////////------SYSREF SYNCBOUT-----/////////////////////////
//    (*mark_debug*) wire syncb_vio,sysref_vio;
    (* MARK_DEBUG="true" *) wire syncb_buf; 
   
    IBUFDS #(
        .DIFF_TERM              ("TRUE"),       // Differential Termination
        .IBUF_LOW_PWR           ("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
        .IOSTANDARD             ("LVDS")     // Specify the input I/O standard
    ) IBUFDS_inst_syncb (
        .O                      (syncb_buf                  ),  // Buffer output
        .I                      (syncbp                     ),  // Diff_p buffer input (connect directly to top-level port)
        .IB                     (syncbn                     ) // Diff_n buffer input (connect directly to top-level port)
    );         
   //----------------------------------------//    
   assign  syncb_logic = ~syncb_buf;     
   //////////////////----------204B-------------//////////////////////////
   wire         s_axi_awready,s_axi_wready,s_axi_bvalid;
   wire [1:0]   s_axi_bresp; ////end up state, unused    
   wire [11:0]  s_axi_awaddr;
   wire         s_axi_awvalid;
   wire [31:0]  s_axi_wdata;
   wire         s_axi_wvalid;
   wire         s_axi_bready;
   (*mark_debug*) wire tx_aresetn;
   (*mark_debug*) wire common0_pll_lock_out,common1_pll_lock_out;
   wire         tx_core_clk_out; 
   
   assign tx_core_clk_out = tx_core_clk_in;
   
 jesd204_1_support i_jesd204_1_support_block(
        // GT Reference Clock
        .refclk_p                 (refclk_p                 ),                              // input wire refclk_p
        .refclk_n                 (refclk_n                 ),                              // input wire refclk_n
        // Global Clock 
        .drpclk                   (s_axi_aclk               ),
        .common0_pll_lock_out     (common0_pll_lock_out     ),
        .common0_pll_refclk_out   (                         ),
        .common0_pll_clk_out      (                         ),
        .common1_pll_lock_out     (common1_pll_lock_out     ),
        .common1_pll_refclk_out   (                         ),
        .common1_pll_clk_out      (                         ),
        // Tx   
        .tx_reset                 (rst_dac_spi              ),                           // input wire tx_reset
        .tx_core_clk_in           (tx_core_clk_in           ),                // output wire tx_core_clk_out
        .tx_sysref                (sysref_logic             ),                          // input wire tx_sysref
        .tx_sync                  (syncb_logic              ),                           // input wire tx_sync
        .txp                      (txp                      ),                                        // output wire [7 : 0] txp
        .txn                      (txn                      ),                                        // output wire [7 : 0] txn
        // Tx AXI interface for each lane   
        .tx_aresetn               (tx_aresetn               ),
        .tx_start_of_frame        (                         ),
        .tx_start_of_multiframe   (                         ),
        // Lane Data    
        .tx_tdata                 (tx_tdata                 ),
        .tx_tready                (tx_tready                ),
        
        .dac_status               (dac_status               ),
        // AXI-Lite Control/Status  
        .s_axi_aclk               (s_axi_aclk               ),                          // input wire s_axi_aclk
        .s_axi_aresetn            (~rst_axi_vio             ),                    // input wire s_axi_aresetn
        .s_axi_awaddr             (s_axi_awaddr             ),                      // input wire [11 : 0] s_axi_awaddr
        .s_axi_awvalid            (s_axi_awvalid            ),                    // input wire s_axi_awvalid
        .s_axi_awready            (s_axi_awready            ),                    // output wire s_axi_awready
        .s_axi_wdata              (s_axi_wdata              ),                        // input wire [31 : 0] s_axi_wdata
        .s_axi_wstrb              (4'hF                     ),                        // input wire [3 : 0] s_axi_wstrb
        .s_axi_wvalid             (s_axi_wvalid             ),                      // input wire s_axi_wvalid
        .s_axi_wready             (s_axi_wready             ),                      // output wire s_axi_wready
        .s_axi_bresp              (s_axi_bresp              ),                        // output wire [1 : 0] s_axi_bresp
        .s_axi_bvalid             (s_axi_bvalid             ),                      // output wire s_axi_bvalid
        .s_axi_bready             (s_axi_bready             ),                      // input wire s_axi_bready
        .s_axi_araddr             (12'b0                    ),                      // input wire [11 : 0] s_axi_araddr
        .s_axi_arvalid            (1'b0                     ),                    // input wire s_axi_arvalid
        .s_axi_arready            (                         ),                    // output wire s_axi_arready
        .s_axi_rdata              (                         ),                        // output wire [31 : 0] s_axi_rdata
        .s_axi_rresp              (                         ),                        // output wire [1 : 0] s_axi_rresp
        .s_axi_rvalid             (                         ),                      // output wire s_axi_rvalid
        .s_axi_rready             (1'b0                     )                      // input wire 
);  
   
 axi_lite_write my_axi_lite_writer(
        .offset                   (axi_addr_vio             ),////[29:0]
        .data                     (axi_data_vio             ),
        .s_axi_aclk               (s_axi_aclk               ),
        .s_axi_awready            (s_axi_awready            ),
        .s_axi_wready             (s_axi_wready             ),
        .s_axi_bvalid             (s_axi_bvalid             ),
        .s_axi_bresp              (s_axi_bresp              ), ////end up state, unused    
        .s_axi_awaddr             (s_axi_awaddr             ),
        .s_axi_awvalid            (s_axi_awvalid            ),
        .s_axi_wdata              (s_axi_wdata              ),
        .s_axi_wvalid             (s_axi_wvalid             ),
        .s_axi_bready             (s_axi_bready             ),
        .axi_wr_en                (axi_wr_en_vio            ),
        .axi_wr_busy              (axi_wr_busy_vio          ),
        .rst                      (rst_axi_vio              )
       ); 

  sysref_gen_dac my_sysref_gen(
        .clk                      (tx_core_clk_out          ),
        .rst                      ((~tx_aresetn)|rst_sysref ),
        .div_cfg                  (sysref_div_vio           ),
        .sysref_num               (sysref_num_vio           ),
        .sysref                   (sysref_logic             )
       );   
    ////////////////////////----------data_gen-------//////////////////////

     wire [255:0] dout_dds  ; 
     sine_gen my_sine_gen(
        .clk                       (tx_core_clk_out         ),
        .delta_phase               (delta_phase_vio         ),
        .dout                      (dout_dds                ),
        .rstn                      (tx_aresetn&(~rst_dds_vio))
        );       
        
    assign tx_tdata = dout_dds;                 

endmodule
