#include "IC_define.h"

void ada16d6000_1_RST_N()
{
	XGpio_WriteReg(XPAR_ADA16D6000_1_RST_BASEADDR, 1, 0x0);
	delay_100ms();
	XGpio_WriteReg(XPAR_ADA16D6000_1_RST_BASEADDR, 1, 0x1);
	delay_100ms();
	XGpio_WriteReg(XPAR_ADA16D6000_1_RST_BASEADDR, 1, 0x0);
	delay_100ms();
}


//
//void ada16d6000_cfg(XSpi *mySpi , int DEVICE_ID,int ada16d6000_1_REG_BUFFER_SIZE,long long int  *ada16d6000_1_REG_BUFFER )
//{
//	int i=0;
//	//u32 CFG_data;
//	long long int CFG_data;
//	u8  CFG_byte1;
//	u8  CFG_byte2;
//	u8  CFG_byte3;
//	u8  CFG_byte4;
//	u8  CFG_byte5;
//
//	u8	addr_h;
//	u8	addr_z;
//	u8	addr_l;
//
//	u8 send_data[5];
//	u8 recv_data[5];
//	long long int temp[128];
////    	spi_Initialize(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID);
//    	spi_Initialize(mySpi,DEVICE_ID);
//		for(i=0;i<ada16d6000_1_REG_BUFFER_SIZE;i++)
//		{
//			CFG_data  = ada16d6000_1_REG_BUFFER[i];
//
//			//CFG_byte1 = CFG_data & 0x000000ff;
//			//CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
//			//CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
//			//CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
//			//CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;
//
//			CFG_byte1 = ada16d6000_1_REG_BUFFER[i] & 0x000000ff;
//			CFG_byte2 = ( ada16d6000_1_REG_BUFFER[i] >> 8)& 0x000000ff;
//			CFG_byte3 = ( ada16d6000_1_REG_BUFFER[i] >> 16)& 0x000000ff;
//			CFG_byte4 = ( ada16d6000_1_REG_BUFFER[i] >> 24)& 0x000000ff;
//			CFG_byte5 = ( ada16d6000_1_REG_BUFFER[i] >> 32)& 0x000000ff;
//
//			send_data[0] = CFG_byte5;
//			send_data[1] = CFG_byte4;
//			send_data[2] = CFG_byte3;
//			send_data[3] = CFG_byte2;
//			send_data[4] = CFG_byte1;
//
////			spi_transfer(&ada16d6000_1_SPI, send_data, NULL, 0x3);
//			spi_transfer(mySpi, send_data, NULL, 0x5);
//
//			delay_10ms();
//		}
//#if 0
//		for(i=0;i<ada16d6000_1_REG_BUFFER_SIZE;i++)
//		{
//			CFG_data  = ada16d6000_1_REG_BUFFER[i];
//			CFG_byte1 = CFG_data & 0x000000ff;
//			CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
//			CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
//			CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
//			CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;
//
//			addr_h    = CFG_byte5;
//			addr_z	  = CFG_byte4;
//			addr_l    = CFG_byte3;
//
//			CFG_byte5 = CFG_byte5 & 0xf7;
//			send_data[0] = CFG_byte5;
//			send_data[1] = CFG_byte4;
//			send_data[2] = CFG_byte3;
//			send_data[3] = 0;
//			send_data[4] = 0;
//			//send_data[2] = 0x0;
//
//			spi_transfer(mySpi, send_data, recv_data, 0x5);
//
//			temp[i] = ((addr_h << 32) & 0xFF00000000) +((addr_z << 24) & 0x00FF000000) + ((addr_l << 16) & 0x0000FF0000) + ((recv_data[3]<<8) & 0x000000ff00) + (recv_data[4] & 0x00000000ff) ;
//			delay_10ms();
//		}
//#endif
//}
//
//void ada16d6000_cfg_readback(XSpi *mySpi , int DEVICE_ID,long long int temp[128] )
//{
//	int i=0;
//	//u32 CFG_data;
//	long long int CFG_data;
//	u8  CFG_byte1;
//	u8  CFG_byte2;
//	u8  CFG_byte3;
//	u8  CFG_byte4;
//	u8  CFG_byte5;
//
//	u8	addr_h;
//	u8	addr_z;
//	u8	addr_l;
//
//	u8 send_data[5];
//	u8 recv_data[5];
//	//long long int temp[128];
////    	spi_Initialize(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID);
//    	spi_Initialize(mySpi,DEVICE_ID);
//
//			CFG_data  = 0x0202600000;
//			CFG_byte1 = CFG_data & 0x000000ff;
//			CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
//			CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
//			CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
//			CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;
//
//			addr_h    = CFG_byte5;
//			addr_z	  = CFG_byte4;
//			addr_l    = CFG_byte3;
//
//			CFG_byte5 = CFG_byte5 & 0xf7;
//			send_data[0] = CFG_byte5;
//			send_data[1] = CFG_byte4;
//			send_data[2] = CFG_byte3;
//			send_data[3] = 0;
//			send_data[4] = 0;
//			//send_data[2] = 0x0;
//
//			spi_transfer(mySpi, send_data, recv_data, 0x5);
//
//			temp[i] = ((addr_h << 32) & 0xFF00000000) +((addr_z << 24) & 0x00FF000000) + ((addr_l << 16) & 0x0000FF0000) + ((recv_data[3]<<8) & 0x000000ff00) + (recv_data[4] & 0x00000000ff) ;
//			delay_10ms();
//
//}





void ada16d6000_cfg(XSpi *mySpi , int DEVICE_ID,int ada16d6000_1_REG_BUFFER_SIZE,long long int  *ada16d6000_1_REG_BUFFER )
{
	int i=0;
	//u32 CFG_data;
	long long int CFG_data;
	u8  CFG_byte1;
	u8  CFG_byte2;
	u8  CFG_byte3;
	u8  CFG_byte4;
	u8  CFG_byte5;

	u8	addr_h;
	u8	addr_z;
	u8	addr_l;

	u8 send_data[5];
	u8 recv_data[5];
	long long int temp[128];
//    	spi_Initialize(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID);
    	spi_Initialize(mySpi,DEVICE_ID);
		for(i=0;i<ada16d6000_1_REG_BUFFER_SIZE;i++)
		{
			CFG_data  = ada16d6000_1_REG_BUFFER[i];

			//CFG_byte1 = CFG_data & 0x000000ff;
			//CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
			//CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
			//CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
			//CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;

			CFG_byte1 = ada16d6000_1_REG_BUFFER[i] & 0x000000ff;
			CFG_byte2 = ( ada16d6000_1_REG_BUFFER[i] >> 8)& 0x000000ff;
			CFG_byte3 = ( ada16d6000_1_REG_BUFFER[i] >> 16)& 0x000000ff;
			CFG_byte4 = ( ada16d6000_1_REG_BUFFER[i] >> 24)& 0x000000ff;
			CFG_byte5 = ( ada16d6000_1_REG_BUFFER[i] >> 32)& 0x000000ff;

			send_data[0] = CFG_byte5;
			send_data[1] = CFG_byte4;
			send_data[2] = CFG_byte3;
			send_data[3] = CFG_byte2;
			send_data[4] = CFG_byte1;

//			spi_transfer(&ada16d6000_1_SPI, send_data, NULL, 0x3);
			spi_transfer(mySpi, send_data, NULL, 0x5);

			delay_10ms();
		}
#if 0
		for(i=0;i<ada16d6000_1_REG_BUFFER_SIZE;i++)
		{
			CFG_data  = ada16d6000_1_REG_BUFFER[i];
			CFG_byte1 = CFG_data & 0x000000ff;
			CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
			CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
			CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
			CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;

			addr_h    = CFG_byte5;
			addr_z	  = CFG_byte4;
			addr_l    = CFG_byte3;

			CFG_byte5 = CFG_byte5 & 0xf7;
			send_data[0] = CFG_byte5;
			send_data[1] = CFG_byte4;
			send_data[2] = CFG_byte3;
			send_data[3] = 0;
			send_data[4] = 0;
			//send_data[2] = 0x0;

			spi_transfer(mySpi, send_data, recv_data, 0x5);

			temp[i] = ((addr_h << 32) & 0xFF00000000) +((addr_z << 24) & 0x00FF000000) + ((addr_l << 16) & 0x0000FF0000) + ((recv_data[3]<<8) & 0x000000ff00) + (recv_data[4] & 0x00000000ff) ;
			delay_10ms();
		}
#endif
}

void ada16d6000_cfg_readback(XSpi *mySpi , int DEVICE_ID,long long int temp[128] )
{
	int i=0;
	//u32 CFG_data;
	long long int CFG_data;
	u8  CFG_byte1;
	u8  CFG_byte2;
	u8  CFG_byte3;
	u8  CFG_byte4;
	u8  CFG_byte5;

	u8	addr_h;
	u8	addr_z;
	u8	addr_l;

	u8 send_data[5];
	u8 recv_data[5];
	//long long int temp[128];
//    	spi_Initialize(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID);
    	spi_Initialize(mySpi,DEVICE_ID);

			CFG_data  = 0x0202600000;
			CFG_byte1 = CFG_data & 0x000000ff;
			CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
			CFG_byte3 = ( CFG_data >> 16)& 0x000000ff;
			CFG_byte4 = ( CFG_data >> 24)& 0x000000ff;
			CFG_byte5 = ( CFG_data >> 32)& 0x000000ff;

			addr_h    = CFG_byte5;
			addr_z	  = CFG_byte4;
			addr_l    = CFG_byte3;

			CFG_byte5 = CFG_byte5 & 0xf7;
			send_data[0] = CFG_byte5;
			send_data[1] = CFG_byte4;
			send_data[2] = CFG_byte3;
			send_data[3] = 0;
			send_data[4] = 0;
			//send_data[2] = 0x0;

			spi_transfer(mySpi, send_data, recv_data, 0x5);

			temp[i] = ((addr_h << 32) & 0xFF00000000) +((addr_z << 24) & 0x00FF000000) + ((addr_l << 16) & 0x0000FF0000) + ((recv_data[3]<<8) & 0x000000ff00) + (recv_data[4] & 0x00000000ff) ;
			delay_10ms();

}
