//
//#include"stdlib.h"
//#include"xparameters.h"
//#include"xil_types.h"
//#include"spi.h"
//#include"ctrl_204b.h"
//#include"offset_cal.h"
//#include"control_efuse.h"
//#include "sleep.h"
//#include "IC_define.h"
//
//volatile u32 spi_base_addr  = XPAR_AXI_LITE_SPI_0_BASEADDR;
//volatile u32 ctrl_204b_addr = XPAR_CTRL_204B_0_BASEADDR;
//void aad12d2000_cfg()
//{
//u16 NO1_ADC1_o_mis1_o_out;
//u16 NO1_ADC1_o_mis2_o_out;
//u16 NO1_ADC1_o_mis3_o_out;
//u16 NO1_ADC1_o_mis4_o_out;
//u16 NO1_ADC1_g_mis2_o_out;
//u16 NO1_ADC1_g_mis3_o_out;
//u16 NO1_ADC1_g_mis4_o_out;
//u16 NO1_ADC1_t_mis1_o_out;
//u16 NO1_ADC1_t_mis2_o_out;
//u16 NO1_ADC1_t_mis3_o_out;
//u16 NO1_ADC1_t_mis4_o_out;
//
//u16 NO1_ADC2_o_mis1_o_out;
//u16 NO1_ADC2_o_mis2_o_out;
//u16 NO1_ADC2_o_mis3_o_out;
//u16 NO1_ADC2_o_mis4_o_out;
//u16 NO1_ADC2_g_mis2_o_out;
//u16 NO1_ADC2_g_mis3_o_out;
//u16 NO1_ADC2_g_mis4_o_out;
//u16 NO1_ADC2_t_mis1_o_out;
//u16 NO1_ADC2_t_mis2_o_out;
//u16 NO1_ADC2_t_mis3_o_out;
//u16 NO1_ADC2_t_mis4_o_out;
//
//u16 NO2_ADC1_o_mis1_o_out;
//u16 NO2_ADC1_o_mis2_o_out;
//u16 NO2_ADC1_o_mis3_o_out;
//u16 NO2_ADC1_o_mis4_o_out;
//u16 NO2_ADC1_g_mis2_o_out;
//u16 NO2_ADC1_g_mis3_o_out;
//u16 NO2_ADC1_g_mis4_o_out;
//u16 NO2_ADC1_t_mis1_o_out;
//u16 NO2_ADC1_t_mis2_o_out;
//u16 NO2_ADC1_t_mis3_o_out;
//u16 NO2_ADC1_t_mis4_o_out;
//
//u16 NO2_ADC2_o_mis1_o_out;
//u16 NO2_ADC2_o_mis2_o_out;
//u16 NO2_ADC2_o_mis3_o_out;
//u16 NO2_ADC2_o_mis4_o_out;
//u16 NO2_ADC2_g_mis2_o_out;
//u16 NO2_ADC2_g_mis3_o_out;
//u16 NO2_ADC2_g_mis4_o_out;
//u16 NO2_ADC2_t_mis1_o_out;
//u16 NO2_ADC2_t_mis2_o_out;
//u16 NO2_ADC2_t_mis3_o_out;
//u16 NO2_ADC2_t_mis4_o_out;
//
//	//spi_send(spi_base_addr,21,0x0082);
//	//write_memory(ctrl_cal_addr+12,0x00);
//
//
//
//	spi_send(spi_base_addr, 0x8001, 0x0001);
//	spi_send(spi_base_addr, 0x8001, 0x0000);
//
//	usleep(10);
//
//
//	 u16 reg = 0;
//
//	 reg=spi_recv(spi_base_addr, 0x0016);
//	 reg=spi_recv(spi_base_addr, 0x0216);
//
//
//	spi_send(spi_base_addr, 0x8016, 0x0002);
//	spi_send(spi_base_addr, 0x8216, 0x0002);
//	usleep(1000);
//	//generate_sysref_req
//	set_sysref_num(ctrl_204b_addr, 16);
//	set_sysref_div_cfg(ctrl_204b_addr, 30);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	spi_send(spi_base_addr, 0x8016, 0x0000);
//	spi_send(spi_base_addr, 0x8216, 0x0000);
//	usleep(1000);
//
//
////	AAD12D2000_CONFIG_NO1(spi_base_addr ,ctrl_204b_addr);//U0 ADC2
//	AAD12D2000_CONFIG_NO2(spi_base_addr ,ctrl_204b_addr);//U1 ADC1
//	//reset_204b(XPAR_CTRL_204B_0_BASEADDR);
//	usleep(1000);
//	reset_204b(ctrl_204b_addr);
//	//generate_sysref_req(XPAR_CTRL_204B_0_BASEADDR);
//	set_sysref_num(ctrl_204b_addr, 16);
//	set_sysref_div_cfg(ctrl_204b_addr, 30);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	reset_sysref(ctrl_204b_addr);
//	usleep(1000);
//	while(1)
//	{
//		reset_sysref(ctrl_204b_addr);
//		usleep(1000);
//	}
//		//read_FPGA_reg();
//////		Read_MDAC_TEST();
//
////					NO1_ADC1_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 170);
////					NO1_ADC1_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 171);
////					NO1_ADC1_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 172);
////					NO1_ADC1_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 173);
////					NO1_ADC1_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 174);
////					NO1_ADC1_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 175);
////					NO1_ADC1_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 176);
////					NO1_ADC1_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 177);
////					NO1_ADC1_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 178);
////					NO1_ADC1_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 179);
////					NO1_ADC1_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 180);
////
////					NO1_ADC2_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 682);
////					NO1_ADC2_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 683);
////					NO1_ADC2_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 684);
////					NO1_ADC2_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 685);
////					NO1_ADC2_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 686);
////					NO1_ADC2_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 687);
////					NO1_ADC2_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 688);
////					NO1_ADC2_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 689);
////					NO1_ADC2_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 690);
////					NO1_ADC2_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 691);
////					NO1_ADC2_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 692);
////
////					NO2_ADC1_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 170);
////					NO2_ADC1_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 171);
////					NO2_ADC1_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 172);
////					NO2_ADC1_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 173);
////					NO2_ADC1_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 174);
////					NO2_ADC1_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 175);
////					NO2_ADC1_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 176);
////					NO2_ADC1_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 177);
////					NO2_ADC1_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 178);
////					NO2_ADC1_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 179);
////					NO2_ADC1_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 180);
////
////					NO2_ADC2_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 682);
////					NO2_ADC2_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 683);
////					NO2_ADC2_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 684);
////					NO2_ADC2_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 685);
////					NO2_ADC2_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 686);
////					NO2_ADC2_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 687);
////					NO2_ADC2_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 688);
////					NO2_ADC2_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 689);
////					NO2_ADC2_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 690);
////					NO2_ADC2_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 691);
////					NO2_ADC2_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 692);
//
//
//	//}
//}


#include"stdlib.h"
#include"xparameters.h"
#include"xil_types.h"
#include"spi.h"

#include "sleep.h"
#include"ctrl_204b.h"
//#include"offset_cal.h"
//#include"control_efuse.h"
//#include "sleep.h"
//#include "IC_define.h"
#include "adc_config_ADC1.h"
#include "adc_config_ADC2.h"
#include "adc_config_ADC3.h"
#include "adc_config_ADC4.h"

volatile u32 spi_base_addr  = XPAR_AXI_LITE_SPI_0_BASEADDR;
volatile u32 ctrl_204b_addr = XPAR_CTRL_204B_0_BASEADDR;

volatile u32 spi_base_addr_ad1  = XPAR_ADC1_SPI_BASEADDR;

volatile u32 spi_base_addr_ad2  = XPAR_ADC2_SPI_BASEADDR;

volatile u32 spi_base_addr_ad3  = XPAR_ADC3_SPI_BASEADDR;

void aad12d2000_cfg()
{
u16 NO1_ADC1_o_mis1_o_out;
u16 NO1_ADC1_o_mis2_o_out;
u16 NO1_ADC1_o_mis3_o_out;
u16 NO1_ADC1_o_mis4_o_out;
u16 NO1_ADC1_g_mis2_o_out;
u16 NO1_ADC1_g_mis3_o_out;
u16 NO1_ADC1_g_mis4_o_out;
u16 NO1_ADC1_t_mis1_o_out;
u16 NO1_ADC1_t_mis2_o_out;
u16 NO1_ADC1_t_mis3_o_out;
u16 NO1_ADC1_t_mis4_o_out;

u16 NO1_ADC2_o_mis1_o_out;
u16 NO1_ADC2_o_mis2_o_out;
u16 NO1_ADC2_o_mis3_o_out;
u16 NO1_ADC2_o_mis4_o_out;
u16 NO1_ADC2_g_mis2_o_out;
u16 NO1_ADC2_g_mis3_o_out;
u16 NO1_ADC2_g_mis4_o_out;
u16 NO1_ADC2_t_mis1_o_out;
u16 NO1_ADC2_t_mis2_o_out;
u16 NO1_ADC2_t_mis3_o_out;
u16 NO1_ADC2_t_mis4_o_out;

u16 NO2_ADC1_o_mis1_o_out;
u16 NO2_ADC1_o_mis2_o_out;
u16 NO2_ADC1_o_mis3_o_out;
u16 NO2_ADC1_o_mis4_o_out;
u16 NO2_ADC1_g_mis2_o_out;
u16 NO2_ADC1_g_mis3_o_out;
u16 NO2_ADC1_g_mis4_o_out;
u16 NO2_ADC1_t_mis1_o_out;
u16 NO2_ADC1_t_mis2_o_out;
u16 NO2_ADC1_t_mis3_o_out;
u16 NO2_ADC1_t_mis4_o_out;

u16 NO2_ADC2_o_mis1_o_out;
u16 NO2_ADC2_o_mis2_o_out;
u16 NO2_ADC2_o_mis3_o_out;
u16 NO2_ADC2_o_mis4_o_out;
u16 NO2_ADC2_g_mis2_o_out;
u16 NO2_ADC2_g_mis3_o_out;
u16 NO2_ADC2_g_mis4_o_out;
u16 NO2_ADC2_t_mis1_o_out;
u16 NO2_ADC2_t_mis2_o_out;
u16 NO2_ADC2_t_mis3_o_out;
u16 NO2_ADC2_t_mis4_o_out;

	//spi_send(spi_base_addr,21,0x0082);
	//write_memory(ctrl_cal_addr+12,0x00);



spi_send(spi_base_addr, 0x8001, 0x0001);
spi_send(spi_base_addr_ad1, 0x8001, 0x0001);
spi_send(spi_base_addr_ad2, 0x8001, 0x0001);
spi_send(spi_base_addr_ad3, 0x8001, 0x0001);
spi_send(spi_base_addr, 0x8001, 0x0000);
spi_send(spi_base_addr_ad1, 0x8001, 0x0000);
spi_send(spi_base_addr_ad2, 0x8001, 0x0000);
spi_send(spi_base_addr_ad3, 0x8001, 0x0000);

	usleep(10);


	 u16 reg = 0;

	 reg=spi_recv(spi_base_addr, 0x0016);
	 reg=spi_recv(spi_base_addr_ad1, 0x0016);
	 reg=spi_recv(spi_base_addr_ad2, 0x0016);
	 reg=spi_recv(spi_base_addr_ad3, 0x0016);


	 reg=spi_recv(spi_base_addr, 0x0216);
	 reg=spi_recv(spi_base_addr_ad1, 0x0216);
	 reg=spi_recv(spi_base_addr_ad2, 0x0216);
	 reg=spi_recv(spi_base_addr_ad3, 0x0216);


	spi_send(spi_base_addr, 0x8016, 0x0002);
	spi_send(spi_base_addr_ad1, 0x8016, 0x0002);
	spi_send(spi_base_addr_ad2, 0x8016, 0x0002);
	spi_send(spi_base_addr_ad3, 0x8016, 0x0002);

	spi_send(spi_base_addr, 0x8216, 0x0002);
	spi_send(spi_base_addr_ad1, 0x8216, 0x0002);
	spi_send(spi_base_addr_ad2, 0x8216, 0x0002);
	spi_send(spi_base_addr_ad3, 0x8216, 0x0002);
	usleep(1000);


	//generate_sysref_req  配置JESD204B同步信号
	set_sysref_num(ctrl_204b_addr, 16);
	set_sysref_div_cfg(ctrl_204b_addr, 30);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	spi_send(spi_base_addr, 0x8016, 0x0000);
	spi_send(spi_base_addr_ad1, 0x8016, 0x0000);
	spi_send(spi_base_addr_ad2, 0x8016, 0x0000);
	spi_send(spi_base_addr_ad3, 0x8016, 0x0000);
	spi_send(spi_base_addr, 0x8216, 0x0000);
	spi_send(spi_base_addr_ad1, 0x8216, 0x0000);
	spi_send(spi_base_addr_ad2, 0x8216, 0x0000);
	spi_send(spi_base_addr_ad3, 0x8216, 0x0000);
	usleep(1000);

	AAD12D2000_CONFIG_NO1(spi_base_addr ,ctrl_204b_addr);//U1 ADC1    进寄存器 讯芯部分额  J2 J4
	AAD12D2000_CONFIG_NO2(spi_base_addr_ad1 ,ctrl_204b_addr);//U1 ADC1 J6  J8
	AAD12D2000_CONFIG_NO3(spi_base_addr_ad2 ,ctrl_204b_addr);//U1 ADC1 J10 J12
	AAD12D2000_CONFIG_NO4(spi_base_addr_ad3 ,ctrl_204b_addr);//U1 ADC1 J14 J16

//	AAD12D2000_CONFIG_NO1(spi_base_addr ,ctrl_204b_addr);//U0 ADC2

	//reset_204b(XPAR_CTRL_204B_0_BASEADDR);
	usleep(1000);
	reset_204b(ctrl_204b_addr);
	//generate_sysref_req(XPAR_CTRL_204B_0_BASEADDR);
	set_sysref_num(ctrl_204b_addr, 16);
	set_sysref_div_cfg(ctrl_204b_addr, 30);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	reset_sysref(ctrl_204b_addr);
	usleep(1000);
	while(1)
	{
		reset_sysref(ctrl_204b_addr);
		usleep(1000);
	}
		//read_FPGA_reg();
////		Read_MDAC_TEST();

//					NO1_ADC1_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 170);
//					NO1_ADC1_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 171);
//					NO1_ADC1_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 172);
//					NO1_ADC1_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 173);
//					NO1_ADC1_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 174);
//					NO1_ADC1_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 175);
//					NO1_ADC1_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 176);
//					NO1_ADC1_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 177);
//					NO1_ADC1_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 178);
//					NO1_ADC1_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 179);
//					NO1_ADC1_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 180);
//
//					NO1_ADC2_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 682);
//					NO1_ADC2_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 683);
//					NO1_ADC2_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 684);
//					NO1_ADC2_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 685);
//					NO1_ADC2_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 686);
//					NO1_ADC2_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 687);
//					NO1_ADC2_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 688);
//					NO1_ADC2_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 689);
//					NO1_ADC2_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 690);
//					NO1_ADC2_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 691);
//					NO1_ADC2_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_0_BASEADDR, 692);
//
//					NO2_ADC1_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 170);
//					NO2_ADC1_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 171);
//					NO2_ADC1_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 172);
//					NO2_ADC1_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 173);
//					NO2_ADC1_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 174);
//					NO2_ADC1_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 175);
//					NO2_ADC1_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 176);
//					NO2_ADC1_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 177);
//					NO2_ADC1_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 178);
//					NO2_ADC1_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 179);
//					NO2_ADC1_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 180);
//
//					NO2_ADC2_o_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 682);
//					NO2_ADC2_o_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 683);
//					NO2_ADC2_o_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 684);
//					NO2_ADC2_o_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 685);
//					NO2_ADC2_g_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 686);
//					NO2_ADC2_g_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 687);
//					NO2_ADC2_g_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 688);
//					NO2_ADC2_t_mis1_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 689);
//					NO2_ADC2_t_mis2_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 690);
//					NO2_ADC2_t_mis3_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 691);
//					NO2_ADC2_t_mis4_o_out = spi_recv(XPAR_AXI_LITE_SPI_1_BASEADDR, 692);


	//}
}
