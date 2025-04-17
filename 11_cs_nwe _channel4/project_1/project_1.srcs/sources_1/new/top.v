`timescale 1ns / 1ps
module top
	(

        input                   fpga_clk_100m_p        ,    //100M 时钟
        input                   fpga_clk_100m_n        ,
//------ADC                                          
        output  wire [3:0]      adc_spi_clk            , //xdc验证无误  BD34 AP32 AM32 AJ31
        output  wire [3:0]      adc_spi_cs             ,//xdc验证无误 BD32 AP31 AM31 AJ30
        output  wire [3:0]      adc_spi_sdio           ,//xdc验证无误 BD35 AR31 AM33 AK31
        input   wire [3:0]      adc_spi_sdo            ,//xdc验证无误 AT31 AR32 AR33 AL31
        output  wire [3:0]      adc_rstp               ,//xdc验证无误 BD31 AT33 AL30 AU35
            
//------LMK04828    
        input   wire [1:0]      lmk04828_ld            ,   //输入查看原理图对应的引脚xdc验证无误，
        //用于指示04828中的pll锁相环是否锁住，如果输入为高电平则锁住，低电平则未锁住
        output  wire            lmk04828_cs            ,   //xdc验证无误  AR24
        output  wire            lmk04828_gpo           , //xdc验证无误   BC25
        output  wire            lmk04828_sclk          ,   //ext_clk / 频率比例 = 100/16=6.25M    BD25
        output  wire            lmk04828_sdio          ,  //xdc验证无误 BD26
        output  wire            lmk04828_sync          ,  //xdc验证无误，用于多个时钟芯片的同步 BB25
    
    
//------ADC LMX2952             
        output  wire            adc_lmx2952_cs_1       , //xdc验证无误 BA26
        output  wire            adc_lmx2952_sclk_1     , //xdc验证无误 BA24
        output  wire            adc_lmx2952_sdio_1     , //xdc验证无误 BA25
                                                        
        output  wire            adc_lmx2952_cs_2       , //xdc验证无误 BB26
        output  wire            adc_lmx2952_sclk_2     , //xdc验证无误 AW26
        output  wire            adc_lmx2952_sdio_2     , //xdc验证无误 AY26
    
    
		input   wire            glblclk_n              ,
		input   wire            glblclk_p              , //  125MHz AU13 该时钟是由04828的DCLKOUT0±输出获得
		//ad1_ref_clk_p ——ad4_ref_clk_p 为204bPHY的参考时钟，250MHz,采用GT收发器   均由04828的DOUT12输出获得
		input   wire            ad1_ref_clk_p	        , // AY37    MGTREFCLK0P_210  04828的DOUT12获得
		input   wire            ad1_ref_clk_n	        , 
		input   wire            ad2_ref_clk_p	        , //AL35    MGTREFCLK0P_212  04828的DOUT12获得
		input   wire            ad2_ref_clk_n	        ,
		input   wire            ad3_ref_clk_p	        ,//N35   MGTREFCLK0P_216  04828的DOUT12获得
		input   wire            ad3_ref_clk_n	        ,
		input   wire            ad4_ref_clk_p	        ,//E35        MGTREFCLK0P_218   04828的DOUT12获得
		input   wire            ad4_ref_clk_n	        , 
                
        // ad1_rxp ——ad4_rxp为fpga接收adc数据的接口 每一个adc由8个差分接口来进行接收      顺序没问题  
		input   wire [7:0]      ad1_rxp                 , //BD37 BC39 BA39 AW39 AV37 AU39 AR39 AP37
		input   wire [7:0]      ad1_rxn                 ,  
		input   wire [7:0]      ad2_rxp                 , //AN39 AM41 AM37 AL39 AK37 AJ39 AG39 AE39
		input   wire [7:0]      ad2_rxn                 ,
		input   wire [7:0]      ad3_rxp                 , //R39 P37 N39 M37 L39 K37 J39 H37 
		input   wire [7:0]      ad3_rxn                 ,
		input   wire [7:0]      ad4_rxp                 , //G39 F37 E39 D37 D41 C39 B37 A39
		input   wire [7:0]      ad4_rxn                 ,
                    
		output  wire            ad1_sync_p              , //BB33    原理图上显示的是adc4_sync
		output  wire            ad1_sync_n              ,  
		output  wire            ad2_sync_p              , //AN32    原理图上显示的是adc3_sync
		output  wire            ad2_sync_n              ,
		output  wire            ad3_sync_p              , //AJ32    原理图上显示的是adc2_sync
		output  wire            ad3_sync_n              ,
		output  wire            ad4_sync_p              , //AK33    原理图上显示的是adc1_sync
		output  wire            ad4_sync_n              ,
                    
		input   wire            rx_sysref_p             ,    //AU33   FPGA部分的adc的sysref时钟  AU33 由04828的DOUT5输出获得 
		input   wire            rx_sysref_n             ,   //用于做同步使用，和ADC硬件上的sysref做同步使用
 
        input                   fpga_clk2_p             ,//125M时钟  AV14 该时钟是由04828的SDCLKOUT1±获输出获得 
        input                   fpga_clk2_n             ,
        input                   dac_sysrefp             ,   // AV32 FPGA部分的dac的sysref时钟 由04828的DOUT9输出获得 
        input                   dac_sysrefn             ,
      
      //fpga_mgtq110_refclkp ——fpga_mgtq118_refclkp 为DAC的204bPHY的参考时钟，250MHz,采用GT收发器
        //---------------dac1-----------------------------
        input                   fpga_mgtq110_refclkp    ,   // AY8    MGTREFCLK0P_110  04828的DOUT10获得
        input                   fpga_mgtq110_refclkn    ,
        output  [7:0]           dac1_serdes_p           , //BD4 BB4 BA2 AY4 AW2 AV4 AU2 AT4
        output  [7:0]           dac1_serdes_n           ,
        input                   dac1_sync_p             , //BB13 原理图上显示的是dac4_sync
        input                   dac1_sync_n             ,
        output                  dac1_csn                , //BD14  原理图上显示的是dac4_csn       
        output                  dac1_rst                , //BC14  原理图上显示的是dac4_rst    
        output                  dac1_sclk               ,  //BC10 原理图上显示的是dac4_sclk   
        //详看 assign ada16d6000_1_sclk_s = (div_cnt == 100) ? ada16d6000_1_sclk : 0;  ada16d6000_1_sclk为6.25M div_cnt工作再100M下
        output                  dac1_sdi                , //BD10  原理图上显示的是dac4_sdi    
        input                   dac1_sdo                , //AR14  原理图上显示的是dac4_sdo    
        //---------------dac2-----------------------------
        input                   fpga_mgtq112_refclkp    ,   //AL10  MGTREFCLK0P_112  04828的DOUT10获得
        input                   fpga_mgtq112_refclkn    ,
        output  [7:0]           dac2_serdes_p           ,  //AR2  AP4 AN2 AL2 MGT112  AK4 AJ2 AH4 AG2  MGT113
        output  [7:0]           dac2_serdes_n           ,
        input                   dac2_sync_p             ,  //AJ14  原理图上显示的是dac1_sync
        input                   dac2_sync_n             ,
        output                  dac2_csn                ,   //AT14  原理图上显示的是dac3_csn
        output                  dac2_rst                , //AR12 原理图上显示的是dac3_rst
        output                  dac2_sclk               ,  //AT13  原理图上显示的是dac3_sclk
        output                  dac2_sdi                , //AU10 原理图上显示的是dac3_sdi
        input                   dac2_sdo                , //AV10 原理图上显示的是dac3_sdo
        //---------------dac3-----------------------------
        input                   fpga_mgtq116_refclkp    ,   //N10   MGTREFCLK0P_116  04828的DOUT10获得
        input                   fpga_mgtq116_refclkn    ,
        output  [7:0]           dac3_serdes_p           ,  //V4 U2 T4 R2 MGTREFCLK0P_116   P4 N2 M4 L2  MGTREFCLK0P_117
        output  [7:0]           dac3_serdes_n           ,
        input                   dac3_sync_p             ,  //AN13    原理图上显示的是dac2_sync
        input                   dac3_sync_n             ,
        output                  dac3_csn                ,       //AL13     原理图上显示的是dac2_csn
        output                  dac3_rst                ,    //AL14 原理图上显示的是dac2_rst
        output                  dac3_sclk               ,     //AN14  原理图上显示的是dac2_sclk
        output                  dac3_sdi                ,     //AP14  原理图上显示的是dac2_sdi
        input                   dac3_sdo                ,    //AR13   原理图上显示的是dac2_sdo
        //---------------dac4-----------------------------
        input                   fpga_mgtq118_refclkp    ,         //E10    MGTREFCLK0P_118  04828的DOUT10获得
        input                   fpga_mgtq118_refclkn    ,
        output  [7:0]           dac4_serdes_p           ,        //K4  J2 H4 G2 F4 E2 C2 B4
        output  [7:0]           dac4_serdes_n           ,
        input                   dac4_sync_p             ,      //AU12  原理图上显示的是dac3_sync
        input                   dac4_sync_n             ,
        output                  dac4_csn                ,     //AM13  原理图上显示的是dac1_csn      
        output                  dac4_rst                ,     //AP12   原理图上显示的是dac1_rst   
        output                  dac4_sclk               ,     //AM12  原理图上显示的是dac1_sclk 
        output                  dac4_sdi                ,     //AK13  原理图上显示的是dac1_sdi
        input                   dac4_sdo                ,    //AK12  原理图上显示的是dac1_sdo
//------------dac12_lmx2592-----------------------------
        output                  dac12_lmx2592_csn       ,   //AY23 
        output                  dac12_lmx2592_sclk      ,  //BA23 DAC_LMX2592_1_SCK_FPGA
        output                  dac12_lmx2592_sdio      ,  //AV25 DAC_LMX2592_1_SDI_FPGA
//-----------dac34_lmx2592-----------------------------
        output                  dac34_lmx2592_csn       ,  //AW25
        output                  dac34_lmx2592_sclk      ,  //AW24
        output                  dac34_lmx2592_sdio         //AY24

	);
	    wire        syncb                   ;
	    wire        sysref                  ;
(*keep = "true"*)	    wire        rx_sysref               ;
	    wire        sysclk_locked           ;  
	    
	    wire        adc_clk1                ;
	    wire        adc_rstn1               ;
	    wire        adc_clk2                ;
	    wire        adc_rstn2               ;
	    wire        adc_clk3                ;
	    wire        adc_rstn3               ;
	    wire        adc_clk4                ;
	    wire        adc_rstn4               ;
	    
	    wire                jesd_rst_p_cdc_dds  ;
	    wire        adc_lmx2952_cs          ;
	    wire        adc_lmx2952_sclk        ;
	    wire        adc_lmx2952_sdio        ;
	    wire        adc_lmx2952_sdo         ;
	    
	    wire        adc_spi_cs_ps           ;
        wire        adc_spi_clk_ps          ;
        wire        adc_spi_sdio_ps         ;
        wire        adc_rstp_ps             ;
        wire        adc1_cs_n               ;     
        wire        adc1_mosi               ;
        wire        adc1_rst                ;
        wire        adc1_sclk               ;
        wire        adc2_cs                 ;
        wire        adc2_mosi               ;
        wire        adc2_rst                ;
        wire        adc2_sclk               ;
        wire        adc3_cs                 ;
        wire        adc3_mosi               ;
        wire        adc3_rst                ;
        wire        adc3_sclk               ;

	    
	    wire        lmk04828_sync_ps        ;
	    wire        lmk04828_switch         ;
	        wire                jesd_rst_p_cdc_axi  ;    
	    wire        jesd204b_rstp           ;
	    
	    wire        adc_sync                ;

        (* MARK_DEBUG="true" *)wire    [01:00]     config_done         ;
        wire                sysref_in           ;  

        wire    [255:00]    adc1_data_all       ; 
        wire    [255:00]    adc2_data_all       ;
        wire    [255:00]    adc3_data_all       ;
        wire    [255:00]    adc4_data_all       ;
        
        wire                adc1_data_tvalid    ;
        wire                adc2_data_tvalid    ;
        wire                adc3_data_tvalid    ;
        wire                adc4_data_tvalid    ;
           
        (* MARK_DEBUG="true" *)wire                adc1_sync           ;
        (* MARK_DEBUG="true" *)wire                adc2_sync           ;
        (* MARK_DEBUG="true" *)wire                adc3_sync           ;
        (* MARK_DEBUG="true" *)wire                adc4_sync           ;
          
	    reg                 adc1_sync_r         ;
	    reg                 adc1_sync_r1        ;
	    reg     [15:00]     adc1_sync_cnt       ;
	    reg                 adc1_sync_done      ;
    (* keep="true" *)wire    [7:0]       sysref_num_cdc      ; 	    
	    reg                 sdk_reset           ;
	    wire                s_axi_aclk          ;
        wire                edk_clk             ;
        wire                sysclk              ;
        wire                reset_n             ;
        wire                jesd_rst_p          ;
        wire                jesd_sysref_rst     ;                  
        
        wire                ada16d6000_1_csn    ;
        wire                ada16d6000_1_rst    ;
        wire                ada16d6000_1_sclk   ;    //6.25M
        wire                ada16d6000_1_sdi    ;
        wire                ada16d6000_1_sdo    ;
                wire                jesd_sysref_rst_cdc ; 
        
        wire                dac_lmx2952_cs      ;
	    wire                dac_lmx2952_sclk    ;
	    wire                dac_lmx2952_sdio    ;
	    wire                dac_lmx2952_sdo     ;
	    
	    wire                dac_status          ;
    
    (* keep="true" *)wire    [7:0]       sysref_div          ;
    (* keep="true" *)wire    [7:0]       sysref_num          ;   
    (* keep="true" *)wire                axi_wr_en_vio       ;
    (* keep="true" *)wire    [29:0]      axi_addr_vio        ;
    (* keep="true" *)wire    [31:0]      axi_data_vio        ;
    wire    [15:0]      dac1_delta_phase_vio;
    wire    [15:0]      dac2_delta_phase_vio;
    wire    [15:0]      dac3_delta_phase_vio;
    wire    [15:0]      dac4_delta_phase_vio;
    
    wire    [255:0]     tx_tdata            ;
    (* MARK_DEBUG="true" *)wire                sysref_logic        ;
    wire                lmk04828_synco      ;
    (* MARK_DEBUG="true" *)wire                sysref_o            ;
    wire                config_done_ad;
        (* keep="true" *)wire    [7:0]       sysref_div_cdc      ;
   
      wire                dac_glbl_clk        ; 
    assign       sysref_o =  lmk04828_sync ;               
//    assign      lmk04828_sel = 2'b0 ;
//    assign      lmk04828_sync = (lmk04828_ld == 2'b11 ) ?  sysref_logic : lmk04828_synco ;
	    
	assign      adc_lmx2952_cs_1    =   adc_lmx2952_cs       ;
    assign      adc_lmx2952_sclk_1  =   adc_lmx2952_sclk     ;
    assign      adc_lmx2952_sdio_1  =   adc_lmx2952_sdio     ;   
    
    assign      adc_lmx2952_cs_2    =   adc_lmx2952_cs       ;
    assign      adc_lmx2952_sclk_2  =   adc_lmx2952_sclk     ;
    assign      adc_lmx2952_sdio_2  =   adc_lmx2952_sdio     ;
    
    assign      lmk04828_sync       =   lmk04828_switch ? lmk04828_sync_ps :  config_done[0]  ? sysref_logic :sysref ;
    assign      adc_sync            =   adc1_sync_done       ;
    
    assign      sysref_in           =   config_done_ad  ? rx_sysref : sysref        ;
            
    assign      adc_spi_clk         =   {adc3_sclk   , adc2_sclk  , adc1_sclk  , adc_spi_clk_ps  } ;
    assign      adc_spi_cs          =   {adc3_cs    , adc2_cs   , adc1_cs_n   , adc_spi_cs_ps   } ;
    assign      adc_spi_sdio        =   {adc3_mosi  , adc2_mosi , adc1_mosi , adc_spi_sdio_ps } ;
    assign      adc_rstp            =   {adc1_rst      , adc2_rst     , adc1_rst     , adc_rstp_ps     } ;
//    assign      adc_spi_clk         =    adc_spi_clk_ps   ;
//    assign      adc_spi_cs          =    adc_spi_cs_ps    ;
//    assign      adc_spi_sdio        =    adc_spi_sdio_ps  ;
//    assign      adc_rstp            =    adc_rstp_ps      ;    
       
    assign      dac12_lmx2592_csn   =  dac_lmx2952_cs       ;       
    assign      dac12_lmx2592_sclk  =  dac_lmx2952_sclk     ;       
    assign      dac12_lmx2592_sdio  =  dac_lmx2952_sdio     ;
    
    assign      dac34_lmx2592_csn   =  dac_lmx2952_cs       ;       
    assign      dac34_lmx2592_sclk  =  dac_lmx2952_sclk     ;       
    assign      dac34_lmx2592_sdio  =  dac_lmx2952_sdio     ;  
    
   
            
	clock_module u_clock_module( 

        .fpga_clk_100m_p    (fpga_clk_100m_p ),//input           
        .fpga_clk_100m_n    (fpga_clk_100m_n ),//input           
     
        .s_axi_aclk         (s_axi_aclk      ),//output      100M    
        .edk_clk            (edk_clk         ),//output     100M
        .sysclk             (sysclk          ),             //100M
        .reset_n            (reset_n         ) //output          
        
    );
    IBUFDS#(
      .DIFF_TERM("TRUE"),       // Differential Termination
      .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("LVDS")     // Specify the input I/O standard
    ) i_sysref_ibufds (
        .I  (rx_sysref_p),
        .IB (rx_sysref_n),
        .O  (rx_sysref)
    ); 

	ADC_wrapper u1_ADC_wrapper
	(
	    .clk_100m           (edk_clk                ), //100M 由clock module给与
	    .adc_clk            (adc_clk1               ),//250M  core_clk即外部global clk
	    .sdk_reset          (!reset_n               ),
	    .jesd204b_rstp      (jesd204b_rstp          ), 
	    .jesd_rst_p         (jesd_rst_p             ),
        .jesd_sysref_rst    (jesd_sysref_rst        ),	
        
		.adc_lmx2952_cs     (adc_lmx2952_cs         ),
        .adc_lmx2952_sclk   (adc_lmx2952_sclk       ),
        .adc_lmx2952_sdio   (adc_lmx2952_sdio       ),
        .adc_lmx2952_sdo    (adc_lmx2952_sdo        ), 
         
        .dac_lmx2592_csn    (dac_lmx2952_cs         ),
        .dac_lmx2592_sclk   (dac_lmx2952_sclk       ),
        .dac_lmx2592_sdio   (dac_lmx2952_sdio       ),
        .dac_lmx2592_sdo    (dac_lmx2952_sdo        ), 
        
        .lmk04828_cs        (lmk04828_cs            ), 
        .lmk04828_gpo       (lmk04828_gpo           ),
        .lmk04828_ld        (lmk04828_ld            ),
        .lmk04828_sclk      (lmk04828_sclk          ),
        .lmk04828_sdio      (lmk04828_sdio          ),
        .lmk04828_sdo       (                       ),
        .lmk04828_sync      (lmk04828_sync_ps       ),//(          ),
        .lmk04828_switch    (lmk04828_switch        ),
            
        .ada16d6000_1_csn   (ada16d6000_1_csn       ),
        .ada16d6000_1_rst   (ada16d6000_1_rst       ),
        .ada16d6000_1_sclk  (ada16d6000_1_sclk      ),
        .ada16d6000_1_sdio  (ada16d6000_1_sdi       ),
        .ada16d6000_1_sdo   (ada16d6000_1_sdo       ),    
        //****************ad_spi******************************
		.cs_n               (adc_spi_cs_ps          ),
		.sclk               (adc_spi_clk_ps         ),
		.miso               (adc_spi_sdo[0]         ),
		.mosi               (adc_spi_sdio_ps        ),
        .rst_spi            (adc_rstp_ps            ),
        .adc1_cs_n          (adc1_cs_n              ),
        .adc1_mosi          (adc1_mosi              ),
        .adc1_rst           (adc1_rst               ),
        .adc1_sclk          (adc1_sclk              ),
        .adc1_miso          (adc_spi_sdo[1]         ),
        .adc2_cs            (adc2_cs                ),
        .adc2_mosi          (adc2_mosi              ),
        .adc2_rst           (adc2_rst               ),
        .adc2_sclk          (adc2_sclk              ),
        .adc2_miso          (adc_spi_sdo[2]         ),
        .adc3_cs            (adc3_cs                ),
        .adc3_mosi          (adc3_mosi              ),
        .adc3_rst           (adc3_rst               ),
        .adc3_sclk          (adc3_sclk              ),
        .adc3_miso          (adc_spi_sdo[3]         ),
        .dac_status         (dac_status             ),
        
        .config_done        (config_done            ),
		.adc_sync           (adc_sync               ),
		.sysref             (sysref                 ),
        .sysref_div         (sysref_div             ),
        .sysref_num         (sysref_num             )        
	);
	
	adc_top u2_adc_top(
	    .axi_clk			(s_axi_aclk             ),  	      
	    .jesd_rst_p		    (jesd204b_rstp          ),
	    .axi_cfg_rstn	    (!jesd204b_rstp         ),

	    .global_clk_p		(glblclk_p              ),   //250M
	    .global_clk_n		(glblclk_n              ),

	    .ad1_ref_clk_p	    (ad1_ref_clk_p	        ),
	    .ad1_ref_clk_n	    (ad1_ref_clk_n	        ),
	    .ad2_ref_clk_p	    (ad2_ref_clk_p	        ),
	    .ad2_ref_clk_n	    (ad2_ref_clk_n	        ),
	    .ad3_ref_clk_p	    (ad3_ref_clk_p	        ),
	    .ad3_ref_clk_n	    (ad3_ref_clk_n	        ),
	    .ad4_ref_clk_p	    (ad4_ref_clk_p	        ),
	    .ad4_ref_clk_n	    (ad4_ref_clk_n	        ),
	    
	    .ad1_rxp            (ad1_rxp                ),
	    .ad1_rxn            (ad1_rxn                ),
	    .ad2_rxp            (ad2_rxp                ),
	    .ad2_rxn            (ad2_rxn                ),
	    .ad3_rxp            (ad3_rxp                ),
	    .ad3_rxn            (ad3_rxn                ),
	    .ad4_rxp            (ad4_rxp                ),
	    .ad4_rxn            (ad4_rxn                ),
	   
	    .ad1_sync_p         (ad1_sync_p             ),
	    .ad1_sync_n         (ad1_sync_n             ),
	    .ad2_sync_p         (ad2_sync_p             ),
	    .ad2_sync_n         (ad2_sync_n             ),
	    .ad3_sync_p         (ad3_sync_p             ),
	    .ad3_sync_n         (ad3_sync_n             ),
	    .ad4_sync_p         (ad4_sync_p             ),
	    .ad4_sync_n         (ad4_sync_n             ),
	  	    
	    .rx_sysref          (sysref_in              ),
	    
	    .rx_aclk1           (adc_clk1               ),  //adc_clk4为core_clk 250M
	    .rx_aresetn1        (adc_rstn1              ),
	    .rx_aclk2           (adc_clk2               ),  //adc_clk4为core_clk 250M
	    .rx_aresetn2        (adc_rstn2              ), 
	    .rx_aclk3           (adc_clk3               ),  //adc_clk4为core_clk 250M
	    .rx_aresetn3        (adc_rstn3              ), 
	    .rx_aclk4           (adc_clk4               ),  //adc_clk4为core_clk 250M
	    .rx_aresetn4        (adc_rstn4              ),   
	    
	    .rx_sync1           (adc1_sync              ),
	    .rx_tdata1          (adc1_data_all          ),
	    .rx_tvalid1         (adc1_data_tvalid       ),  
	    .rx_sync2           (adc2_sync              ), 
	    .rx_tdata2          (adc2_data_all          ), 
	    .rx_tvalid2         (adc2_data_tvalid       ), 
	    .rx_sync3           (adc3_sync              ), 
	    .rx_tdata3          (adc3_data_all          ), 
	    .rx_tvalid3         (adc3_data_tvalid       ), 
	    .rx_sync4           (adc4_sync              ), 
	    .rx_tdata4          (adc4_data_all          ), 
	    .rx_tvalid4         (adc4_data_tvalid       ) 
	    
		
	);

	always @(posedge adc_clk1 or negedge adc_rstn1)
	begin
	    if(!adc_rstn1)
	    begin
	        adc1_sync_r     <=  1'b0    ;
	        adc1_sync_r1    <=  1'b0    ;
	    end
	    else 
	    begin
	        adc1_sync_r     <=  adc1_sync    ;
	        adc1_sync_r1    <=  adc1_sync_r  ;
	    end	        
	end
	
	always @(posedge adc_clk1 or negedge adc_rstn1)
	begin
	    if(!adc_rstn1)	
	    begin
	        adc1_sync_done  <=  1'b0    ;
	        adc1_sync_cnt   <=  16'b0   ;
	    end
	    else if(adc1_sync_r == 1'b1 && adc1_sync_r1 == 1'b0)
	    begin
	        adc1_sync_done  <=  1'b0    ;
	        adc1_sync_cnt   <=  16'b1   ;
	    end
	    else if(adc1_sync_r1 == 1'b1 &&  adc1_sync_cnt < 16'd25000)
	    begin
	        adc1_sync_done  <=  1'b0    ;
	        adc1_sync_cnt   <=  adc1_sync_cnt + 1'b1   ;
	    end	        
	    else if(adc1_sync_cnt == 16'd25000)
	    begin
	        adc1_sync_done  <=  1'b1    ;
	        adc1_sync_cnt   <=  adc1_sync_cnt    ;
	    end		        
	    else
	    begin
	        adc1_sync_done  <=  adc1_sync_done   ;
	        adc1_sync_cnt   <=  adc1_sync_cnt    ;
	    end			
	end      

//always @(posedge edk_clk or negedge reset_n    )
//begin
//    if(!reset_n)
//    begin
//        sdk_reset   <=  1'b1    ;
//    end
//    else if(config_done[1] == 1'b1 && adc1_sync_done == 1'b0)
//    begin
//        sdk_reset   <=  1'b1    ;
//    end
//    else
//    begin
//       sdk_reset    <=  1'b0    ;
//    end
//end	        

	
	  
	
	adc_analysis u3_adc_analysis(
	
        .adc_clk1           (adc_clk1           ),
        .adc_rst1           (!adc_rstn1         ),
        .adc_clk2           (adc_clk2           ),
        .adc_rst2           (!adc_rstn2         ),
        .adc_clk3           (adc_clk3           ),
        .adc_rst3           (!adc_rstn3         ),
        .adc_clk4           (adc_clk4           ),
        .adc_rst4           (!adc_rstn4         ),
        .data_valid1        (adc1_data_tvalid   ),
        .data_in1           (adc1_data_all      ),
        .data_valid2        (adc2_data_tvalid   ),
        .data_in2           (adc2_data_all      ),
        .data_valid3        (adc3_data_tvalid   ),
        .data_in3           (adc3_data_all      ),
        .data_valid4        (adc4_data_tvalid   ),
        .data_in4           (adc4_data_all      )
	
	);
    
    dac_top int_dac_top(
    
        .edk_clk                 (edk_clk              ),  //input  100M
        .s_axi_aclk              (s_axi_aclk           ),         //100M
        .fpga_clk1_p             (fpga_clk2_p          ),  //input           125M
        .fpga_clk1_n             (fpga_clk2_n          ),  //input 
        .reset_n                 (reset_n              ),
        
        .ada16d6000_1_csn        (ada16d6000_1_csn     ), //input               
        .ada16d6000_1_rst        (ada16d6000_1_rst     ), //input               
        .ada16d6000_1_sclk       (ada16d6000_1_sclk    ), //input               
        .ada16d6000_1_sdi        (ada16d6000_1_sdi     ), //input               
        .ada16d6000_1_sdo        (ada16d6000_1_sdo     ), //output   
             
        .dac1_sclk               (dac1_sclk            ),  //output          
        .dac1_csn                (dac1_csn             ),  //output          
        .dac1_sdi                (dac1_sdi             ),  //output          
        .dac1_sdo                (dac1_sdo             ),  //input           
        .dac_sysrefp             (dac_sysrefp          ),  //input           
        .dac_sysrefn             (dac_sysrefn          ),  //input           
        .dac1_sync_p             (dac1_sync_p          ),  //input           
        .dac1_sync_n             (dac1_sync_n          ),  //input                    
        .dac1_rst                (dac1_rst             ),  //output          
        .fpga_mgtq110_refclkp    (fpga_mgtq110_refclkp ),  //input           
        .fpga_mgtq110_refclkn    (fpga_mgtq110_refclkn ),  //input           
        .dac1_serdes_p           (dac1_serdes_p        ),  //output  [7:0]     输出到DA的接口
        .dac1_serdes_n           (dac1_serdes_n        ),  //output  [7:0]   
                      
        .dac2_sclk               (dac2_sclk            ),  //output          
        .dac2_csn                (dac2_csn             ),  //output          
        .dac2_sdi                (dac2_sdi             ),  //output          
        .dac2_sdo                (dac2_sdo             ),  //input                     
        .dac2_sync_p             (dac2_sync_p          ),  //input           
        .dac2_sync_n             (dac2_sync_n          ),  //input                    
        .dac2_rst                (dac2_rst             ),  //output          
        .fpga_mgtq112_refclkp    (fpga_mgtq112_refclkp ),  //input           
        .fpga_mgtq112_refclkn    (fpga_mgtq112_refclkn ),  //input           
        .dac2_serdes_p           (dac2_serdes_p        ),  //output  [7:0]   
        .dac2_serdes_n           (dac2_serdes_n        ),  //output  [7:0]   
        
        .dac3_sclk               (dac3_sclk            ),  //output          
        .dac3_csn                (dac3_csn             ),  //output          
        .dac3_sdi                (dac3_sdi             ),  //output          
        .dac3_sdo                (dac3_sdo             ),  //input                    
        .dac3_sync_p             (dac3_sync_p          ),  //input           
        .dac3_sync_n             (dac3_sync_n          ),  //input                     
        .dac3_rst                (dac3_rst             ),  //output          
        .fpga_mgtq116_refclkp    (fpga_mgtq116_refclkp ),  //input           
        .fpga_mgtq116_refclkn    (fpga_mgtq116_refclkn ),  //input           
        .dac3_serdes_p           (dac3_serdes_p        ),  //output  [7:0]   
        .dac3_serdes_n           (dac3_serdes_n        ),  //output  [7:0]   
                      
        .dac4_sclk               (dac4_sclk            ),  //output          
        .dac4_csn                (dac4_csn             ),  //output          
        .dac4_sdi                (dac4_sdi             ),  //output          
        .dac4_sdo                (dac4_sdo             ),  //input                      
        .dac4_sync_p             (dac4_sync_p          ),  //input           
        .dac4_sync_n             (dac4_sync_n          ),  //input                    
        .dac4_rst                (dac4_rst             ),  //output       
        .fpga_mgtq118_refclkp    (fpga_mgtq118_refclkp ),  //input           
        .fpga_mgtq118_refclkn    (fpga_mgtq118_refclkn ),  //input           
        .dac4_serdes_p           (dac4_serdes_p        ),  //output  [7:0]   
        .dac4_serdes_n           (dac4_serdes_n        ),  //output  [7:0]   */   

        .dac1_delta_phase_vio    (dac1_delta_phase_vio ),  //input   [15:0]  
        .dac2_delta_phase_vio    (dac2_delta_phase_vio ),  //input   [15:0]  
        .dac3_delta_phase_vio    (dac3_delta_phase_vio ),  //input   [15:0]  
        .dac4_delta_phase_vio    (dac4_delta_phase_vio ),  //input   [15:0]          
       
        .sysref_logic            (sysref_logic         ),  
        .rst_dds_vio             (jesd_rst_p_cdc_dds           ),  //input           
        .sysref_div_vio          (sysref_div           ),  //input   [7:0]   
        .sysref_num_vio          (sysref_num_cdc           ),  //input   [7:0]   
        .rst_sysref              (jesd_sysref_rst_cdc      ),  //input           
        .rst_dac_spi             (jesd_rst_p           ),  //input           
       // .rst_dac_spi             (jesd_rst_p           ),  //input           
        .rst_axi_vio             (jesd_rst_p_cdc_axi           ),  //input           
        .axi_wr_en_vio           (axi_wr_en_vio        ),  //input           
        .axi_addr_vio            (axi_addr_vio         ),  //input   [29:0]  
        .axi_data_vio            (axi_data_vio         ),  //input   [31:0]  
        .dac_status              (dac_status           ),
        .tx_tdata_vio            ({tx_tdata,tx_tdata,tx_tdata,tx_tdata,tx_tdata,tx_tdata,tx_tdata,tx_tdata}          ),   //input   [255:0] 
        
        .dac_glbl_clk            (dac_glbl_clk         )
                          
    );
    
       
    vio_0 my_vio (
        .clk                    (dac_glbl_clk               ),                // input wire clk
        .probe_out0             (dac1_delta_phase_vio ),  // output wire [15 : 0] probe_out1
        .probe_out1             (dac2_delta_phase_vio ),  // output wire [15 : 0] probe_out1
        .probe_out2             (dac3_delta_phase_vio ),  // output wire [15 : 0] probe_out1
        .probe_out3             (dac4_delta_phase_vio )  // output wire [15 : 0] probe_out1
       
    ); 
	
 //   xpm_cdc_array_single #(
 //       .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
 //       .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
 //       .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
 //       .SRC_INPUT_REG(1),  // DECIMAL; 0=do not register input, 1=register input
 ///      .WIDTH(8)           // DECIMAL; range: 1-1024
 //   )
//    xpm_cdc_array_single_sysref_div (
//        .dest_out   (sysref_div_cdc ), // WIDTH-bit output: src_in synchronized to the destination clock domain. This
//                                       // output is registered.
//        .dest_clk   (dac_glbl_clk   ), // 1-bit input: Clock signal for the destination clock domain.
//        .src_clk    (edk_clk        ), // 1-bit input: optional; required when SRC_INPUT_REG = 1
////        .src_in     (sysref_div     )  // WIDTH-bit input: Input single-bit array to be synchronized to destination clock
//                                       // domain. It is assumed that each bit of the array is unrelated to the others. This
//                                       // is reflected in the constraints applied to this macro. To transfer a binary value
//         .src_in     (   sysref_div  )  // WIDTH-bit input: Input single-bit array to be synchronized to destination clock

       
                                       // losslessly across the two clock domains, use the XPM_CDC_GRAY macro instead.
//    );
    
    xpm_cdc_array_single #(
        .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
        .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
        .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
        .SRC_INPUT_REG(1),  // DECIMAL; 0=do not register input, 1=register input
        .WIDTH(8)           // DECIMAL; range: 1-1024
    )
    xpm_cdc_array_single_sysref_num (
        .dest_out   (sysref_num_cdc ), // WIDTH-bit output: src_in synchronized to the destination clock domain. This
                                       // output is registered.
        .dest_clk   (dac_glbl_clk   ), // 1-bit input: Clock signal for the destination clock domain.
        .src_clk    (edk_clk        ), // 1-bit input: optional; required when SRC_INPUT_REG = 1
        .src_in     (sysref_num     )  // WIDTH-bit input: Input single-bit array to be synchronized to destination clock
                                       // domain. It is assumed that each bit of the array is unrelated to the others. This
                                       // is reflected in the constraints applied to this macro. To transfer a binary value
                                       // losslessly across the two clock domains, use the XPM_CDC_GRAY macro instead.
    );
    
    xpm_cdc_async_rst #(
        .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
        .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
        .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active low reset, 1=active high reset
    )
    xpm_cdc_async_rst_jesd_rst_p_dds (
        .dest_arst  (jesd_rst_p_cdc_dds ),
        .dest_clk   (dac_glbl_clk       ),
        .src_arst   (jesd_rst_p         ) 
    );
    
    xpm_cdc_async_rst #(
        .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
        .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
        .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active low reset, 1=active high reset
    )
    xpm_cdc_async_rst_jesd_rst_p_axi (
        .dest_arst  (jesd_rst_p_cdc_axi ), 
        .dest_clk   (s_axi_aclk         ), 
        .src_arst   (jesd_rst_p         )  
    );
    
    xpm_cdc_async_rst #(
        .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
        .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
        .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active low reset, 1=active high reset
    )
    xpm_cdc_async_rst_jesd_sysref_rst (
        .dest_arst  (jesd_sysref_rst_cdc), 
        .dest_clk   (dac_glbl_clk       ), 
        .src_arst   (jesd_sysref_rst    )  
    );

	
endmodule
