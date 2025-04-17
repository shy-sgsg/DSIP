`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 10:08:12
// Design Name: 
// Module Name: axi_proc
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

module axi_proc (
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
            // with APP
            wr_start         ,
            wr_addr          ,
            wr_data          ,            
            wr_ok            ,
            
            rd_start         ,
            rd_addr          ,
            rd_ok            ,
            rd_data         
);
/********************************************************************************\
    parameter
\********************************************************************************/
parameter       WR_IDLE     =  11'b00000000001    ,
                WR_ADDR     =  11'b00000000010    ,
                WR_DATA     =  11'b00000000100    ,
                WR_TEST     =  11'b00000001000    ,
                WR_OK       =  11'b00000010000    ,
                WR_END      =  11'b00000100000    ,
                RD_IDLE     =  11'b00001000000    ,
                RD_ADDR     =  11'b00010000000    ,
                RD_DATA     =  11'b00100000000    ,
                RD_OK       =  11'b01000000000    ,
                RD_END      =  11'b10000000000    ;
/********************************************************************************\
    I/O
\********************************************************************************/
input                              axi_clk                      ;   // in :system clock
input                              axi_rstn                     ;   // in :system reset : low valid
                                   // with aw
output   [11 : 0]                  awaddr                       ;                   
output                             awvalid                      ; 
input                              awready                      ; 
                                   // with w                     
output   [31 : 0]                  wdata                        ;
output                             wvalid                       ; 
input                              wready                       ; 
                                   // with ar   
output   [11 : 0]                  araddr                       ;                 
output                             arvalid                      ; 
input                              arready                      ; 
                                   // with r
input    [31 : 0]                  rdata                        ;
input    [1 : 0]                   rresp                        ; 
input                              rvalid                       ; 
output                             rready                       ; 
                                   // with b 
input    [1 : 0]                   bresp                        ; 
input                              bvalid                       ; 
output                             bready                       ;
                                   // with app      
input                              wr_start                     ;
input    [11 : 0]                  wr_addr                      ;
input    [31 : 0]                  wr_data                      ;            
output                             wr_ok                        ;
                                                                
input                              rd_start                     ;
input    [11 : 0]                  rd_addr                      ;
output                             rd_ok                        ;
output   [31 : 0]                  rd_data                      ;  
/********************************************************************************\
    register
\********************************************************************************/
// write
reg                                awvalid                      ;
reg                                wvalid                       ;
reg                                bready                       ;
//read
(*keep = "true"*)
reg                                arvalid                      ;
(*keep = "true"*)
reg                                rready                       ;
(*keep = "true"*)
reg     [31 : 0]                   rd_data                      ;
//add
(*keep = "true"*)
reg                                wr_ok                        ;
(*keep = "true"*)
reg                                rd_ok                        ;

reg     [10 : 0]                   wr_curr_state                ;
reg     [10 : 0]                   wr_next_state                ;
reg     [10 : 0]                   rd_curr_state                ;
reg     [10 : 0]                   rd_next_state                ;
//counter
reg     [5 : 0]                    awaddr_cnt                   ;
reg     [5 : 0]                    araddr_cnt                   ;
/********************************************************************************\
    fsm write
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wr_curr_state <= WR_IDLE ;
    end
    else
    begin
        wr_curr_state <=  wr_next_state ;
    end
end

always @ ( * )
begin
    case ( wr_curr_state )
        WR_IDLE :
        begin
            if ( wr_start == 1'b1 )
            begin
                wr_next_state = WR_ADDR ;
            end
            else
            begin
                wr_next_state = WR_IDLE ;
            end
        end
        WR_ADDR : 
        begin
            if ( awvalid == 1'b1 && awready == 1'b1 )
            begin
                wr_next_state = WR_DATA ;
            end
            else
            begin
                wr_next_state = WR_ADDR ;
            end
        end
        WR_DATA :
        begin
            if ( wvalid == 1'b1 && wready == 1'b1 )
            begin
                wr_next_state = WR_TEST ;
            end
            else
            begin
                wr_next_state = WR_DATA ;
            end
        end
        WR_TEST :
        begin
            if ( bvalid == 1'b1 && bready == 1'b1 && bresp == 2'd0 )
            begin
                wr_next_state = WR_OK ;
            end
            else
            if ( bvalid == 1'b1 && bready == 1'b1 && bresp != 2'd0 )
            begin
                wr_next_state = WR_ADDR ;
            end
            else
            begin
                wr_next_state = WR_TEST ;
            end
        end
        WR_OK :
        begin
            wr_next_state = WR_END ;
        end
        WR_END :
        begin
            wr_next_state = WR_IDLE ;
        end
        default : wr_next_state = WR_IDLE ;
    endcase
end
/********************************************************************************\
    fsm read
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        rd_curr_state <= RD_IDLE ;
    end
    else
    begin
        rd_curr_state <=  rd_next_state ;
    end
end

always @ ( * )
begin
    case ( rd_curr_state )
        RD_IDLE :
        begin
            if ( rd_start == 1'b1 )
            begin
                rd_next_state = RD_ADDR ;
            end
            else
            begin
                rd_next_state = RD_IDLE ;
            end
        end
        RD_ADDR :
        begin
            if ( arvalid == 1'b1 && arready == 1'b1 )
            begin
                rd_next_state = RD_DATA ;
            end
            else
            begin
                rd_next_state = RD_ADDR ;
            end
        end
        RD_DATA :
        begin
            if ( rvalid == 1'b1 && rready == 1'b1 )
            begin
                rd_next_state = RD_OK ;
            end
            else
            begin
                rd_next_state = RD_DATA ;
            end
        end
        RD_OK :
        begin
            rd_next_state = RD_END ;
        end
        RD_END :
        begin
            rd_next_state = RD_IDLE ;
        end
        default : rd_next_state = RD_IDLE ;
    endcase
end
/********************************************************************************\
    proc write  //don't change
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        awvalid <= 1'b0 ;
    end
    else
    begin
        if ( wr_curr_state == WR_ADDR && awready == 1'b1 )
        begin
            awvalid <= 1'b0 ;
        end
        else
        if ( wr_curr_state == WR_ADDR )
        begin
            awvalid <= 1'b1 ;
        end
        else
        begin
            awvalid <= 1'b0 ;
        end
    end
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wvalid <= 1'b0 ;
    end
    else
    begin
        if ( wr_curr_state == WR_DATA && wready == 1'b1 )
        begin
            wvalid <= 1'b0 ;
        end
        else
        if ( wr_curr_state == WR_DATA )
        begin
            wvalid <= 1'b1 ;
        end
        else
        begin
            wvalid <= 1'b0 ;
        end
    end
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin 
    if ( axi_rstn == 1'b0 )
    begin
        bready <= 1'b0 ;
    end
    else
    begin
        if ( wr_curr_state == WR_IDLE )
        begin
            bready <= 1'b0 ;
        end
        else
        begin
            bready <= 1'b1 ;
        end
    end
end
/********************************************************************************\
    proc read  //don't change
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        arvalid <= 1'b0 ;
    end
    else
    begin
//        if ( arready == 1'b1 )
//        begin
//            arvalid <= 1'b0 ;
//        end
//        else
        if ( rd_curr_state == RD_ADDR )
        begin
            arvalid <= 1'b1 ;
        end
        else
        begin
            arvalid <= 1'b0 ;
        end
    end
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        rready <= 1'b0 ;
    end
    else
    begin
        if ( rd_curr_state == RD_DATA && rvalid == 1'b1 )
        begin
            rready <= 1'b0 ;
        end
        else
        if ( rd_curr_state == RD_DATA )
        begin
            rready <= 1'b1 ;
        end
        else
        begin
            rready <= 1'b0 ;
        end
    end
end
/********************************************************************************\
    proc ok
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        wr_ok <= 1'b0 ;
    end
    else
    begin
        if ( wr_curr_state == WR_OK )
        begin
            wr_ok <= 1'b1 ;
        end
        else
        begin
            wr_ok <= 1'b0 ;
        end
    end
end

always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        rd_ok <= 1'b0 ;
    end
    else
    begin
        if ( rd_curr_state == RD_OK )
        begin
            rd_ok <= 1'b1 ;
        end
        else
        begin
            rd_ok <= 1'b0 ;
        end
    end
end
/********************************************************************************\
    I/O change
\********************************************************************************/
always @ ( posedge axi_clk or negedge axi_rstn )
begin
    if ( axi_rstn == 1'b0 )
    begin
        rd_data <= 1'b0 ;
    end
    else
    begin
        if ( rd_curr_state == RD_DATA )
        begin
            rd_data <= rdata ;
        end
        else
        begin
            rd_data <= rd_data ;
        end
    end
end

assign awaddr = wr_addr ;
assign araddr = rd_addr ;
assign wdata  = wr_data ;

endmodule