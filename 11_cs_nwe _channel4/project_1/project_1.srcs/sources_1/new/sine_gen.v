`timescale 1ns / 1ps

module sine_gen(
    input  wire         clk,
    input  wire [15:0]  delta_phase,
    output reg  [255:0] dout,
	input  wire         rstn
    );

reg  [15:0] pinc;
reg  [15:0] poff [15:0];
wire [15:0] dout_dds [15:0];
reg         rstn_reg;


genvar ll;
generate
    for (ll=0; ll<16; ll=ll+1) 
    begin: my_poff
    always @ (posedge clk)
        poff[ll] <= delta_phase*ll;
    end
 endgenerate
     
    always @ (posedge clk)
    begin
        rstn_reg <= rstn;
        pinc 	<= delta_phase*16;
    end

  genvar kk;
   generate
      for (kk=0; kk<16; kk=kk+1) 
      begin: my_dds_cells
		dds_compiler_0  my_dds_inst (
  .aclk(clk), // input aclk
  .aresetn(rstn_reg), // input aresetn
  .s_axis_config_tvalid(1'b1),                  // input wire s_axis_config_tvalid      
  .s_axis_config_tdata({poff[kk],pinc}),        // input wire [31 : 0] s_axis_config_tdaa
  .m_axis_data_tvalid(),                        // output wire m_axis_data_tvalid       
  .m_axis_data_tdata(dout_dds[kk])// output wire [15 : 0] m_axis_data_tdata

  ); 
      end
   endgenerate  
   wire [15:0] dout_rev [15:0];
   genvar ii;
   generate
         for (ii=0; ii<16; ii=ii+1) 
         begin: switch_msb_and_lsb
            assign dout_rev[ii]={dout_dds[ii][7:0],dout_dds[ii][15:8]};
         end
   endgenerate
           
   genvar jj;
   generate
        for (jj=0; jj<8; jj=jj+1) 
        begin: data_resort   
            always @ (posedge clk) begin
            dout[32*jj+15:32*jj] <= dout_rev[jj];
            dout[32*jj+31:32*jj+16]<= dout_rev[jj+8];
            end
        end
   endgenerate
endmodule	