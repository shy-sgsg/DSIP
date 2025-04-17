/*
  2020.11.30
  for 3G12bit ADC (double lane edition) tape out
  do not differ NZ of input signal in terms of eFuse configuration
*/
//read from chip -> spi_send
//write to  chip -> spi_recv
#include"stdlib.h"
#include"xparameters.h"
#include"xil_types.h"
#include"spi.h"
#include"ctrl_204b.h"
#include "IC_define.h"

//该程序是YTH2_ADDA的

int main()
{
	//	u16 chipID = spi_recv(spi_base_addr, 0x0000);

	int	LMK04828_2_ld	;
	int adc_sync , dac_status		;
	int cnt = 2 ;

	//************************************
	//  AD9176_lmk04828
	//************************************

		XGpio_WriteReg(XPAR_LMK04828_SWITCH_BASEADDR, 1, 0x1);
		XGpio_WriteReg(XPAR_CONFIG_DONE_BASEADDR,1,0x0);
		delay_10ms();

//		lmk04828_sync_n();
		LMK04828_2_ld = 0;
		do
			{
		//----------------------lmk04828 	复位
		LMK04828_RST_N();
		delay_1ms();
//		led_fast_glitter();
	//----------------------第一步                            	设置时钟输出
		lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_1 ,lmk04828_REG_BUFFER_SIZE_1);
	 	delay_1ms();
//		led_fast_glitter();
	 	//----------------------第二步                             sysref上电   准备SYNC

	 	//	 	led_fast_glitter();
		lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_2 ,lmk04828_REG_BUFFER_SIZE_2);
	 	delay_1ms();
//		led_fast_glitter();
	//----------------------第三步                            复位 sysref
		lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_3 ,lmk04828_REG_BUFFER_SIZE_3);
	 	delay_1ms();
//		led_fast_glitter();
	//----------------------第四步                            SYNC
	 	lmk04828_sync_n();
	 	delay_1ms();

	//----------------------第五步                            	将SYNC通路去复位使能
		lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_5 ,lmk04828_REG_BUFFER_SIZE_5);
		delay_1ms();
//	 	led_fast_glitter();
	//----------------------第六步                            	配置SYSREF    为连续输出
//		lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_6 ,lmk04828_REG_BUFFER_SIZE_6);
//		delay_1ms();

		LMK04828_2_ld = XGpio_ReadReg(XPAR_LMK04828_LD_BASEADDR,1);
		delay_1ms();
		}
	while(LMK04828_2_ld == 0);
		delay_1ms();
		delay_1ms();
	//************************************
	//ADC LMX2592
	//************************************
		LMX2592_cfg(ADC_LMX2592_SPI , XPAR_ADC_LMX2592_DEVICE_ID , AD_LMX2592_REG_BUFFER ,AD_LMX2592_REG_BUFFER_SIZE);
		delay_1ms();

		LMX2592_cfg (DAC_LMX2592_SPI,XPAR_DAC_LMX2592_DEVICE_ID,DAC_LMX2592_REG_BUFFER,DAC_LMX2592_REG_BUFFER_SIZE);
		delay_1ms();


		XGpio_WriteReg(XPAR_LMK04828_SWITCH_BASEADDR, 1, 0x0);
		delay_10ms();

    do{


    	XGpio_WriteReg(XPAR_CONFIG_DONE_BASEADDR,1,0x1);

    	lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_7 ,lmk04828_REG_BUFFER_SIZE_7);

    	delay_1ms();
    	XGpio_WriteReg(XPAR_SYSREF_DIV_BASEADDR, 1, 0x40);
    	delay_1ms();
    	XGpio_WriteReg(XPAR_SYSREF_NUM_BASEADDR, 1, 0x07);
    	delay_100ms();
    	jesd_rst_p();
    	delay_1ms();
    	jesd_sysrsf_rst();

	    //------------da_1------------------------------------------------------
	    	ada16d6000_1_RST_N();
	    	delay_10ms();
	    	ada16d6000_cfg(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID,ada16d6000_1_REG_BUFFER_SIZE_1,&ada16d6000_1_REG_BUFFER_1);
	    	delay_10ms();
	    	//jesd_sysrsf_rst();
	    	delay_10ms();
	    	//jesd_sysrsf_rst();
	    	delay_10ms();

	    	ada16d6000_cfg(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID,ada16d6000_1_REG_BUFFER_SIZE_2,&ada16d6000_1_REG_BUFFER_2);
	    	delay_100ms();

	    	delay_10ms();
	    	jesd_sysrsf_rst();
	    	//jesd_rst_p();
	    	delay_10ms();
	    	//ada16d6000_cfg_readback(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID,temp);
	    	ada16d6000_cfg(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID,ada16d6000_1_REG_BUFFER_SIZE_3,&ada16d6000_1_REG_BUFFER_3);
	    	delay_10ms();
	    	jesd_sysrsf_rst();

	    	dac_status = XGpio_ReadReg(XPAR_DAC_STATUS_BASEADDR,1);
	    	if(dac_status == 1){
	    		jesd_sysrsf_rst();
	    		delay_10ms();

	    	 }
	    	cnt = cnt - 1;
	    	}
	    	while(cnt != 0);
	    	XGpio_WriteReg(XPAR_CONFIG_DONE_BASEADDR,1,0x0);
	    	delay_1ms();
	    	lmk04828_cfg(LMK04828_SPI ,XPAR_LMK04828_SPI_DEVICE_ID ,lmk04828_REG_BUFFER_8 ,lmk04828_REG_BUFFER_SIZE_8);
	    	delay_1ms();


			aad12d2000_cfg();

	    	delay_100ms();

//    	jesd_sysrsf_rst();
//    	delay_10ms();
    	//ada16d6000_cfg(&ada16d6000_1_SPI,XPAR_ADA16D6000_1_DEVICE_ID,ada16d6000_1_REG_BUFFER_SIZE_3,&ada16d6000_1_REG_BUFFER_3);

    	//jesd_rst_p();


//	while(TI_cal_auto_key)
//	{
// 		read_FPGA_reg();
//	}

}


