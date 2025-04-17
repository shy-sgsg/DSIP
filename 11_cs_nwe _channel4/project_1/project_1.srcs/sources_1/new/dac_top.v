`timescale 1ns / 1ps

module dac_top(
    
    input           edk_clk                 ,   //100MHz
    input           s_axi_aclk              ,
    input           fpga_clk1_p             ,
    input           fpga_clk1_n             ,
    input           reset_n                 ,
    
    input           ada16d6000_1_csn        ,
    input           ada16d6000_1_rst        ,
    input           ada16d6000_1_sclk       ,
    input           ada16d6000_1_sdi        ,
    output          ada16d6000_1_sdo        ,
    
    output          dac1_sclk               ,
    output          dac1_csn                ,
    output          dac1_sdi                ,
    input           dac1_sdo                ,
    input           dac_sysrefp             ,
    input           dac_sysrefn             ,
    input           dac1_sync_p             ,
    input           dac1_sync_n             ,
    output          dac1_rst                ,
    input           fpga_mgtq110_refclkp    ,
    input           fpga_mgtq110_refclkn    ,
    output  [7:0]   dac1_serdes_p           ,   //Êä³öÐÅºÅ
    output  [7:0]   dac1_serdes_n           ,
    
    output          dac2_sclk               ,
    output          dac2_csn                ,
    output          dac2_sdi                ,
    input           dac2_sdo                ,
    input           dac2_sync_p             ,
    input           dac2_sync_n             ,
    output          dac2_rst                ,
    input           fpga_mgtq112_refclkp    ,
    input           fpga_mgtq112_refclkn    ,
    output  [7:0]   dac2_serdes_p           ,
    output  [7:0]   dac2_serdes_n           ,
    
    output          dac3_sclk               ,
    output          dac3_csn                ,
    output          dac3_sdi                ,
    input           dac3_sdo                ,
    input           dac3_sync_p             ,
    input           dac3_sync_n             ,
    output          dac3_rst                ,
    input           fpga_mgtq116_refclkp    ,
    input           fpga_mgtq116_refclkn    ,
    output  [7:0]   dac3_serdes_p           ,
    output  [7:0]   dac3_serdes_n           ,
    
    output          dac4_sclk               ,
    output          dac4_csn                ,
    output          dac4_sdi                ,
    input           dac4_sdo                ,
    input           dac4_sync_p             ,
    input           dac4_sync_n             ,
    output          dac4_rst                ,
    input           fpga_mgtq118_refclkp    ,
    input           fpga_mgtq118_refclkn    ,
    output  [7:0]   dac4_serdes_p           ,
    output  [7:0]   dac4_serdes_n           ,
    
    input   [15:0]  dac1_delta_phase_vio    ,
    input   [15:0]  dac2_delta_phase_vio    ,
    input   [15:0]  dac3_delta_phase_vio    ,
    input   [15:0]  dac4_delta_phase_vio    ,
    output          sysref_logic            ,
    output          dac_status              ,
    
    input           rst_dds_vio             ,
    input   [7:0]   sysref_div_vio          ,
    input   [7:0]   sysref_num_vio          ,
    input           rst_sysref              ,
    input           rst_dac_spi             ,
    input           rst_axi_vio             ,
    input           axi_wr_en_vio           ,
    input   [29:0]  axi_addr_vio            ,
    input   [31:0]  axi_data_vio            ,
    input   [255:0] tx_tdata_vio            ,
 
 
     output          dac_glbl_clk 
    );
   
   wire     glblclk_i       ;
   wire     glblclk_buf     ;
   wire     coreclk         ;
  (* MARK_DEBUG="true" *)    wire sysref_buf; 
   IBUFDS #(
      .DIFF_TERM("TRUE"),       // Differential Termination
      .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) i_glblclk_ibufds (
    .I  (fpga_clk1_p),
    .IB (fpga_clk1_n),
    .O  (glblclk_i)   //125M
  );

  BUFG glbl_bufg_i
  (
    .O (glblclk_buf), //125M
    .I (glblclk_i)
  );
  
   assign coreclk = glblclk_buf;  //coreclk 125M
   assign dac_glbl_clk = coreclk;

     //----------------------------------------//
   IBUFDS #(
        .DIFF_TERM("TRUE"),       // Differential Termination
        .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
        .IOSTANDARD("LVDS")     // Specify the input I/O standard
     ) IBUFDS_inst_sysref (
        .O(sysref_buf),  // Buffer output
        .I(dac_sysrefp),  // Diff_p buffer input (connect directly to top-level port) 100M
        .IB(dac_sysrefn) // Diff_n buffer input (connect directly to top-level port)
     );     
     
    da_spi_module da_spi_module( 
        
        .edk_clk                (edk_clk                ),
        .reset                  (!reset_n               ),                         
    
        .ada16d6000_1_csn       (ada16d6000_1_csn       ), //input               
        .ada16d6000_1_rst       (ada16d6000_1_rst       ), //input               
        .ada16d6000_1_sclk      (ada16d6000_1_sclk      ), //input               
        .ada16d6000_1_sdi       (ada16d6000_1_sdi       ), //input               
        .ada16d6000_1_sdo       (ada16d6000_1_sdo       ), //output              
                                    
        .dac1_csn               (dac1_csn               ), //output                        
        .dac1_rst               (dac1_rst               ), //output              
        .dac1_sclk              (dac1_sclk              ), //output              
        .dac1_sdi               (dac1_sdi               ), //output              
        .dac1_sdo               (dac1_sdo               ), //input               
                                    
        .dac2_csn               (dac2_csn               ), //output                        
        .dac2_rst               (dac2_rst               ), //output              
        .dac2_sclk              (dac2_sclk              ), //output              
        .dac2_sdi               (dac2_sdi               ), //output              
        .dac2_sdo               (dac2_sdo               ), //input               
                                    
        .dac3_csn               (dac3_csn               ), //output                        
        .dac3_rst               (dac3_rst               ), //output              
        .dac3_sclk              (dac3_sclk              ), //output              
        .dac3_sdi               (dac3_sdi               ), //output              
        .dac3_sdo               (dac3_sdo               ), //input               
                                    
        .dac4_csn               (dac4_csn               ), //output                        
        .dac4_rst               (dac4_rst               ), //output              
        .dac4_sclk              (dac4_sclk              ), //output              
        .dac4_sdi               (dac4_sdi               ), //output              
        .dac4_sdo               (dac4_sdo               ) //input                 
    
    );
    TOP_DAC top_dac1_int(
        .sysclk                 (edk_clk                ),     
        .syncbp                 (dac1_sync_p            ),
        .syncbn                 (dac1_sync_n            ),
        .refclk_p               (fpga_mgtq110_refclkp   ),                              // input wire refclk_p
        .refclk_n               (fpga_mgtq110_refclkn   ),                              // input wire refclk_n
        .tx_core_clk_in         (coreclk                ),                            // input wire glblclk_p
        .txp                    (dac1_serdes_p          ),
        .txn                    (dac1_serdes_n          ),
        .s_axi_aclk             (s_axi_aclk             ),
        .sysref_logic           (sysref_logic           ),
        .delta_phase_vio        (dac1_delta_phase_vio   ),
        .dac_status             (dac_status             ),

        .rst_dds_vio            (rst_dds_vio            ),
        .sysref_div_vio         (sysref_div_vio         ),
        .sysref_num_vio         (sysref_num_vio         ),
        .rst_sysref             (rst_sysref             ),
        .rst_dac_spi            (rst_dac_spi            ),
        .rst_axi_vio            (rst_axi_vio            ),
        .axi_wr_en_vio          (axi_wr_en_vio          ),
        .axi_addr_vio           (axi_addr_vio           ),
        .axi_data_vio           (axi_data_vio           ),
        .tx_tdata_vio           (tx_tdata_vio           )
    );
  
    TOP_DAC top_dac2_int(
        .sysclk                 (edk_clk                ),
        .syncbp                 (dac2_sync_p            ),
        .syncbn                 (dac2_sync_n            ),
        .refclk_p               (fpga_mgtq112_refclkp   ),                              // input wire refclk_p
        .refclk_n               (fpga_mgtq112_refclkn   ),                              // input wire refclk_n
        .tx_core_clk_in         (coreclk                ),                               // input wire glblclk_n
        .txp                    (dac2_serdes_p          ),
        .txn                    (dac2_serdes_n          ),
        .s_axi_aclk             (s_axi_aclk             ),
        .delta_phase_vio        (dac2_delta_phase_vio   ),
        .rst_dds_vio            (rst_dds_vio            ),
        .sysref_div_vio         (sysref_div_vio         ),
        .sysref_num_vio         (sysref_num_vio         ),
        .rst_sysref             (rst_sysref             ),
        .rst_dac_spi            (rst_dac_spi            ),
        .rst_axi_vio            (rst_axi_vio            ),
        .axi_wr_en_vio          (axi_wr_en_vio          ),
        .axi_addr_vio           (axi_addr_vio           ),
        .axi_data_vio           (axi_data_vio           ),
        .tx_tdata_vio           (tx_tdata_vio           )
    );
    
    TOP_DAC top_dac3_int(
        .sysclk                 (edk_clk                ),     
        .syncbp                 (dac3_sync_p            ),
        .syncbn                 (dac3_sync_n            ),
        .refclk_p               (fpga_mgtq116_refclkp   ),                              // input wire refclk_p
        .refclk_n               (fpga_mgtq116_refclkn   ),                              // input wire refclk_n
        .tx_core_clk_in         (coreclk                ),                             // input wire glblclk_n
        .txp                    (dac3_serdes_p          ),
        .txn                    (dac3_serdes_n          ),
        .s_axi_aclk             (s_axi_aclk             ),
        .delta_phase_vio        (dac3_delta_phase_vio   ),
        .rst_dds_vio            (rst_dds_vio            ),
        .sysref_div_vio         (sysref_div_vio         ),
        .sysref_num_vio         (sysref_num_vio         ),
        .rst_sysref             (rst_sysref             ),
        .rst_dac_spi            (rst_dac_spi            ),
        .rst_axi_vio            (rst_axi_vio            ),
        .axi_wr_en_vio          (axi_wr_en_vio          ),
        .axi_addr_vio           (axi_addr_vio           ),
        .axi_data_vio           (axi_data_vio           ),
        .tx_tdata_vio           (tx_tdata_vio           )

    );
    
    TOP_DAC top_dac4_int(
        .sysclk                 (edk_clk                ),     
        .syncbp                 (dac4_sync_p            ),
        .syncbn                 (dac4_sync_n            ),
        .refclk_p               (fpga_mgtq118_refclkp   ),                              // input wire refclk_p
        .refclk_n               (fpga_mgtq118_refclkn   ),                              // input wire refclk_n
        .tx_core_clk_in         (coreclk                ),                             // input wire glblclk_n
        .txp                    (dac4_serdes_p          ),
        .txn                    (dac4_serdes_n          ),
        .s_axi_aclk             (s_axi_aclk             ),
        .delta_phase_vio        (dac4_delta_phase_vio   ),
        .rst_dds_vio            (rst_dds_vio            ),
        .sysref_div_vio         (sysref_div_vio         ),
        .sysref_num_vio         (sysref_num_vio         ),
        .rst_sysref             (rst_sysref             ),
        .rst_dac_spi            (rst_dac_spi            ),
        .rst_axi_vio            (rst_axi_vio            ),
        .axi_wr_en_vio          (axi_wr_en_vio          ),
        .axi_addr_vio           (axi_addr_vio           ),
        .axi_data_vio           (axi_data_vio           ),
        .tx_tdata_vio           (tx_tdata_vio           )
    );
endmodule
