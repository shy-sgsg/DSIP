#include "IC_define.h"

void delay_1ms()
{
	volatile int j;
	for(j=0;j<50000;j++);
}

void delay_10ms()
{
	volatile int j;
	for(j=0;j<100000;j++);
}

void delay_100ms()
{
	volatile int j;
	for(j=0;j<1000000;j++);
}
void delay_1s()
{
	volatile int j;
	for(j=0;j<10000000;j++);
}
void delay_3s()
{
	volatile int j;
	for(j=0;j<30000000;j++);
}

//void led_fast_glitter()
//{
//	XGpio_WriteReg(XPAR_EDK_LED_BASEADDR, 1, 0x1);
//	delay_100ms();
//	XGpio_WriteReg(XPAR_EDK_LED_BASEADDR, 1, 0x0);
//	delay_100ms();
//}
//
//void led_glitter()
//{
//	XGpio_WriteReg(XPAR_EDK_LED_BASEADDR, 1, 0x1);
//	delay_1s();
//	XGpio_WriteReg(XPAR_EDK_LED_BASEADDR, 1, 0x0);
//	delay_1s();
//}
//void jesd_rst_p()
//{
//	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x0);
//	delay_100ms();
//	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x1);
//	delay_100ms();
//	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x0);
//	delay_100ms();
//}
//
//void axi_cfg_rstn()
//{
//	XGpio_WriteReg(XPAR_AXI_CFG_RSTN_BASEADDR, 1, 0x1);
//	delay_100ms();
//	XGpio_WriteReg(XPAR_AXI_CFG_RSTN_BASEADDR, 1, 0x0);
//	delay_100ms();
//	XGpio_WriteReg(XPAR_AXI_CFG_RSTN_BASEADDR, 1, 0x1);
//	delay_100ms();
//}

void jesd_sysrsf_rst()
{
	XGpio_WriteReg(XPAR_JESD_SYSREF_RST_BASEADDR, 1, 0x1);
	delay_100ms();
	XGpio_WriteReg(XPAR_JESD_SYSREF_RST_BASEADDR, 1, 0x0);
	delay_100ms();
}

void jesd_rst_p()
{
	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x0);
	delay_100ms();
	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x1);
	delay_100ms();
	XGpio_WriteReg(XPAR_JESD_RST_P_BASEADDR, 1, 0x0);
	delay_100ms();
}
