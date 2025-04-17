`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/25 14:31:40
// Design Name: 
// Module Name: sysref_gen
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


module dac_sysref_gen(
			tx_aclk          ,     
            tx_aresetn       ,
            sysref_state     ,   
            sysref_delay     ,
            sysref_cnt       ,  
             
            sysref        
);
/********************************************************************************\
    parameter
\********************************************************************************/
parameter          LEN  =  8'h8 ;
/********************************************************************************\
    I/O
\********************************************************************************/
input              tx_aclk         ;         
input              tx_aresetn      ;
input              sysref_state    ;
input   [7 : 0]    sysref_delay    ;
input   [7 : 0]    sysref_cnt      ;       
                                   
output             sysref          ;
/********************************************************************************\
    register
\********************************************************************************/
reg                sysref          ;
reg   [7 : 0]     cnt             ;
reg   [7 : 0]     delay_cnt       ;
reg   [7 : 0]     trig_cnt        ;
wire               delay_ok        ;
wire               trig            ;
wire               trig_end        ;
/********************************************************************************\
    delay
\********************************************************************************/
always @ ( negedge tx_aresetn or posedge tx_aclk )
begin
    if ( tx_aresetn == 1'b0 )
    begin
        delay_cnt <= 8'd0 ;
    end
    else
    begin 
        if ( delay_ok == 1'b0 )
        begin
            delay_cnt <= delay_cnt + 8'd1 ;
        end
        else
        begin
            delay_cnt <= delay_cnt ;
        end
    end
end

assign delay_ok = ( delay_cnt >= sysref_delay - 1'b1 ) ;
/********************************************************************************\
    trig
\********************************************************************************/
always @ ( negedge tx_aresetn or posedge tx_aclk )
begin
    if ( tx_aresetn == 1'b0 )
    begin
        cnt <= 8'd0 ;
    end
    else
    begin
        if ( delay_ok == 1'b1 )
        begin
            if ( trig == 1'b1 )
            begin
                cnt <= 8'd0 ;
            end
            else
            begin
                cnt <= cnt + 8'd1 ;
            end
        end
        else
        begin
            cnt <= 8'd0 ;
        end
    end
end

assign trig  = ( cnt >= LEN - 1'b1 ) ;

always @ ( negedge tx_aresetn or posedge tx_aclk )
begin
    if ( tx_aresetn == 1'b0 )
    begin
        trig_cnt <= 8'd0 ;
    end
    else
    begin 
        if ( trig_end == 1'b0 )
        begin 
            if ( trig == 1'b1 )
            begin
                trig_cnt <= trig_cnt + 8'd1 ;
            end
            else
            begin
                trig_cnt <= trig_cnt ;
            end  
        end 
        else
        begin
            trig_cnt <= trig_cnt ;
        end
    end
end

assign trig_end = ( trig_cnt >= sysref_cnt - 1'b1 ) ;
/********************************************************************************\
    sysref
\********************************************************************************/
always @ ( negedge tx_aresetn or posedge tx_aclk )
begin
    if ( tx_aresetn == 1'b0 )
    begin
        sysref <= 1'b0 ;
    end
    else 
    begin
        if ( sysref_state == 1'b0 )
        begin    
            if ( trig_end == 1'b1 )
            begin
                sysref <= 1'b0 ;
            end
            else
            begin   
                sysref <= trig ;
            end
        end
        else
        begin
            sysref <= trig ;
        end        
    end
end


endmodule
