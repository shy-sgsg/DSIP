`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 18:16:59
// Design Name: 
// Module Name: adc_analysis
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


module adc_analysis(

    input   wire                adc_clk1        ,
    input   wire                adc_rst1        ,
    input   wire                adc_clk2        ,
    input   wire                adc_rst2        ,
    input   wire                adc_clk3        ,
    input   wire                adc_rst3        ,
    input   wire                adc_clk4        ,
    input   wire                adc_rst4        ,
    input   wire                data_valid1     ,
    input   wire    [255:00]    data_in1        ,
    input   wire                data_valid2     ,
    input   wire    [255:00]    data_in2        ,
    input   wire                data_valid3     ,
    input   wire    [255:00]    data_in3        ,
    input   wire                data_valid4     ,
    input   wire    [255:00]    data_in4       
    
    );
    
    wire    [15:00]             adc1_a1_1       ; // ADC1 通道A
    wire    [15:00]             adc1_a2_1       ;
    wire    [15:00]             adc1_a3_1       ;
    wire    [15:00]             adc1_a4_1       ;
    wire    [15:00]             adc1_a1_2       ;
    wire    [15:00]             adc1_a2_2       ;
    wire    [15:00]             adc1_a3_2       ;
    wire    [15:00]             adc1_a4_2       ;
                                                
    wire    [15:00]             adc1_b1_1       ; // ADC1 通道B
    wire    [15:00]             adc1_b2_1       ;
    wire    [15:00]             adc1_b3_1       ;
    wire    [15:00]             adc1_b4_1       ; 
    wire    [15:00]             adc1_b1_2       ;
    wire    [15:00]             adc1_b2_2       ;
    wire    [15:00]             adc1_b3_2       ;
    wire    [15:00]             adc1_b4_2       ;
    
    wire    [15:00]             adc2_a1_1       ; // ADC2 通道A
    wire    [15:00]             adc2_a2_1       ;
    wire    [15:00]             adc2_a3_1       ;
    wire    [15:00]             adc2_a4_1       ;
    wire    [15:00]             adc2_a1_2       ;
    wire    [15:00]             adc2_a2_2       ;
    wire    [15:00]             adc2_a3_2       ;
    wire    [15:00]             adc2_a4_2       ;
                                               
    wire    [15:00]             adc2_b1_1       ; // ADC2 通道B
    wire    [15:00]             adc2_b2_1       ;
    wire    [15:00]             adc2_b3_1       ;
    wire    [15:00]             adc2_b4_1       ; 
    wire    [15:00]             adc2_b1_2       ;
    wire    [15:00]             adc2_b2_2       ;
    wire    [15:00]             adc2_b3_2       ;
    wire    [15:00]             adc2_b4_2       ;
    
    wire    [15:00]             adc3_a1_1       ; // ADC3 通道A
    wire    [15:00]             adc3_a2_1       ;
    wire    [15:00]             adc3_a3_1       ;
    wire    [15:00]             adc3_a4_1       ;
    wire    [15:00]             adc3_a1_2       ;
    wire    [15:00]             adc3_a2_2       ;
    wire    [15:00]             adc3_a3_2       ;
    wire    [15:00]             adc3_a4_2       ;
                                               
    wire    [15:00]             adc3_b1_1       ; // ADC3 通道B
    wire    [15:00]             adc3_b2_1       ;
    wire    [15:00]             adc3_b3_1       ;
    wire    [15:00]             adc3_b4_1       ; 
    wire    [15:00]             adc3_b1_2       ;
    wire    [15:00]             adc3_b2_2       ;
    wire    [15:00]             adc3_b3_2       ;
    wire    [15:00]             adc3_b4_2       ;
    
    wire    [15:00]             adc4_a1_1       ; // ADC4 通道A
    wire    [15:00]             adc4_a2_1       ;
    wire    [15:00]             adc4_a3_1       ;
    wire    [15:00]             adc4_a4_1       ;
    wire    [15:00]             adc4_a1_2       ;
    wire    [15:00]             adc4_a2_2       ;
    wire    [15:00]             adc4_a3_2       ;
    wire    [15:00]             adc4_a4_2       ;
                                               
    wire    [15:00]             adc4_b1_1       ; // ADC4 通道B
    wire    [15:00]             adc4_b2_1       ;
    wire    [15:00]             adc4_b3_1       ;
    wire    [15:00]             adc4_b4_1       ; 
    wire    [15:00]             adc4_b1_2       ;
    wire    [15:00]             adc4_b2_2       ;
    wire    [15:00]             adc4_b3_2       ;
    wire    [15:00]             adc4_b4_2       ;
    
    wire                        fifo1_empty     ;
    wire                        fifo1_full      ;
    wire    [255:00]            data_out1       ;
    
    wire                        fifo2_empty     ;
    wire                        fifo2_full      ;
    wire    [255:00]            data_out2       ;
    
    wire                        fifo3_empty     ;
    wire                        fifo3_full      ;
    wire    [255:00]            data_out3       ;
    
    wire                        fifo4_empty     ;
    wire                        fifo4_full      ;
    wire    [255:00]            data_out4       ;
    wire                        adc_en_vio      ;
    reg     [31:0]              time_cnt        ;
    reg                         time_4s         ;
    
    vio_1 adc_en (
    .clk        (adc_clk1           ),                // input wire clk
    .probe_out0 (adc_en_vio         )  // output wire [0 : 0] probe_out0
    );
    
  always@(posedge adc_clk1 )
  begin
    if(adc_rst1)
    begin
        time_cnt <= 32'b0;
        time_4s <= 1'b0;
    end
    else if(adc_en_vio)
    begin
        if(time_cnt == 999999999)
        begin
            time_cnt <= 32'b0;
            time_4s <= 1'b1;
        end
        else
        begin
            time_cnt <= time_cnt + 1;
            time_4s <= 1'b0;
        end
    end
    else
    begin
        time_cnt <= 28'b0;
        time_4s <= 1'b0;
    end
  end
  
    adc_fifo u_adc1_fifo (
        .wr_clk(adc_clk1),  // input wire wr_clk
        .wr_rst(adc_rst1),  // input wire wr_rst
        .rd_clk(adc_clk1),  // input wire rd_clk
        .rd_rst(adc_rst1),  // input wire rd_rst
        .din(data_in1),        // input wire [255 : 0] din
        .wr_en(data_valid1),    // input wire wr_en
        .rd_en(!fifo1_empty),    // input wire rd_en
        .dout(data_out1),      // output wire [255 : 0] dout
        .full(fifo1_full),      // output wire full
        .empty(fifo1_empty)    // output wire empty
    );
    
    adc_fifo u_adc2_fifo (
        .wr_clk(adc_clk2),  // input wire wr_clk
        .wr_rst(adc_rst2),  // input wire wr_rst
        .rd_clk(adc_clk1),  // input wire rd_clk
        .rd_rst(adc_rst1),  // input wire rd_rst
        .din(data_in2),        // input wire [255 : 0] din
        .wr_en(data_valid2),    // input wire wr_en
        .rd_en(!fifo2_empty),    // input wire rd_en
        .dout(data_out2),      // output wire [255 : 0] dout
        .full(fifo2_full),      // output wire full
        .empty(fifo2_empty)    // output wire empty
    );
    
    adc_fifo u_adc3_fifo (
        .wr_clk(adc_clk3),  // input wire wr_clk
        .wr_rst(adc_rst3),  // input wire wr_rst
        .rd_clk(adc_clk1),  // input wire rd_clk
        .rd_rst(adc_rst1),  // input wire rd_rst
        .din(data_in3),        // input wire [255 : 0] din
        .wr_en(data_valid3),    // input wire wr_en
        .rd_en(!fifo3_empty),    // input wire rd_en
        .dout(data_out3),      // output wire [255 : 0] dout
        .full(fifo3_full),      // output wire full
        .empty(fifo3_empty)    // output wire empty
    );
    
    adc_fifo u_adc4_fifo (
        .wr_clk(adc_clk4),  // input wire wr_clk
        .wr_rst(adc_rst4),  // input wire wr_rst
        .rd_clk(adc_clk1),  // input wire rd_clk
        .rd_rst(adc_rst1),  // input wire rd_rst
        .din(data_in4),        // input wire [255 : 0] din
        .wr_en(data_valid4),    // input wire wr_en
        .rd_en(!fifo4_empty),    // input wire rd_en
        .dout(data_out4),      // output wire [255 : 0] dout
        .full(fifo4_full),      // output wire full
        .empty(fifo4_empty)    // output wire empty
    );

//ila_adc_256 U_ila_adc_256 (
//	.clk(adc_clk1), // input wire clk


//	.probe0(data_out1), // input wire [255:0]  probe0  
//	.probe1(data_out2), // input wire [255:0]  probe1 
//	.probe2(data_out3), // input wire [255:0]  probe2 
//	.probe3(data_out4) // input wire [255:0]  probe3
//);
ila_adc_256 ila_adc_256_inst (
	.clk(adc_clk1), // input wire clk


	.probe0(data_out4) // input wire [255:0] probe0
);
 /*   
    assign adc1_a1_1    =    {data_out1[07:00]  ,data_out1[15:08]     }  ;
    assign adc1_a2_1    =    {data_out1[39:32]  ,data_out1[47:40]     }  ;
    assign adc1_a3_1    =    {data_out1[71:64]  ,data_out1[79:72]     }  ;
    assign adc1_a4_1    =    {data_out1[103:96] ,data_out1[111:104]   }  ;     
    assign adc1_a1_2    =    {data_out1[23:16]  ,data_out1[31:24]     }  ;
    assign adc1_a2_2    =    {data_out1[55:48]  ,data_out1[63:56]     }  ;
    assign adc1_a3_2    =    {data_out1[87:80]  ,data_out1[95:88]     }  ;
    assign adc1_a4_2    =    {data_out1[119:112],data_out1[127:120]   }  ;
                                   
    assign adc1_b1_1    =    {data_out1[135:128],data_out1[143:136]   }  ;
    assign adc1_b2_1    =    {data_out1[167:160],data_out1[175:168]   }  ;
    assign adc1_b3_1    =    {data_out1[199:192],data_out1[207:200]   }  ;
    assign adc1_b4_1    =    {data_out1[231:224],data_out1[239:232]   }  ;    
    assign adc1_b1_2    =    {data_out1[151:144],data_out1[159:152]   }  ;
    assign adc1_b2_2    =    {data_out1[183:176],data_out1[191:184]   }  ;
    assign adc1_b3_2    =    {data_out1[215:208],data_out1[223:216]   }  ;
    assign adc1_b4_2    =    {data_out1[247:240],data_out1[255:248]   }  ;
                                   
                                   
    assign adc2_a1_1    =    {data_out2[07:00]  ,data_out2[15:08]     }  ;
    assign adc2_a2_1    =    {data_out2[39:32]  ,data_out2[47:40]     }  ;
    assign adc2_a3_1    =    {data_out2[71:64]  ,data_out2[79:72]     }  ;
    assign adc2_a4_1    =    {data_out2[103:96] ,data_out2[111:104]   }  ;  
    assign adc2_a1_2    =    {data_out2[23:16]  ,data_out2[31:24]     }  ;
    assign adc2_a2_2    =    {data_out2[55:48]  ,data_out2[63:56]     }  ;
    assign adc2_a3_2    =    {data_out2[87:80]  ,data_out2[95:88]     }  ;
    assign adc2_a4_2    =    {data_out2[119:112],data_out2[127:120]   }  ;
                                   
    assign adc2_b1_1    =    {data_out2[135:128],data_out2[143:136]   }  ;
    assign adc2_b2_1    =    {data_out2[167:160],data_out2[175:168]   }  ;
    assign adc2_b3_1    =    {data_out2[199:192],data_out2[207:200]   }  ;
    assign adc2_b4_1    =    {data_out2[231:224],data_out2[239:232]   }  ;  
    assign adc2_b1_2    =    {data_out2[151:144],data_out2[159:152]   }  ;
    assign adc2_b2_2    =    {data_out2[183:176],data_out2[191:184]   }  ;
    assign adc2_b3_2    =    {data_out2[215:208],data_out2[223:216]   }  ;
    assign adc2_b4_2    =    {data_out2[247:240],data_out2[255:248]   }  ;
                                   
                                   
    assign adc3_a1_1    =    {data_out3[07:00]  ,data_out3[15:08]     }  ;
    assign adc3_a2_1    =    {data_out3[39:32]  ,data_out3[47:40]     }  ;
    assign adc3_a3_1    =    {data_out3[71:64]  ,data_out3[79:72]     }  ;
    assign adc3_a4_1    =    {data_out3[103:96] ,data_out3[111:104]   }  ;  
    assign adc3_a1_2    =    {data_out3[23:16]  ,data_out3[31:24]     }  ;
    assign adc3_a2_2    =    {data_out3[55:48]  ,data_out3[63:56]     }  ;
    assign adc3_a3_2    =    {data_out3[87:80]  ,data_out3[95:88]     }  ;
    assign adc3_a4_2    =    {data_out3[119:112],data_out3[127:120]   }  ;
                                 
    assign adc3_b1_1    =    {data_out3[135:128],data_out3[143:136]   }  ;
    assign adc3_b2_1    =    {data_out3[167:160],data_out3[175:168]   }  ;
    assign adc3_b3_1    =    {data_out3[199:192],data_out3[207:200]   }  ;
    assign adc3_b4_1    =    {data_out3[231:224],data_out3[239:232]   }  ;  
    assign adc3_b1_2    =    {data_out3[151:144],data_out3[159:152]   }  ;
    assign adc3_b2_2    =    {data_out3[183:176],data_out3[191:184]   }  ;
    assign adc3_b3_2    =    {data_out3[215:208],data_out3[223:216]   }  ;
    assign adc3_b4_2    =    {data_out3[247:240],data_out3[255:248]   }  ;
                                 
                                 
    assign adc4_a1_1    =    {data_out4[07:00]  ,data_out4[15:08]     }  ;
    assign adc4_a2_1    =    {data_out4[39:32]  ,data_out4[47:40]     }  ;
    assign adc4_a3_1    =    {data_out4[71:64]  ,data_out4[79:72]     }  ;
    assign adc4_a4_1    =    {data_out4[103:96] ,data_out4[111:104]   }  ;  
    assign adc4_a1_2    =    {data_out4[23:16]  ,data_out4[31:24]     }  ;
    assign adc4_a2_2    =    {data_out4[55:48]  ,data_out4[63:56]     }  ;
    assign adc4_a3_2    =    {data_out4[87:80]  ,data_out4[95:88]     }  ;
    assign adc4_a4_2    =    {data_out4[119:112],data_out4[127:120]   }  ;
                                  
    assign adc4_b1_1    =    {data_out4[135:128],data_out4[143:136]   }  ;
    assign adc4_b2_1    =    {data_out4[167:160],data_out4[175:168]   }  ;
    assign adc4_b3_1    =    {data_out4[199:192],data_out4[207:200]   }  ;
    assign adc4_b4_1    =    {data_out4[231:224],data_out4[239:232]   }  ;  
    assign adc4_b1_2    =    {data_out4[151:144],data_out4[159:152]   }  ;
    assign adc4_b2_2    =    {data_out4[183:176],data_out4[191:184]   }  ;
    assign adc4_b3_2    =    {data_out4[215:208],data_out4[223:216]   }  ;
    assign adc4_b4_2    =    {data_out4[247:240],data_out4[255:248]   }  ;
    
 ila_adc u_ila_adc_A (
	.clk(adc_clk1), // input wire clk
	.probe0    (adc1_a1_1), // input wire [15:0]  probe0  
	.probe1    (adc1_a2_1), // input wire [15:0]  probe1 
	.probe2    (adc1_a3_1), // input wire [15:0]  probe2 
	.probe3    (adc1_a4_1), // input wire [15:0]  probe3 
	.probe4    (adc1_a1_2), // input wire [15:0]  probe4 
	.probe5    (adc1_a2_2), // input wire [15:0]  probe5 
	.probe6    (adc1_a3_2), // input wire [15:0]  probe6 
	.probe7    (adc1_a4_2), // input wire [15:0]  probe7 
	.probe8    (adc2_a1_1), // input wire [15:0]  probe8   adc1_b1_1
	.probe9    (adc2_a2_1), // input wire [15:0]  probe9   adc1_b2_1
	.probe10   (adc2_a3_1), // input wire [15:0]  probe10  adc1_b3_1
	.probe11   (adc2_a4_1), // input wire [15:0]  probe11  adc1_b4_1
	.probe12   (adc2_a1_2), // input wire [15:0]  probe12  adc1_b1_2
	.probe13   (adc2_a2_2), // input wire [15:0]  probe13  adc1_b2_2
	.probe14   (adc2_a3_2), // input wire [15:0]  probe14  adc1_b3_2
	.probe15   (adc2_a4_2), // input wire [15:0]  probe15  adc1_b4_2
	.probe16   (adc3_a1_1), // input wire [15:0]  probe0            
	.probe17   (adc3_a2_1), // input wire [15:0]  probe1            
	.probe18   (adc3_a3_1), // input wire [15:0]  probe2            
	.probe19   (adc3_a4_1), // input wire [15:0]  probe3            
	.probe20   (adc3_a1_2), // input wire [15:0]  probe4            
	.probe21   (adc3_a2_2), // input wire [15:0]  probe5            
	.probe22   (adc3_a3_2), // input wire [15:0]  probe6            
	.probe23   (adc3_a4_2), // input wire [15:0]  probe7            
	.probe24   (adc4_a1_1), // input wire [15:0]  probe8   adc1_b1_1
	.probe25   (adc4_a2_1), // input wire [15:0]  probe9   adc1_b2_1
	.probe26   (adc4_a3_1), // input wire [15:0]  probe10  adc1_b3_1
	.probe27   (adc4_a4_1), // input wire [15:0]  probe11  adc1_b4_1
	.probe28   (adc4_a1_2), // input wire [15:0]  probe12  adc1_b1_2
	.probe29   (adc4_a2_2), // input wire [15:0]  probe13  adc1_b2_2
	.probe30   (adc4_a3_2), // input wire [15:0]  probe14  adc1_b3_2
	.probe31   (adc4_a4_2), // input wire [15:0]  probe15  adc1_b4_2
	.probe32(time_4s)
);  

 ila_adc u_ila_adc_B (
	.clk       (adc_clk1), // input wire clk
	.probe0    (adc1_b1_1), // input wire [15:0]  probe0  
	.probe1    (adc1_b2_1), // input wire [15:0]  probe1 
	.probe2    (adc1_b3_1), // input wire [15:0]  probe2 
	.probe3    (adc1_b4_1), // input wire [15:0]  probe3 
	.probe4    (adc1_b1_2), // input wire [15:0]  probe4 
	.probe5    (adc1_b2_2), // input wire [15:0]  probe5 
	.probe6    (adc1_b3_2), // input wire [15:0]  probe6 
	.probe7    (adc1_b4_2), // input wire [15:0]  probe7 
	.probe8    (adc2_b1_1), // input wire [15:0]  probe8   adc1_b1_1
	.probe9    (adc2_b2_1), // input wire [15:0]  probe9   adc1_b2_1
	.probe10   (adc2_b3_1), // input wire [15:0]  probe10  adc1_b3_1
	.probe11   (adc2_b4_1), // input wire [15:0]  probe11  adc1_b4_1
	.probe12   (adc2_b1_2), // input wire [15:0]  probe12  adc1_b1_2
	.probe13   (adc2_b2_2), // input wire [15:0]  probe13  adc1_b2_2
	.probe14   (adc2_b3_2), // input wire [15:0]  probe14  adc1_b3_2
	.probe15   (adc2_b4_2), // input wire [15:0]  probe15  adc1_b4_2
	.probe16   (adc3_b1_1), // input wire [15:0]  probe0            
	.probe17   (adc3_b2_1), // input wire [15:0]  probe1            
	.probe18   (adc3_b3_1), // input wire [15:0]  probe2            
	.probe19   (adc3_b4_1), // input wire [15:0]  probe3            
	.probe20   (adc3_b1_2), // input wire [15:0]  probe4            
	.probe21   (adc3_b2_2), // input wire [15:0]  probe5            
	.probe22   (adc3_b3_2), // input wire [15:0]  probe6            
	.probe23   (adc3_b4_2), // input wire [15:0]  probe7            
	.probe24   (adc4_b1_1), // input wire [15:0]  probe8   adc1_b1_1
	.probe25   (adc4_b2_1), // input wire [15:0]  probe9   adc1_b2_1
	.probe26   (adc4_b3_1), // input wire [15:0]  probe10  adc1_b3_1
	.probe27   (adc4_b4_1), // input wire [15:0]  probe11  adc1_b4_1
	.probe28   (adc4_b1_2), // input wire [15:0]  probe12  adc1_b1_2
	.probe29   (adc4_b2_2), // input wire [15:0]  probe13  adc1_b2_2
	.probe30   (adc4_b3_2), // input wire [15:0]  probe14  adc1_b3_2
	.probe31   (adc4_b4_2), // input wire [15:0]  probe15  adc1_b4_2
	.probe32(time_4s)
);
*/
endmodule
