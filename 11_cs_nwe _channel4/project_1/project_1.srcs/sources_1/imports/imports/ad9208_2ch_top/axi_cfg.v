`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 10:09:11
// Design Name: 
// Module Name: axi_cfg
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

`timescale 1ns / 1ps

module axi_cfg (
            axi_clk          ,          // in : system clock
            axi_rstn         ,          // in : system reset : low valid
            // with app
            wr_start         ,
            wr_addr          ,
            wr_data          ,            
            wr_ok            ,
            
            rd_start         ,
            rd_addr          ,
            rd_ok            ,
            rd_data          ,
            
            axi_rstdone      
);
/********************************************************************************\
    parameter
\********************************************************************************/
parameter       CFG_IDLE     =  6'b000001      				  ,
                CFG_REG_EN   =  6'b000010      				  ,
                CFG_REG      =  6'b000100      				  ,
                RD_RST_EN    =  6'b001000      				  ,
                RD_RST       =  6'b010000      				  ,
                RD_RST_OK    =  6'b100000      				  ;
/********************************************************************************\
    I/O
\********************************************************************************/
input                             axi_clk                     ;   // in :system clock
input                             axi_rstn                    ;   // in :system reset : low valid
                                                                  // with app                   
output  reg                       wr_start                    ;
output  reg [11:0]                wr_addr                     ;
output  reg [31:0]                wr_data                     ;            
input                             wr_ok                       ;
                                                             
output  reg                       rd_start                    ;
output  reg [11:0]                rd_addr                     ;
input       [31:0]                rd_data                     ; 
input                             rd_ok                       ;

output                            axi_rstdone                 ;
/********************************************************************************\
    register
\********************************************************************************/
(*KEEP = "TRUE"*)
reg      [5 :0]                   cfg_curr_state              ;
reg      [5 :0]                   cfg_next_state              ;
//counter
(*KEEP = "TRUE"*)
reg      [5 :0]                   wr_cnt                      ;
//test
reg                               axi_rstdone                 ;
/********************************************************************************\
    fsm cfg
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        cfg_curr_state <= CFG_IDLE ;
    end
    else
    begin
        cfg_curr_state <=  cfg_next_state ;
    end
end

always @ ( * )
begin
    case ( cfg_curr_state )
        CFG_IDLE :
        begin
            cfg_next_state = CFG_REG_EN ;
        end
        CFG_REG_EN :
		begin
		    cfg_next_state = CFG_REG ;
		end
        CFG_REG  :
		begin
		    if ( wr_cnt < 6'd10 && wr_ok)
		    begin
		        cfg_next_state = CFG_REG_EN ;
		    end
		    else if(wr_ok)
		    begin
		        cfg_next_state = RD_RST_EN  ;
		    end
		    else
		    begin
		    	cfg_next_state = CFG_REG ;
			end
		end
        RD_RST_EN :
        begin
                cfg_next_state = RD_RST ;
        end
        RD_RST :
		begin
		    if ( rd_data[0] == 1'b0 && rd_ok)
		    begin
		        cfg_next_state = RD_RST_OK ;
		    end
		    else if(rd_ok)
		    begin
		        cfg_next_state = RD_RST_EN ;
		    end
		    else
		    begin
		        cfg_next_state = RD_RST ;
		    end
		end
        RD_RST_OK :
		begin
		        cfg_next_state = RD_RST_OK ;
		end
        default :   
        begin
            cfg_next_state = CFG_IDLE ;
        end
    endcase
end
/********************************************************************************\
    write cfg
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wr_start <= 1'b0 ;
    end
    else if (cfg_curr_state == CFG_REG_EN)
    begin
        wr_start <= 1'b1 ;
    end  
    else
    begin
        wr_start <= 1'b0 ;
    end 
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wr_cnt <= 6'd0 ;
    end
    else if(cfg_curr_state == CFG_REG && wr_ok == 1'b1)
    begin
        wr_cnt <= wr_cnt + 6'd1 ;
    end  
    else
    begin
        wr_cnt <= wr_cnt;
    end  
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wr_addr   <=  12'd0  ; 
        wr_data   <=  32'd0  ;    
    end
    else if(cfg_curr_state == CFG_REG_EN)
    begin
        case ( wr_cnt )
           6'd0  : begin wr_addr <= 12'h008 ;  wr_data <= 32'd1		; end//ILA Support  1=enable;0=disable       
           6'd1  : begin wr_addr <= 12'h00c ;  wr_data <= 32'd0		; end//Scrambling 	1=enable;0=disable
           6'd2  : begin wr_addr <= 12'h010 ;  wr_data <= 32'd0		; end//sysref handling      
           6'd3  : begin wr_addr <= 12'h018 ;  wr_data <= 32'd0		; end//Test Modes
           6'd4  : begin wr_addr <= 12'h020 ;  wr_data <= 32'd1		; end//Octets per Frame
           6'd5  : begin wr_addr <= 12'h024 ;  wr_data <= 32'd29    ; end//Frames per Multiframe
           6'd6  : begin wr_addr <= 12'h028 ;  wr_data <= 32'd255	; end//Lanes in USE
           6'd7  : begin wr_addr <= 12'h02c ;  wr_data <= 32'd1		; end//Subclass Mode
           6'd8  : begin wr_addr <= 12'h030 ;  wr_data <= 32'd0		; end
           6'd9  : begin wr_addr <= 12'h034 ;  wr_data <= 32'd0		; end
		   6'd10 : begin wr_addr <= 12'h004 ;  wr_data <= 32'd1		; end  
           default:begin wr_addr <= 12'h000 ;  wr_data <= 32'd0 	; end     
        endcase
    end
    else
    begin
        wr_addr   <=  wr_addr  ; 
        wr_data   <=  wr_data  ;    
    end
end               
/********************************************************************************\
    read cfg
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin   
        rd_start <= 1'b0 ;
    end
    else 
    begin
     if (cfg_curr_state == RD_RST_EN)
        begin
            rd_start <= 1'b1 ;
        end  
     else
        begin
            rd_start <= 1'b0   ;         
        end   
    end
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        rd_addr  <=  12'h0 ;
    end
    else
    begin
        rd_addr <= 12'h004 ;
    end    
end      
/********************************************************************************\
    test
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        axi_rstdone <= 1'd0 ;    
    end
    else 
    begin
        if (cfg_curr_state == RD_RST_OK)
        begin
            axi_rstdone <= 1'd1 ;    
        end  
        else
        begin
            axi_rstdone <= 1'd0 ;    
        end   
    end
end


endmodule
