#include "IC_define.h"

void LMK04828_RST_N()
{
	XGpio_WriteReg(XPAR_LMK04828_GPO_BASEADDR, 1, 0x0);
	delay_100ms();
	XGpio_WriteReg(XPAR_LMK04828_GPO_BASEADDR, 1, 0x1);
	delay_100ms();
	XGpio_WriteReg(XPAR_LMK04828_GPO_BASEADDR, 1, 0x0);
	delay_100ms();
}

void lmk04828_sync_n()
{
	XGpio_WriteReg(XPAR_LMK04828_SYNC_BASEADDR, 1, 0x0);
	delay_100ms();
	XGpio_WriteReg(XPAR_LMK04828_SYNC_BASEADDR, 1, 0x1);
	delay_100ms();
	XGpio_WriteReg(XPAR_LMK04828_SYNC_BASEADDR, 1, 0x0);
	delay_100ms();

}

//------------------------------AD1




void lmk04828_cfg(XSpi spi , int device , u32 *lmk04828_REG_BUFFER , u32 lmk04828_REG_BUFFER_SIZE)
{
	int i=0;
	u32 CFG_data;
	u8  CFG_byte1;
	u8  CFG_byte2;
	u8  CFG_byte3;

	u8	addr_h;
	u8	addr_l;

	unsigned char send_data[3];
	unsigned char recv_data[3];
	u32 temp[128];
    	spi_Initialize(&spi,device);

		for(i=0;i<lmk04828_REG_BUFFER_SIZE;i++)
		{
			CFG_data  = lmk04828_REG_BUFFER[i];

			CFG_byte1 = CFG_data & 0x000000ff;
			CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
			CFG_byte3 = ( CFG_data >> 16 )& 0x000000ff;

			send_data[0] = CFG_byte3;
			send_data[1] = CFG_byte2;
			send_data[2] = CFG_byte1;

			spi_transfer(&spi, send_data, NULL, 0x3);
			delay_10ms();
		}

		for(i=0;i<lmk04828_REG_BUFFER_SIZE;i++)
		{
			CFG_data  = lmk04828_REG_BUFFER[i];
		    CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
			CFG_byte3 = ( CFG_data >> 16 )& 0x000000ff;

			addr_h    = CFG_byte3;
			addr_l    = CFG_byte2;

			CFG_byte3 = CFG_byte3 | 0x80;
			send_data[0] = CFG_byte3;
			send_data[1] = CFG_byte2;
			send_data[2] = 0x0;

			spi_transfer(&spi, send_data, recv_data, 0x3);

			temp[i] = ((addr_h << 16) & 0xFF0000) + ((addr_l << 8) & 0x00FF00) + recv_data[2];
			delay_10ms();
		}






}

