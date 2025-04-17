//by ZHN
//2020.12.16
//issues to be resolved: 
//		unknown mismatch of transistors makes the calculation meaningless

//OS_P/N:			[2:0]	[5:3]	[8:6]	[11:9]	[14:12]	[15:13]
//threshold: comp8	comp1	comp2	comp3	comp4	comp5	comp6	comp7
//			 Vref7	Vref6	Vref5	Vref4	Vref3	Vref2	Vref1	Vref8
//i.e.		 -0.525	-0.375	-0.225	-0.075	0.075	0.225	0.375	0.525

//weight of every 3bit code: 4 2 1

//5 buffers in analog domain, so that the code in Reg_Global(digital domain) need to be flipped before output

//calibration order: MDAC3 OS_N, MDAC3 OS_P, MDAC2 OS_N, MDAC2 OS_P, MDAC1 OS_N, MDAC1 OS_P

#include"xil_types.h"
//#include"spi_send.h"
#include"stdlib.h"
//#include"stdio.h"
#include"xparameters.h"
#include"xil_types.h"
#include"spi.h"
#include"ctrl_204b.h"

u16 comparator_P (float input){//calculate the 3bit PMOS code of each comparator according to the offset
	u16 output;
	if (input<-69.6) output = 7;
	else if (input<-58.9) output = 6;
	else if (input<-48.2) output = 5;
	else if (input<-37.5) output = 4;
	else if (input<-26.8) output = 3;
	else if (input<-16.1) output = 2;
	else if (input<-5.4 ) output = 1;
	else output = 0;
	return output;
}

u16 comparator_N (float input){//calculate the 3bit NMOS code of each comparator according to the offset
	u16 output;
	if (input<5.4 ) output = 0;
	else if (input<16.1) output = 1;
	else if (input<26.8) output = 2;
	else if (input<37.5) output = 3;
	else if (input<48.2) output = 4;
	else if (input<58.9) output = 5;
	else if (input<69.6) output = 6;
	else output = 7;
	return output;
}

void offset_cal(int addr,
		        float Vth1_1_offset, float Vth1_2_offset, float Vth1_3_offset ,float Vth1_4_offset ,float Vth1_5_offset, float Vth1_6_offset,
				float Vth2_1_offset, float Vth2_2_offset, float Vth2_3_offset ,float Vth2_4_offset ,float Vth2_5_offset, float Vth2_6_offset,
				float Vth3_1_offset, float Vth3_2_offset, float Vth3_3_offset ,float Vth3_4_offset ,float Vth3_5_offset, float Vth3_6_offset,
				int channel) //all of Vthx_x_offset(mV) from MATLAB
{
	//calculate the transistor code in pre-Amp to generate CMP_SR(6 bits/comparator, 6 comparators/stage, 3 stages)
	u16 P1_1, P1_2, P1_3, P1_4, P1_5, P1_6;
	u16 N1_1, N1_2, N1_3, N1_4, N1_5, N1_6;
	u16 P2_1, P2_2, P2_3, P2_4, P2_5, P2_6;
	u16 N2_1, N2_2, N2_3, N2_4, N2_5, N2_6;
	u16 P3_1, P3_2, P3_3, P3_4, P3_5, P3_6;
	u16 N3_1, N3_2, N3_3, N3_4, N3_5, N3_6;

	P1_1 = comparator_P(Vth1_1_offset); N1_1 = comparator_N(Vth1_1_offset);
	P1_2 = comparator_P(Vth1_2_offset); N1_2 = comparator_N(Vth1_2_offset);
	P1_3 = comparator_P(Vth1_3_offset); N1_3 = comparator_N(Vth1_3_offset);
	P1_4 = comparator_P(Vth1_4_offset); N1_4 = comparator_N(Vth1_4_offset);
	P1_5 = comparator_P(Vth1_5_offset); N1_5 = comparator_N(Vth1_5_offset);
	P1_6 = comparator_P(Vth1_6_offset); N1_6 = comparator_N(Vth1_6_offset);
	P2_1 = comparator_P(Vth2_1_offset); N2_1 = comparator_N(Vth2_1_offset);
	P2_2 = comparator_P(Vth2_2_offset); N2_2 = comparator_N(Vth2_2_offset);
	P2_3 = comparator_P(Vth2_3_offset); N2_3 = comparator_N(Vth2_3_offset);
	P2_4 = comparator_P(Vth2_4_offset); N2_4 = comparator_N(Vth2_4_offset);
	P2_5 = comparator_P(Vth2_5_offset); N2_5 = comparator_N(Vth2_5_offset);
	P2_6 = comparator_P(Vth2_6_offset); N2_6 = comparator_N(Vth2_6_offset);
	P3_1 = comparator_P(Vth3_1_offset); N3_1 = comparator_N(Vth3_1_offset);
	P3_2 = comparator_P(Vth3_2_offset); N3_2 = comparator_N(Vth3_2_offset);
	P3_3 = comparator_P(Vth3_3_offset); N3_3 = comparator_N(Vth3_3_offset);
	P3_4 = comparator_P(Vth3_4_offset); N3_4 = comparator_N(Vth3_4_offset);
	P3_5 = comparator_P(Vth3_5_offset); N3_5 = comparator_N(Vth3_5_offset);
	P3_6 = comparator_P(Vth3_6_offset); N3_6 = comparator_N(Vth3_6_offset);

	//configure 6 beats (serial) to complete all offset calibration for 1 time
    //calibration order: MDAC3 PMOS, MDAC3 NMOS, MDAC2 PMOS, MDAC2 NMOS, MDAC1 PMOS, MDAC1 NMOS
    //20bit CMP_SR of ADC1 in Reg_Global(addr[bit]): 3[15:0], 4[3:0]
    //20bit CMP_SR of ADC2 in Reg_Global(addr[bit]): 5[15:4], 6[7:0]
    //20bit CMP_SR of ADC3 in Reg_Global(addr[bit]): 7[15:8], 8[11:0]
    //20bit CMP_SR of ADC4 in Reg_Global(addr[bit]): 9[15:12], 10[15:0]
	if (channel==1){
		spi_send(addr,3 , 0xffff - (N3_6%2*32768 + N3_5*4096 + N3_4*512 + N3_3*64 + N3_2*8 + N3_1));
		spi_send(addr,4 , 0xffff - (8+N3_6/2));   //clk=0, rst=0 in DFF chain
		spi_send(addr,4 , 0xffff - (8+4+N3_6/2)); //clk=1, rst=0 in DFF chain  //rising edge
		spi_send(addr,4 , 0xffff - (8+N3_6/2));   //clk=0, rst=0 in DFF chain

		spi_send(addr,3 , 0xffff - (P3_6%2*32768 + P3_5*4096 + P3_4*512 + P3_3*64 + P3_2*8 + P3_1));//CMP_SR[15 :0  ]
		spi_send(addr,4 , 0xffff - (8+P3_6/2));
		spi_send(addr,4 , 0xffff - (8+4+P3_6/2)); //rising edge
		spi_send(addr,4 , 0xffff - (8+P3_6/2));

		spi_send(addr,3 , 0xffff - (N2_6%2*32768 + N2_5*4096 + N2_4*512 + N2_3*64 + N2_2*8 + N2_1));
		spi_send(addr,4 , 0xffff - (8+N2_6/2));
		spi_send(addr,4 , 0xffff - (8+4+N2_6/2)); //rising edge
		spi_send(addr,4 , 0xffff - (8+N2_6/2));

		spi_send(addr,3 , 0xffff - (P2_6%2*32768 + P2_5*4096 + P2_4*512 + P2_3*64 + P2_2*8 + P2_1));
		spi_send(addr,4 , 0xffff - (8+P2_6/2));
		spi_send(addr,4 , 0xffff - (8+4+P2_6/2)); //rising edge
		spi_send(addr,4 , 0xffff - (8+P2_6/2));

		spi_send(addr,3 , 0xffff - (N1_6%2*32768 + N1_5*4096 + N1_4*512 + N1_3*64 + N1_2*8 + N1_1));
		spi_send(addr,4 , 0xffff - (8+N1_6/2));
		spi_send(addr,4 , 0xffff - (8+4+N1_6/2)); //rising edge
		spi_send(addr,4 , 0xffff - (8+N1_6/2));

		spi_send(addr,3 , 0xffff - (P1_6%2*32768 + P1_5*4096 + P1_4*512 + P1_3*64 + P1_2*8 + P1_1));
		spi_send(addr,4 , 0xffff - (8+P1_6/2));
		spi_send(addr,4 , 0xffff - (8+4+P1_6/2)); //rising edge
		spi_send(addr,4 , 0xffff - (8+P1_6/2));
	}
	else if (channel==2){
		spi_send(addr,5 , 0xffff - (N3_4*512 + N3_3*64 + N3_2*8 + N3_1)*16);
		spi_send(addr,6 , 0xffff - (128+N3_6*8+N3_5));
		spi_send(addr,6 , 0xffff - (128+64+ N3_6*8 + N3_5));
		spi_send(addr,6 , 0xffff - (128+N3_6*8+N3_5));

		spi_send(addr,5 , 0xffff - (P3_4*512 + P3_3*64 + P3_2*8 + P3_1)*16);
		spi_send(addr,6 , 0xffff - (128+P3_6*8+P3_5));
		spi_send(addr,6 , 0xffff - (128+64+ P3_6*8 + P3_5));
		spi_send(addr,6 , 0xffff - (128+P3_6*8+P3_5));

		spi_send(addr,5 , 0xffff - (N2_4*512 + N2_3*64 + N2_2*8 + N2_1)*16);
		spi_send(addr,6 , 0xffff - (128+N2_6*8+N2_5));
		spi_send(addr,6 , 0xffff - (128+64+ N2_6*8 + N2_5));
		spi_send(addr,6 , 0xffff - (128+N2_6*8+N2_5));

		spi_send(addr,5 , 0xffff - (P2_4*512 + P2_3*64 + P2_2*8 + P2_1)*16);
		spi_send(addr,6 , 0xffff - (128+P2_6*8+P2_5));
		spi_send(addr,6 , 0xffff - (128+64+ P2_6*8 + P2_5));
		spi_send(addr,6 , 0xffff - (128+P2_6*8+P2_5));

		spi_send(addr,5 , 0xffff - (N1_4*512 + N1_3*64 + N1_2*8 + N1_1)*16);
		spi_send(addr,6 , 0xffff - (128+N1_6*8+N1_5));
		spi_send(addr,6 , 0xffff - (128+64+ N1_6*8 + N1_5));
		spi_send(addr,6 , 0xffff - (128+N1_6*8+N1_5));


		spi_send(addr,5 , 0xffff - (P1_4*512 + P1_3*64 + P1_2*8 + P1_1)*16);
		spi_send(addr,6 , 0xffff - (128+P1_6*8+P1_5));
		spi_send(addr,6 , 0xffff - (128+64+ P1_6*8 + P1_5));
		spi_send(addr,6 , 0xffff - (128+P1_6*8+P1_5));
	}
	else if (channel==3){
		spi_send(addr,7 , 0xffff - (N3_3%4*64 + N3_2*8 + N3_1)*256);
		spi_send(addr,8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+N3_6*128+N3_5*16+N3_4*2 + N3_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
		
		spi_send(addr,7 , 0xffff - (P3_3%4*64 + P3_2*8 + P3_1)*256);
		spi_send(addr,8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+P3_6*128+P3_5*16+P3_4*2 + P3_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
		
		spi_send(addr,7 , 0xffff - (N2_3%4*64 + N2_2*8 + N2_1)*256);
		spi_send(addr,8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+N2_6*128+N2_5*16+N2_4*2 + N2_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
		
		spi_send(addr,7 , 0xffff - (P2_3%4*64 + P2_2*8 + P2_1)*256);
		spi_send(addr,8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+P2_6*128+P2_5*16+P2_4*2 + P2_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
		
		spi_send(addr,7 , 0xffff - (N1_3%4*64 + N1_2*8 + N1_1)*256);
		spi_send(addr,8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+N1_6*128+N1_5*16+N1_4*2 + N1_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
		
		spi_send(addr,7 , 0xffff - (P1_3%4*64 + P1_2*8 + P1_1)*256);
		spi_send(addr,8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
		spi_send(addr,8 , 0xffff - (2048+1024+P1_6*128+P1_5*16+P1_4*2 + P1_3/4)); //rising edge
		spi_send(addr,8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
	}
	else if (channel==4){
		spi_send(addr,9 , 0xffff - (N3_2%2*8 + N3_1)*4096);
		spi_send(addr,10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
		spi_send(addr,10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));

		spi_send(addr,9 , 0xffff - (P3_2%2*8 + P3_1)*4096);
		spi_send(addr,10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
		spi_send(addr,10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));

		spi_send(addr,9 , 0xffff - (N2_2%2*8 + N2_1)*4096);
		spi_send(addr,10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
		spi_send(addr,10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));

		spi_send(addr,9 , 0xffff - (P2_2%2*8 + P2_1)*4096);
		spi_send(addr,10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
		spi_send(addr,10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));

		spi_send(addr,9 , 0xffff - (N1_2%2*8 + N1_1)*4096);
		spi_send(addr,10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
		spi_send(addr,10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));

		spi_send(addr,9 , 0xffff - (P1_2%2*8 + P1_1)*4096);
		spi_send(addr,10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
		spi_send(addr,10, 0xffff - (32768+16384+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
		spi_send(addr,10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));

	}
	else if (channel==5){
		spi_send(addr,512+3 , 0xffff - (N3_6%2*32768 + N3_5*4096 + N3_4*512 + N3_3*64 + N3_2*8 + N3_1));
		spi_send(addr,512+4 , 0xffff - (8+N3_6/2));   //clk=0, rst=0 in DFF chain
		spi_send(addr,512+4 , 0xffff - (8+4+N3_6/2)); //clk=1, rst=0 in DFF chain  //rising edge
		spi_send(addr,512+4 , 0xffff - (8+N3_6/2));   //clk=0, rst=0 in DFF chain

		spi_send(addr,512+3 , 0xffff - (P3_6%2*32768 + P3_5*4096 + P3_4*512 + P3_3*64 + P3_2*8 + P3_1));//CMP_SR[15 :0  ]
		spi_send(addr,512+4 , 0xffff - (8+P3_6/2));
		spi_send(addr,512+4 , 0xffff - (8+4+P3_6/2)); //rising edge
		spi_send(addr,512+4 , 0xffff - (8+P3_6/2));

		spi_send(addr,512+3 , 0xffff - (N2_6%2*32768 + N2_5*4096 + N2_4*512 + N2_3*64 + N2_2*8 + N2_1));
		spi_send(addr,512+4 , 0xffff - (8+N2_6/2));
		spi_send(addr,512+4 , 0xffff - (8+4+N2_6/2)); //rising edge
		spi_send(addr,512+4 , 0xffff - (8+N2_6/2));

		spi_send(addr,512+3 , 0xffff - (P2_6%2*32768 + P2_5*4096 + P2_4*512 + P2_3*64 + P2_2*8 + P2_1));
		spi_send(addr,512+4 , 0xffff - (8+P2_6/2));
		spi_send(addr,512+4 , 0xffff - (8+4+P2_6/2)); //rising edge
		spi_send(addr,512+4 , 0xffff - (8+P2_6/2));

		spi_send(addr,512+3 , 0xffff - (N1_6%2*32768 + N1_5*4096 + N1_4*512 + N1_3*64 + N1_2*8 + N1_1));
		spi_send(addr,512+4 , 0xffff - (8+N1_6/2));
		spi_send(addr,512+4 , 0xffff - (8+4+N1_6/2)); //rising edge
		spi_send(addr,512+4 , 0xffff - (8+N1_6/2));

		spi_send(addr,512+3 , 0xffff - (P1_6%2*32768 + P1_5*4096 + P1_4*512 + P1_3*64 + P1_2*8 + P1_1));
		spi_send(addr,512+4 , 0xffff - (8+P1_6/2));
		spi_send(addr,512+4 , 0xffff - (8+4+P1_6/2)); //rising edge
		spi_send(addr,512+4 , 0xffff - (8+P1_6/2));
	}
	else if (channel==6){
	    spi_send(addr,512+5 , 0xffff - (N3_4*512 + N3_3*64 + N3_2*8 + N3_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+N3_6*8+N3_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ N3_6*8 + N3_5));
	    spi_send(addr,512+6 , 0xffff - (128+N3_6*8+N3_5));
	    
	    spi_send(addr,512+5 , 0xffff - (P3_4*512 + P3_3*64 + P3_2*8 + P3_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+P3_6*8+P3_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ P3_6*8 + P3_5));
	    spi_send(addr,512+6 , 0xffff - (128+P3_6*8+P3_5));
	    
	    spi_send(addr,512+5 , 0xffff - (N2_4*512 + N2_3*64 + N2_2*8 + N2_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+N2_6*8+N2_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ N2_6*8 + N2_5));
	    spi_send(addr,512+6 , 0xffff - (128+N2_6*8+N2_5));
	    
	    spi_send(addr,512+5 , 0xffff - (P2_4*512 + P2_3*64 + P2_2*8 + P2_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+P2_6*8+P2_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ P2_6*8 + P2_5));
	    spi_send(addr,512+6 , 0xffff - (128+P2_6*8+P2_5));
	    
	    spi_send(addr,512+5 , 0xffff - (N1_4*512 + N1_3*64 + N1_2*8 + N1_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+N1_6*8+N1_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ N1_6*8 + N1_5));
	    spi_send(addr,512+6 , 0xffff - (128+N1_6*8+N1_5));
	    
	    
	    spi_send(addr,512+5 , 0xffff - (P1_4*512 + P1_3*64 + P1_2*8 + P1_1)*16);
	    spi_send(addr,512+6 , 0xffff - (128+P1_6*8+P1_5));
	    spi_send(addr,512+6 , 0xffff - (128+64+ P1_6*8 + P1_5));
	    spi_send(addr,512+6 , 0xffff - (128+P1_6*8+P1_5));
	}
	else if (channel==7){
		spi_send(addr,512+7 , 0xffff - (N3_3%4*64 + N3_2*8 + N3_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+N3_6*128+N3_5*16+N3_4*2 + N3_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
		
		spi_send(addr,512+7 , 0xffff - (P3_3%4*64 + P3_2*8 + P3_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+P3_6*128+P3_5*16+P3_4*2 + P3_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
		
		spi_send(addr,512+7 , 0xffff - (N2_3%4*64 + N2_2*8 + N2_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+N2_6*128+N2_5*16+N2_4*2 + N2_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
		
		spi_send(addr,512+7 , 0xffff - (P2_3%4*64 + P2_2*8 + P2_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+P2_6*128+P2_5*16+P2_4*2 + P2_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
		
		spi_send(addr,512+7 , 0xffff - (N1_3%4*64 + N1_2*8 + N1_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+N1_6*128+N1_5*16+N1_4*2 + N1_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
		
		spi_send(addr,512+7 , 0xffff - (P1_3%4*64 + P1_2*8 + P1_1)*256);
		spi_send(addr,512+8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
		spi_send(addr,512+8 , 0xffff - (2048+1024+P1_6*128+P1_5*16+P1_4*2 + P1_3/4)); //rising edge
		spi_send(addr,512+8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
	}
	else if (channel==8){
		spi_send(addr,512+9 , 0xffff - (N3_2%2*8 + N3_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
		spi_send(addr,512+10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));

		spi_send(addr,512+9 , 0xffff - (P3_2%2*8 + P3_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
		spi_send(addr,512+10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));

		spi_send(addr,512+9 , 0xffff - (N2_2%2*8 + N2_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
		spi_send(addr,512+10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));

		spi_send(addr,512+9 , 0xffff - (P2_2%2*8 + P2_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
		spi_send(addr,512+10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));

		spi_send(addr,512+9 , 0xffff - (N1_2%2*8 + N1_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
		spi_send(addr,512+10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));

		spi_send(addr,512+9 , 0xffff - (P1_2%2*8 + P1_1)*4096);
		spi_send(addr,512+10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
		spi_send(addr,512+10, 0xffff - (32768+16384+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
		spi_send(addr,512+10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));

	}
}



// void offset_cal(u16 Vth1_1_offset, u16 Vth1_2_offset, u16 Vth1_3_offset ,u16 Vth1_4_offset ,u16 Vth1_5_offset, u16 Vth1_6_offset,
// 				u16 Vth2_1_offset, u16 Vth2_2_offset, u16 Vth2_3_offset ,u16 Vth2_4_offset ,u16 Vth2_5_offset, u16 Vth2_6_offset,
// 				u16 Vth3_1_offset, u16 Vth3_2_offset, u16 Vth3_3_offset ,u16 Vth3_4_offset ,u16 Vth3_5_offset, u16 Vth3_6_offset,
// 				int channel)
// {
// 	//calculate the transistor code in pre-Amp to generate CMP_SR(6 bits/comparator, 6 comparators/stage, 3 stages)
// 	u16 P1_1, P1_2, P1_3, P1_4, P1_5, P1_6;
// 	u16 N1_1, N1_2, N1_3, N1_4, N1_5, N1_6;
// 	u16 P2_1, P2_2, P2_3, P2_4, P2_5, P2_6;
// 	u16 N2_1, N2_2, N2_3, N2_4, N2_5, N2_6;
// 	u16 P3_1, P3_2, P3_3, P3_4, P3_5, P3_6;
// 	u16 N3_1, N3_2, N3_3, N3_4, N3_5, N3_6;

// 	if(Vth1_1_offset>0){P1_1 = 0; N1_1 = Vth1_1_offset;} else{P1_1 = -Vth1_1_offset; N1_1 = 0;}
// 	if(Vth1_2_offset>0){P1_2 = 0; N1_2 = Vth1_2_offset;} else{P1_2 = -Vth1_2_offset; N1_2 = 0;}
// 	if(Vth1_3_offset>0){P1_3 = 0; N1_3 = Vth1_3_offset;} else{P1_3 = -Vth1_3_offset; N1_3 = 0;}
// 	if(Vth1_4_offset>0){P1_4 = 0; N1_4 = Vth1_4_offset;} else{P1_4 = -Vth1_4_offset; N1_4 = 0;}
// 	if(Vth1_5_offset>0){P1_5 = 0; N1_5 = Vth1_5_offset;} else{P1_5 = -Vth1_5_offset; N1_5 = 0;}
// 	if(Vth1_6_offset>0){P1_6 = 0; N1_6 = Vth1_6_offset;} else{P1_6 = -Vth1_6_offset; N1_6 = 0;}
// 	if(Vth2_1_offset>0){P2_1 = 0; N2_1 = Vth2_1_offset;} else{P2_1 = -Vth2_1_offset; N2_1 = 0;}
// 	if(Vth2_2_offset>0){P2_2 = 0; N2_2 = Vth2_2_offset;} else{P2_2 = -Vth2_2_offset; N2_2 = 0;}
// 	if(Vth2_3_offset>0){P2_3 = 0; N2_3 = Vth2_3_offset;} else{P2_3 = -Vth2_3_offset; N2_3 = 0;}
// 	if(Vth2_4_offset>0){P2_4 = 0; N2_4 = Vth2_4_offset;} else{P2_4 = -Vth2_4_offset; N2_4 = 0;}
// 	if(Vth2_5_offset>0){P2_5 = 0; N2_5 = Vth2_5_offset;} else{P2_5 = -Vth2_5_offset; N2_5 = 0;}
// 	if(Vth2_6_offset>0){P2_6 = 0; N2_6 = Vth2_6_offset;} else{P2_6 = -Vth2_6_offset; N2_6 = 0;}
// 	if(Vth3_1_offset>0){P3_1 = 0; N3_1 = Vth3_1_offset;} else{P3_1 = -Vth3_1_offset; N3_1 = 0;}
// 	if(Vth3_2_offset>0){P3_2 = 0; N3_2 = Vth3_2_offset;} else{P3_2 = -Vth3_2_offset; N3_2 = 0;}
// 	if(Vth3_3_offset>0){P3_3 = 0; N3_3 = Vth3_3_offset;} else{P3_3 = -Vth3_3_offset; N3_3 = 0;}
// 	if(Vth3_4_offset>0){P3_4 = 0; N3_4 = Vth3_4_offset;} else{P3_4 = -Vth3_4_offset; N3_4 = 0;}
// 	if(Vth3_5_offset>0){P3_5 = 0; N3_5 = Vth3_5_offset;} else{P3_5 = -Vth3_5_offset; N3_5 = 0;}
// 	if(Vth3_6_offset>0){P3_6 = 0; N3_6 = Vth3_6_offset;} else{P3_6 = -Vth3_6_offset; N3_6 = 0;}

// 	//configure 6 beats (serial) to complete all offset calibration for 1 time
// 	if (channel==1){
// 		spi_send(spi_base_addr,3 , 0xffff - (N3_6%2*32768 + N3_5*4096 + N3_4*512 + N3_3*64 + N3_2*8 + N3_1));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N3_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+N3_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N3_6/2));
	
// 		spi_send(spi_base_addr,3 , 0xffff - (P3_6%2*32768 + P3_5*4096 + P3_4*512 + P3_3*64 + P3_2*8 + P3_1));//CMP_SR[15 :0  ]
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P3_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+P3_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P3_6/2));
	
// 		spi_send(spi_base_addr,3 , 0xffff - (N2_6%2*32768 + N2_5*4096 + N2_4*512 + N2_3*64 + N2_2*8 + N2_1));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N2_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+N2_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N2_6/2));
	
// 		spi_send(spi_base_addr,3 , 0xffff - (P2_6%2*32768 + P2_5*4096 + P2_4*512 + P2_3*64 + P2_2*8 + P2_1));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P2_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+P2_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P2_6/2));
	
// 		spi_send(spi_base_addr,3 , 0xffff - (N1_6%2*32768 + N1_5*4096 + N1_4*512 + N1_3*64 + N1_2*8 + N1_1));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N1_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+N1_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+N1_6/2));
	
// 		spi_send(spi_base_addr,3 , 0xffff - (P1_6%2*32768 + P1_5*4096 + P1_4*512 + P1_3*64 + P1_2*8 + P1_1));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P1_6/2));
// 		spi_send(spi_base_addr,4 , 0xffff - (8+4+P1_6/2)); //rising edge
// 		spi_send(spi_base_addr,4 , 0xffff - (8+P1_6/2));
// 	}
// 	else if (channel==2){
// 		spi_send(spi_base_addr,5 , 0xffff - (N3_4*512 + N3_3*64 + N3_2*8 + N3_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N3_6*8+N3_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ N3_6*8 + N3_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N3_6*8+N3_5));

// 		spi_send(spi_base_addr,5 , 0xffff - (P3_4*512 + P3_3*64 + P3_2*8 + P3_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P3_6*8+P3_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ P3_6*8 + P3_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P3_6*8+P3_5));

// 		spi_send(spi_base_addr,5 , 0xffff - (N2_4*512 + N2_3*64 + N2_2*8 + N2_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N2_6*8+N2_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ N2_6*8 + N2_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N2_6*8+N2_5));

// 		spi_send(spi_base_addr,5 , 0xffff - (P2_4*512 + P2_3*64 + P2_2*8 + P2_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P2_6*8+P2_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ P2_6*8 + P2_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P2_6*8+P2_5));

// 		spi_send(spi_base_addr,5 , 0xffff - (N1_4*512 + N1_3*64 + N1_2*8 + N1_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N1_6*8+N1_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ N1_6*8 + N1_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+N1_6*8+N1_5));

// 		spi_send(spi_base_addr,5 , 0xffff - (P1_4*512 + P1_3*64 + P1_2*8 + P1_1)*16);
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P1_6*8+P1_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+64+ P1_6*8 + P1_5));
// 		spi_send(spi_base_addr,6 , 0xffff - (128+P1_6*8+P1_5));
// 	}
// 	else if (channel==3){
// 		spi_send(spi_base_addr,7 , 0xffff - (N3_3%4*64 + N3_2*8 + N3_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+N3_6*128+N3_5*16+N3_4*2 + N3_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N3_6*128+N3_5*16+N3_4*2 + N3_3/4));
	
// 		spi_send(spi_base_addr,7 , 0xffff - (P3_3%4*64 + P3_2*8 + P3_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+P3_6*128+P3_5*16+P3_4*2 + P3_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P3_6*128+P3_5*16+P3_4*2 + P3_3/4));
	
// 		spi_send(spi_base_addr,7 , 0xffff - (N2_3%4*64 + N2_2*8 + N2_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+N2_6*128+N2_5*16+N2_4*2 + N2_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N2_6*128+N2_5*16+N2_4*2 + N2_3/4));
	
// 		spi_send(spi_base_addr,7 , 0xffff - (P2_3%4*64 + P2_2*8 + P2_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+P2_6*128+P2_5*16+P2_4*2 + P2_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P2_6*128+P2_5*16+P2_4*2 + P2_3/4));
	
// 		spi_send(spi_base_addr,7 , 0xffff - (N1_3%4*64 + N1_2*8 + N1_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+N1_6*128+N1_5*16+N1_4*2 + N1_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+N1_6*128+N1_5*16+N1_4*2 + N1_3/4));
	
// 		spi_send(spi_base_addr,7 , 0xffff - (P1_3%4*64 + P1_2*8 + P1_1)*256);
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+1024+P1_6*128+P1_5*16+P1_4*2 + P1_3/4)); //rising edge
// 		spi_send(spi_base_addr,8 , 0xffff - (2048+P1_6*128+P1_5*16+P1_4*2 + P1_3/4));
// 	}
// 	else if (channel==4){
// 		spi_send(spi_base_addr,9 , 0xffff - (N3_2%2*8 + N3_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N3_6*2048+N3_5*256+N3_4*32+N3_3*4+N3_2/2));

// 		spi_send(spi_base_addr,9 , 0xffff - (P3_2%2*8 + P3_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P3_6*2048+P3_5*256+P3_4*32+P3_3*4+P3_2/2));

// 		spi_send(spi_base_addr,9 , 0xffff - (N2_2%2*8 + N2_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N2_6*2048+N2_5*256+N2_4*32+N2_3*4+N2_2/2));

// 		spi_send(spi_base_addr,9 , 0xffff - (P2_2%2*8 + P2_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P2_6*2048+P2_5*256+P2_4*32+P2_3*4+P2_2/2));

// 		spi_send(spi_base_addr,9 , 0xffff - (N1_2%2*8 + N1_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+N1_6*2048+N1_5*256+N1_4*32+N1_3*4+N1_2/2));

// 		spi_send(spi_base_addr,9 , 0xffff - (P1_2%2*8 + P1_1)*4096);
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+16384+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
// 		spi_send(spi_base_addr,10, 0xffff - (32768+P1_6*2048+P1_5*256+P1_4*32+P1_3*4+P1_2/2));
// 	}
// }
