#include "xparameters.h"
#include "xgpio_l.h"
#include "xspi.h"
#include "xio.h"
#include "xstatus.h"
//************************************
//------delay
//************************************
void delay_1ms();
void delay_10ms();
void delay_100ms();
void delay_1s();
void delay_3s();
//************************************
//------led
//************************************
void led_glitter();
void led_fast_glitter();
//************************************
//------rst
//************************************

void jesd_rst_p();
void axi_cfg_rstn();
//************************************
//------spi
//************************************
int spi_Initialize (XSpi *mySpi , int DEVICE_ID);
int spi_transfer (XSpi *mySpi, unsigned char *send, unsigned char *recv, u32 num_bytes);




//************************************
//------lmk04828
//************************************
XSpi LMK04828_SPI;
void lmk04828_cfg();

u32  LMK04828_1_ld;
u32  LMK04828_2_ld;
#define LMK04828_REG_BUFFER_SIZE		113  //113

u32 LMK04828_REG_BUFFER[LMK04828_REG_BUFFER_SIZE];

void LMK04828_RST_N();
void lmk04828_sync_n();

void lmk04828_cfg_1();
void lmk04828_cfg_2();
void lmk04828_cfg_3();
void lmk04828_cfg_5();
void lmk04828_cfg_6();

//LMX2592


#define AD_LMX2592_REG_BUFFER_SIZE  48
u32  AD_LMX2592_REG_BUFFER[AD_LMX2592_REG_BUFFER_SIZE];


#define DAC_LMX2592_REG_BUFFER_SIZE  48
u32  DAC_LMX2592_REG_BUFFER[DAC_LMX2592_REG_BUFFER_SIZE];

XSpi ADC_LMX2592_SPI;
void LMX2592_cfg();


#define lmk04828_REG_BUFFER_SIZE_1		113
u32 lmk04828_REG_BUFFER_1[lmk04828_REG_BUFFER_SIZE_1];

#define lmk04828_REG_BUFFER_SIZE_2		2
u32 lmk04828_REG_BUFFER_2[lmk04828_REG_BUFFER_SIZE_2];

#define lmk04828_REG_BUFFER_SIZE_3		2
u32 lmk04828_REG_BUFFER_3[lmk04828_REG_BUFFER_SIZE_3];

#define lmk04828_REG_BUFFER_SIZE_5		2
u32 lmk04828_REG_BUFFER_5[lmk04828_REG_BUFFER_SIZE_5];

#define lmk04828_REG_BUFFER_SIZE_6		1
u32 lmk04828_REG_BUFFER_6[lmk04828_REG_BUFFER_SIZE_6];

#define lmk04828_REG_BUFFER_SIZE_7		1
u32 lmk04828_REG_BUFFER_7[lmk04828_REG_BUFFER_SIZE_7];

#define lmk04828_REG_BUFFER_SIZE_8		2
u32 lmk04828_REG_BUFFER_8[lmk04828_REG_BUFFER_SIZE_8];



XSpi DAC_LMX2592_SPI;
void DAC_LMX2592_cfg();

void reset_apb_sync_all();//reset APB
void cap_Efuse(); //read/write data (capacitor mismatch calibration) between eFuse and other models
void TI_Efuse();  //read/write data (TI mismatch calibration) between eFuse and other models

void cap_cal();   //calibrate capacitor mismatch of each stage by input from matlab
void TI_cal();    //calibrate time interleaved mismatch including offset, gain, skew
void output_sel();//select one mode of output -> raw data or after calibrated data

///////////////////////ada16d6000_1////////////////////////
void jesd_sysrsf_rst();
void jesd_rst_p();
XSpi ada16d6000_1_SPI;
void ada16d6000_1_RST_N();

void ada16d6000_cfg();
void aad12d2000_cfg();


#define ada16d6000_1_REG_BUFFER_SIZE_1		32
long long int ada16d6000_1_REG_BUFFER_1[ada16d6000_1_REG_BUFFER_SIZE_1];

#define ada16d6000_1_REG_BUFFER_SIZE_2		14
long long int ada16d6000_1_REG_BUFFER_2[ada16d6000_1_REG_BUFFER_SIZE_2];

#define ada16d6000_1_REG_BUFFER_SIZE_3		2
long long int ada16d6000_1_REG_BUFFER_3[ada16d6000_1_REG_BUFFER_SIZE_3];

XSpi ada16d6000_2_SPI;
XSpi ada16d6000_3_SPI;
XSpi ada16d6000_4_SPI;
////////////////////////END//////////////////////////
