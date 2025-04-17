/*
 * lmx2592.c
 *
 *  Created on: 2018年9月26日
 *      Author: Administrator
 */
#include "IC_define.h"

u32 AD_LMX2592_REG_BUFFER[AD_LMX2592_REG_BUFFER_SIZE]=
{

		//下述为ad2592为2240M，且输入时钟为105M的寄存器结果
//		0x002216, ////RESET                 //
//		0x002214,    //                           //
//		0x460000,    //R69
//		0x450000,    //R69
//		0x440089,    //R68
//		0x400077,    //R64
//		0x3E0000,    //R62
//		0x3D0001,    //R61
//		0x3B0000,    //R59
//		0x3003FC,    //R48
//		0x2F00F0,    //R47  PLL模块的Power(A) = 48
//		0x2E3023,    //R46  PLL模块的Power(B) = 48 Output Distribution中的OUTA_PD和OUTB_PD灭掉
//
//		0x2D0000,    //R45
//
//		0x2C0000,    //R44
//		0x2B0000,    //R43
//		0x2A0000,    //R42
//		0x2903E8,    //R41
//		0x280000,    //R40
//		0x278204,    //R39
//
//		0x260040,    //R38  0x260028
//
//		0x254000,    //R37
//		0x240C10,    //R36  PLL模块的 SEG3=- Channel Divider MUX = SEG1
//		0x23001F,    //R35  PLL模块的 SEG1=/2 SEG2 = -
//		0x22C3EA,    //R34
//		0x212A0A,    //R33
//		0x20210A,    //R32
//		0x1F0601,    //R31
//		0x1E0034,    //R30
//		0x1D0084,    //R29
//		0x1C2924,    //R28
//		0x190000,    //R25
//		0x180509,    //R24
//		0x178842,    //R23
//		0x162300,    //R22
//		0x14012C,    //R20
//		0x130965,    //R19
//		0x0E0420,    //R14 PLL模块的Charge Pump Gain=2.5mA
//		0x0D4000,    //R13
//		0x0C7001,    //R12   0x0C7001
//		0x0B0018,    //R11
//		0x0A10D8,    //R10
//		0x090302,    //R9
//		0x081084,    //R8
//		0x0728B2,    //R7
//		0x041943,    //R4 PLL模块 ACAL_CMP_DLY=25
//		0x020500,    //R2
//		0x010808,    //R1
//		0x00221C     //R0
//



		//下述为常规情况下可调通的AD2592配置程序  2.0G或2.4G情况下 时钟输入是100M
		0x002216, ////RESET                 //
		0x002214,    //                           //
		0x460000,    //R69
		0x450000,    //R69
		0x440089,    //R68
		0x400077,    //R64
		0x3E0000,    //R62
		0x3D0001,    //R61
		0x3B0000,    //R59
		0x3003FC,    //R48
		0x2F00F0,    //R47  PLL模块的Power(A) = 48
		0x2E3023,    //R46  PLL模块的Power(B) = 48 Output Distribution中的OUTA_PD和OUTB_PD灭掉
		0x2D0000,    //R45
		0x2C0000,    //R44
		0x2B0000,    //R43
		0x2A0000,    //R42
		0x2903E8,    //R41
		0x280000,    //R40
		0x278204,    //R39
		0x260028,    //R38  0x260028为2.0G   30为2.4G
		0x254000,    //R37
		0x240C10,    //R36  PLL模块的 SEG3=- Channel Divider MUX = SEG1
		0x23001B,    //R35  PLL模块的 SEG1=/2 SEG2 = -
		0x22C3EA,    //R34
		0x212A0A,    //R33
		0x20210A,    //R32
		0x1F0601,    //R31
		0x1E0034,    //R30
		0x1D0084,    //R29
		0x1C2924,    //R28
		0x190000,    //R25
		0x180509,    //R24
		0x178842,    //R23
		0x162300,    //R22
		0x14012C,    //R20
		0x130965,    //R19
		0x0E0420,    //R14 PLL模块的Charge Pump Gain=2.5mA
		0x0D4000,    //R13
		0x0C7001,    //R12   0x0C7001
		0x0B0018,    //R11
		0x0A10D8,    //R10
		0x090302,    //R9
		0x081084,    //R8
		0x0728B2,    //R7
		0x041943,    //R4 PLL模块 ACAL_CMP_DLY=25
		0x020500,    //R2
		0x010808,    //R1
		0x00221C     //R0


};

u32 DAC_LMX2592_REG_BUFFER[DAC_LMX2592_REG_BUFFER_SIZE]=
{

//下述为2592 4.8G情况下的寄存器参数，同时2592的输入时钟为100MHz情况
//		0x002216, ////RESET                 //
//		0x002214,                           //
//		0x460000,
//		0x450000,
//		0x440089,
//		0x400077,
//		0x3E0000,
//		0x3D0001,
//		0x3B0000,
//		0x3003FD,
//		0x2F08F0,
//		0x2E3023,
//		0x2D0000,
//		0x2C0000,
//		0x2B0000,
//		0x2A0000,
//		0x2903E8,
//		0x280000,
//		0x278204,
//
//		0x260030,//0x260028 old
//
//		0x254000,
//		0x240000,
//		0x230019,
//		0x22C3EA,
//		0x212A0A,
//		0x20210A,
//		0x1F0001,
//		0x1E0034,
//		0x1D0084,
//		0x1C2924,
//		0x190000,
//		0x180509,
//		0x178842,
//		0x162300,
//		0x14012C,
//		0x130965,
//		0x0E018c,
//		0x0D4000,
//		0x0C7001,
//		0x0B0018,
//		0x0A10D8,
//		0x090302,
//		0x081084,
//		0x0728B2,
//		0x041943,
//		0x020500,
//		0x010808,
//		0x00221C
//		//----------------------------------------------//








		0x002216, ////RESET                 //
		0x002214,  //                                           //
		0x460000,  // R70
		0x450000,  // R69
		0x440089,  // R68
		0x400077,  // R64
		0x3E0000,  // R62
		0x3D0001,  // R61
		0x3B0000,  // R59
		0x3003FD,//// R48	 这两个用于输出模式为VCO还是CHDIV，如果是VCO则频率翻倍
		0x2F08F0,//// R47	 这两个用于输出模式为VCO还是CHDIV，如果是VCO则频率翻倍
		0x2E3023,  // R46
		0x2D0000,  // R45
		0x2C0000,  // R44
		0x2B0000,  // R43
		0x2A0000,  // R42
		0x2903E8,  // R41
		0x280000,  // R40
		0x278204,  // R39
		0x260030,  // R38	  N Divider 专门用于修改频率 0028为4G
		0x254000,  // R37
		0x240000,  // R36	R35+R36表明拿VCO输出的频率
		0x230019,  // R35
		0x22C3EA,  // R34
		0x212A0A,  // R33
		0x20210A,  // R32
		0x1F0001,  // R31	PLL模块的 CHDIV_DIST_PD
		0x1E0034,  // R30
		0x1D0084,  // R29
		0x1C2924,  // R28
		0x190000,  // R25
		0x180509,  // R24
		0x178842,  // R23
		0x162300,  // R22
		0x14012C,  // R20
		0x130965,  // R19
		0x0E018c,  // R14	PLL模块的Charge Pump Gain=0.468mA
		0x0D4000,  // R13
		0x0C7001,  // R12
		0x0B0018,  // R11
		0x0A10D8,  // R10
		0x090302,  // R9
		0x081084,  // R8
		0x0728B2,  // R7
		0x041943,  // R4
		0x020500,  // R2
		0x010808,  // R1
		0x00221C   // R0
		







};

void LMX2592_cfg(XSpi spi , int device , u32 *lmx2592_REG_BUFFER , u32 lmx2592_REG_BUFFER_SIZE)
{
	int i=0;
		u32 CFG_data;
		u8  CFG_byte1;
		u8  CFG_byte2;
		u8  CFG_byte3;

		//u8	addr_h;
		//u8	addr_l;

		unsigned char send_data[3];
		//unsigned char recv_data[3];
		//u32 temp[128];
	    	spi_Initialize(&spi,device);

			for(i=0;i<lmx2592_REG_BUFFER_SIZE;i++)
			{
				CFG_data  = lmx2592_REG_BUFFER[i];

				CFG_byte1 = CFG_data & 0x000000ff;
				CFG_byte2 = ( CFG_data >> 8)& 0x000000ff;
				CFG_byte3 = ( CFG_data >> 16 )& 0x000000ff;

				send_data[0] = CFG_byte3;
				send_data[1] = CFG_byte2;
				send_data[2] = CFG_byte1;

				spi_transfer(&spi, send_data, NULL, 0x3);
				delay_10ms();
			}

			/*
			for(i=0;i<lmx2592_REG_BUFFER_SIZE;i++)
			{
				CFG_data  = lmx2592_REG_BUFFER[i];
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
			}*/
}

