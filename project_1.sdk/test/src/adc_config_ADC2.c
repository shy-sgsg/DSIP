#include"xil_types.h"
#include"write_memory.h"
#include"sleep.h"
#include"stdlib.h"
#include"xparameters.h"

#include "adc_config_ADC2.h"
#include"spi.h"
#include"ctrl_204b.h"
#include"offset_cal.h"
#include"control_efuse.h"


void AAD12D2000_CONFIG_NO2(u32 spi_base_addr,u32 ctrl_204b_addr)
{

int NO2_low_NZ=    1  ;     //0;//0--1717MHz(even); 1--113MHz(odd)
int NO2_cap_cal_key         =     1;//capacitor mismatch calibration key, 1:on  0:off
int NO2_TI_cal_key          =     1;//capacitor mismatch calibration key, 1:on  0:off
int NO2_TI_cal_auto_key     =     1;//TI mismatch calibration key (auto mode), 1:on  0:off
int NO2_TI_cal_manual_key   =     0;//TI mismatch calibration key (manual mode), 1:on  0:off
//int NO2_pulse_detect_key    =     0;
int NO2_output_sel_key      =     1;//0:raw data; 1:after cal (interstage gain / TI) data

int NO2_offset_cal_write_key=     0;//write offset_cal data to eFuse zqm20211101
int NO2_offset_cal_read_key =     0;//read offset_cal data from eFuse
int NO2_TI_Efuse_write_key  =     0;//write TI mismatch calibration data to eFuse
int NO2_TI_EFUSE_read_key   =     0;//read TI mismatch calibration data from eFuse
int NO2_cap_Efuse_write_key =     0;//write capacitor mismatch calibration data to eFuse
int NO2_cap_EFUSE_read_key  =     0;//read capacitor mismatch calibration data from eFuse
int NO2_channel_efuse_key   =     0;//1 adc1 ,0 adc2

u16 NO2_EFUSE_data;

//read from on-chip regs
u16 NO2_ADC1_o_mis1_o; //to be refreshed
u16 NO2_ADC1_o_mis2_o; //to be refreshed
u16 NO2_ADC1_o_mis3_o; //to be refreshed
u16 NO2_ADC1_o_mis4_o; //to be refreshed
u16 NO2_ADC1_g_mis2_o; //to be refreshed
u16 NO2_ADC1_g_mis3_o; //to be refreshed
u16 NO2_ADC1_g_mis4_o; //to be refreshed
u16 NO2_ADC1_t_mis1_o; //to be refreshed
u16 NO2_ADC1_t_mis2_o; //to be refreshed
u16 NO2_ADC1_t_mis3_o; //to be refreshed
u16 NO2_ADC1_t_mis4_o; //to be refreshed

u16 NO2_ADC2_o_mis1_o; //to be refreshed
u16 NO2_ADC2_o_mis2_o; //to be refreshed
u16 NO2_ADC2_o_mis3_o; //to be refreshed
u16 NO2_ADC2_o_mis4_o; //to be refreshed
u16 NO2_ADC2_g_mis2_o; //to be refreshed
u16 NO2_ADC2_g_mis3_o; //to be refreshed
u16 NO2_ADC2_g_mis4_o; //to be refreshed
u16 NO2_ADC2_t_mis1_o; //to be refreshed
u16 NO2_ADC2_t_mis2_o; //to be refreshed
u16 NO2_ADC2_t_mis3_o; //to be refreshed
u16 NO2_ADC2_t_mis4_o; //to be refreshed
#if 1
///////////////////////////ADC1
u16 NO2_ADC1_o_mis1_NZ1=0; //to be refreshed           285       //645
u16 NO2_ADC1_o_mis2_NZ1=0; //to be refreshed           239       //569
u16 NO2_ADC1_o_mis3_NZ1=0; //to be refreshed           3df       //991
u16 NO2_ADC1_o_mis4_NZ1=0; //to be refreshed           1f0       //496
u16 NO2_ADC1_g_mis2_NZ1=0; //to be refreshed            fb5       //4021
u16 NO2_ADC1_g_mis3_NZ1=0;  //to be refreshed           fcd       //4045
u16 NO2_ADC1_g_mis4_NZ1=0;  //to be refreshed           fd5       //4053
u16 NO2_ADC1_t_mis1_NZ1=0; //to be refreshed            ee4       //3812
u16 NO2_ADC1_t_mis2_NZ1=0;//to be refreshed            1eb       //491
u16 NO2_ADC1_t_mis3_NZ1=0; //to be refreshed            f1c       //3868
u16 NO2_ADC1_t_mis4_NZ1=0; //to be refreshed            fa0       //4000
#endif
u16 NO2_ADC1_o_mis1_NZ2=0; //to be refreshed
u16 NO2_ADC1_o_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC1_o_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC1_o_mis4_NZ2=0; //to be refreshed
u16 NO2_ADC1_g_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC1_g_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC1_g_mis4_NZ2=0; //to be refreshed
u16 NO2_ADC1_t_mis1_NZ2=0; //to be refreshed
u16 NO2_ADC1_t_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC1_t_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC1_t_mis4_NZ2=0; //to be refreshed

#if 1
/////////////////////////ADC2
u16 NO2_ADC2_o_mis1_NZ1=0; //to be refreshed
u16 NO2_ADC2_o_mis2_NZ1=0; //to be refreshed
u16 NO2_ADC2_o_mis3_NZ1=0; //to be refreshed
u16 NO2_ADC2_o_mis4_NZ1=0; //to be refreshed
u16 NO2_ADC2_g_mis2_NZ1=0; //to be refreshed
u16 NO2_ADC2_g_mis3_NZ1=0; //to be refreshed
u16 NO2_ADC2_g_mis4_NZ1=0; //to be refreshed
u16 NO2_ADC2_t_mis1_NZ1=0; //to be refreshed
u16 NO2_ADC2_t_mis2_NZ1=0; //to be refreshed
u16 NO2_ADC2_t_mis3_NZ1=0; //to be refreshed
u16 NO2_ADC2_t_mis4_NZ1=0; //to be refreshed
#endif
u16 NO2_ADC2_o_mis1_NZ2=0; //to be refreshed
u16 NO2_ADC2_o_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC2_o_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC2_o_mis4_NZ2=0; //to be refreshed
u16 NO2_ADC2_g_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC2_g_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC2_g_mis4_NZ2=0; //to be refreshed
u16 NO2_ADC2_t_mis1_NZ2=0; //to be refreshed
u16 NO2_ADC2_t_mis2_NZ2=0; //to be refreshed
u16 NO2_ADC2_t_mis3_NZ2=0; //to be refreshed
u16 NO2_ADC2_t_mis4_NZ2=0; //to be refreshed

//Capacitor weight from MATLAB to chip
u16 NO2_ADC1_C_weight1_1_2and1 = 0;
u16 NO2_ADC1_C_weight1_1_4and3 = 0;
u16 NO2_ADC1_C_weight1_1_6and5 = 0;
u16 NO2_ADC1_C_weight1_2_2and1 = 0;
u16 NO2_ADC1_C_weight1_2_4and3 = 0;
u16 NO2_ADC1_C_weight1_2_6and5 = 0;
u16 NO2_ADC1_C_weight1_3_2and1 = 0;
u16 NO2_ADC1_C_weight1_3_4and3 = 0;
u16 NO2_ADC1_C_weight1_3_6and5 = 0;
u16 NO2_ADC1_C_weight2_1_2and1 = 0;
u16 NO2_ADC1_C_weight2_1_4and3 = 0;
u16 NO2_ADC1_C_weight2_1_6and5 = 0;
u16 NO2_ADC1_C_weight2_2_2and1 = 0;
u16 NO2_ADC1_C_weight2_2_4and3 = 0;
u16 NO2_ADC1_C_weight2_2_6and5 = 0;
u16 NO2_ADC1_C_weight2_3_2and1 = 0;
u16 NO2_ADC1_C_weight2_3_4and3 = 0;
u16 NO2_ADC1_C_weight2_3_6and5 = 0;
u16 NO2_ADC1_C_weight3_1_2and1 = 0;
u16 NO2_ADC1_C_weight3_1_4and3 = 0;
u16 NO2_ADC1_C_weight3_1_6and5 = 0;
u16 NO2_ADC1_C_weight3_2_2and1 = 0;
u16 NO2_ADC1_C_weight3_2_4and3 = 0;
u16 NO2_ADC1_C_weight3_2_6and5 = 0;
u16 NO2_ADC1_C_weight3_3_2and1 = 0;
u16 NO2_ADC1_C_weight3_3_4and3 = 0;
u16 NO2_ADC1_C_weight3_3_6and5 = 0;
u16 NO2_ADC1_C_weight4_1_2and1 = 0;
u16 NO2_ADC1_C_weight4_1_4and3 = 0;
u16 NO2_ADC1_C_weight4_1_6and5 = 0;
u16 NO2_ADC1_C_weight4_2_2and1 = 0;
u16 NO2_ADC1_C_weight4_2_4and3 = 0;
u16 NO2_ADC1_C_weight4_2_6and5 = 0;
u16 NO2_ADC1_C_weight4_3_2and1 = 0;
u16 NO2_ADC1_C_weight4_3_4and3 = 0;
u16 NO2_ADC1_C_weight4_3_6and5 = 0;

u16 NO2_ADC1_MDAC_weight1_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight1_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight2_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight2_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight3_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight3_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight4_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight4_3=     0;  //if needed

u16 NO2_ADC2_C_weight1_1_2and1 =  0;
u16 NO2_ADC2_C_weight1_1_4and3 =  0;
u16 NO2_ADC2_C_weight1_1_6and5 =  0;
u16 NO2_ADC2_C_weight1_2_2and1 =  0;
u16 NO2_ADC2_C_weight1_2_4and3 =  0;
u16 NO2_ADC2_C_weight1_2_6and5 =  0;
u16 NO2_ADC2_C_weight1_3_2and1 =  0;
u16 NO2_ADC2_C_weight1_3_4and3 =  0;
u16 NO2_ADC2_C_weight1_3_6and5 =  0;
u16 NO2_ADC2_C_weight2_1_2and1 =  0;
u16 NO2_ADC2_C_weight2_1_4and3 =  0;
u16 NO2_ADC2_C_weight2_1_6and5 =  0;
u16 NO2_ADC2_C_weight2_2_2and1 =  0;
u16 NO2_ADC2_C_weight2_2_4and3 =  0;
u16 NO2_ADC2_C_weight2_2_6and5 =  0;
u16 NO2_ADC2_C_weight2_3_2and1 =  0;
u16 NO2_ADC2_C_weight2_3_4and3 =  0;
u16 NO2_ADC2_C_weight2_3_6and5 =  0;
u16 NO2_ADC2_C_weight3_1_2and1 =  0;
u16 NO2_ADC2_C_weight3_1_4and3 =  0;
u16 NO2_ADC2_C_weight3_1_6and5 =  0;
u16 NO2_ADC2_C_weight3_2_2and1 =  0;
u16 NO2_ADC2_C_weight3_2_4and3 =  0;
u16 NO2_ADC2_C_weight3_2_6and5 =  0;
u16 NO2_ADC2_C_weight3_3_2and1 =  0;
u16 NO2_ADC2_C_weight3_3_4and3 =  0;
u16 NO2_ADC2_C_weight3_3_6and5 =  0;
u16 NO2_ADC2_C_weight4_1_2and1 =  0;
u16 NO2_ADC2_C_weight4_1_4and3 =  0;
u16 NO2_ADC2_C_weight4_1_6and5 =  0;
u16 NO2_ADC2_C_weight4_2_2and1 =  0;
u16 NO2_ADC2_C_weight4_2_4and3 =  0;
u16 NO2_ADC2_C_weight4_2_6and5 =  0;
u16 NO2_ADC2_C_weight4_3_2and1 =  0;
u16 NO2_ADC2_C_weight4_3_4and3 =  0;
u16 NO2_ADC2_C_weight4_3_6and5 =  0;

u16 NO2_ADC2_MDAC_weight1_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight1_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight2_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight2_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight3_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight3_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight4_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight4_3=     0; //if needed
/*
u16 NO2_ADC2_C_weight1_1_2and1 = 64760           ;
u16 NO2_ADC2_C_weight1_1_4and3 =  64254                           ;
u16 NO2_ADC2_C_weight1_1_6and5 =  1024           ;
u16 NO2_ADC2_C_weight1_2_2and1 =  65284                           ;
u16 NO2_ADC2_C_weight1_2_4and3 =  64517                           ;
u16 NO2_ADC2_C_weight1_2_6and5 =  261                  ;
u16 NO2_ADC2_C_weight1_3_2and1 =  61219                           ;
u16 NO2_ADC2_C_weight1_3_4and3 =  6403                         ;
u16 NO2_ADC2_C_weight1_3_6and5 =  65273                         ;
u16 NO2_ADC2_C_weight2_1_2and1 = 64762               ;
u16 NO2_ADC2_C_weight2_1_4and3 =  254                       ;
u16 NO2_ADC2_C_weight2_1_6and5 =  766               ;
u16 NO2_ADC2_C_weight2_2_2and1 =  251                         ;
u16 NO2_ADC2_C_weight2_2_4and3 =  64000                       ;
u16 NO2_ADC2_C_weight2_2_6and5 =  260                      ;
u16 NO2_ADC2_C_weight2_3_2and1 =  62197                           ;
u16 NO2_ADC2_C_weight2_3_4and3 =  64769                       ;
u16 NO2_ADC2_C_weight2_3_6and5 =  64512                         ;
u16 NO2_ADC2_C_weight3_1_2and1 = 65270                  ;
u16 NO2_ADC2_C_weight3_1_4and3 =  64252                 ;
u16 NO2_ADC2_C_weight3_1_6and5 =  1278             ;
u16 NO2_ADC2_C_weight3_2_2and1 =  772                         ;
u16 NO2_ADC2_C_weight3_2_4and3 =  65284                        ;
u16 NO2_ADC2_C_weight3_2_6and5 =  2570                  ;
u16 NO2_ADC2_C_weight3_3_2and1 =  63496                           ;
u16 NO2_ADC2_C_weight3_3_4and3 =  7                        ;
u16 NO2_ADC2_C_weight3_3_6and5 =  65011                      ;
u16 NO2_ADC2_C_weight4_1_2and1 = 764                   ;
u16 NO2_ADC2_C_weight4_1_4and3 =  766                         ;
u16 NO2_ADC2_C_weight4_1_6and5 =  1030              ;
u16 NO2_ADC2_C_weight4_2_2and1 =  6163                          ;
u16 NO2_ADC2_C_weight4_2_4and3 =  3604                           ;
u16 NO2_ADC2_C_weight4_2_6and5 =  8734                     ;
u16 NO2_ADC2_C_weight4_3_2and1 =  5139                           ;
u16 NO2_ADC2_C_weight4_3_4and3 =  1053                       ;
u16 NO2_ADC2_C_weight4_3_6and5 =  225                         ;
u16 NO2_ADC2_MDAC_weight1_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight1_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight2_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight2_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight3_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight3_3=     0; //if needed
u16 NO2_ADC2_MDAC_weight4_2and1= 0; //if needed
u16 NO2_ADC2_MDAC_weight4_3=     0; //if needed

u16 NO2_ADC1_C_weight1_1_2and1 = 248     ;
u16 NO2_ADC1_C_weight1_1_4and3 =  64252  ;
u16 NO2_ADC1_C_weight1_1_6and5 =  1024   ;
u16 NO2_ADC1_C_weight1_2_2and1 =  5      ;
u16 NO2_ADC1_C_weight1_2_4and3 =  3      ;
u16 NO2_ADC1_C_weight1_2_6and5 =  5      ;
u16 NO2_ADC1_C_weight1_3_2and1 =  60948  ;
u16 NO2_ADC1_C_weight1_3_4and3 =  6404   ;
u16 NO2_ADC1_C_weight1_3_6and5 =  761    ;
u16 NO2_ADC1_C_weight2_1_2and1 = 64762   ;
u16 NO2_ADC1_C_weight2_1_4and3 =  254    ;
u16 NO2_ADC1_C_weight2_1_6and5 =  766    ;
u16 NO2_ADC1_C_weight2_2_2and1 =  251    ;
u16 NO2_ADC1_C_weight2_2_4and3 =  64256  ;
u16 NO2_ADC1_C_weight2_2_6and5 =  770    ;
u16 NO2_ADC1_C_weight2_3_2and1 =  62708  ;
u16 NO2_ADC1_C_weight2_3_4and3 =  64770  ;
u16 NO2_ADC1_C_weight2_3_6and5 =  0      ;
u16 NO2_ADC1_C_weight3_1_2and1 = 65270   ;
u16 NO2_ADC1_C_weight3_1_4and3 =  63742  ;
u16 NO2_ADC1_C_weight3_1_6and5 =  1024   ;
u16 NO2_ADC1_C_weight3_2_2and1 =  1285   ;
u16 NO2_ADC1_C_weight3_2_4and3 =  261    ;
u16 NO2_ADC1_C_weight3_2_6and5 =  2825   ;
u16 NO2_ADC1_C_weight3_3_2and1 =  64260  ;
u16 NO2_ADC1_C_weight3_3_4and3 =  1284   ;
u16 NO2_ADC1_C_weight3_3_6and5 =  64755  ;
u16 NO2_ADC1_C_weight4_1_2and1 = 1274    ;
u16 NO2_ADC1_C_weight4_1_4and3 =  254    ;
u16 NO2_ADC1_C_weight4_1_6and5 =  1542   ;
u16 NO2_ADC1_C_weight4_2_2and1 =  6426   ;
u16 NO2_ADC1_C_weight4_2_4and3 =  4116   ;
u16 NO2_ADC1_C_weight4_2_6and5 =  8223   ;
u16 NO2_ADC1_C_weight4_3_2and1 =  5912   ;
u16 NO2_ADC1_C_weight4_3_4and3 =  1054   ;
u16 NO2_ADC1_C_weight4_3_6and5 =  226    ;
u16 NO2_ADC1_MDAC_weight1_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight1_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight2_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight2_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight3_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight3_3=     0;  //if needed
u16 NO2_ADC1_MDAC_weight4_2and1= 0;  //if needed
u16 NO2_ADC1_MDAC_weight4_3=     0;  //if needed
*/

//u16 NO2_reg_0_3 ;
//u16 NO2_reg_0_4 ;
//u16 NO2_reg_0_5 ;
//u16 NO2_reg_0_6 ;
//u16 NO2_reg_0_7 ;
//u16 NO2_reg_0_8 ;
//u16 NO2_reg_0_9 ;
//u16 NO2_reg_0_10;
//
//u16 NO2_reg_512_3;
//u16 NO2_reg_512_4;
//u16 NO2_reg_512_5;
//u16 NO2_reg_512_6;
//u16 NO2_reg_512_7;
//u16 NO2_reg_512_8;
//u16 NO2_reg_512_9;
//u16 NO2_reg_512_10;

/////////////////////////////ADC1 ZQM20211101
short NO2_adc1_1_offset_1=0;
short NO2_adc1_1_offset_2=0;   // 100  -100
short NO2_adc1_1_offset_3=0;
short NO2_adc1_1_offset_4=0;
short NO2_adc1_1_offset_5=0;
short NO2_adc1_1_offset_6=0;

short NO2_adc1_2_offset_1=0;
short NO2_adc1_2_offset_2=0;   // 100  -100
short NO2_adc1_2_offset_3=0;
short NO2_adc1_2_offset_4=0;
short NO2_adc1_2_offset_5=0;
short NO2_adc1_2_offset_6=0;

short NO2_adc1_3_offset_1=0;
short NO2_adc1_3_offset_2=0;   // 100  -100
short NO2_adc1_3_offset_3=0;
short NO2_adc1_3_offset_4=0;
short NO2_adc1_3_offset_5=0;
short NO2_adc1_3_offset_6=0;

short NO2_adc1_4_offset_1=0;
short NO2_adc1_4_offset_2=0;   // 100  -100
short NO2_adc1_4_offset_3=0;
short NO2_adc1_4_offset_4=0;
short NO2_adc1_4_offset_5=0;
short NO2_adc1_4_offset_6=0;

//////////////////////////////ADC2
short NO2_adc2_1_offset_1=0;
short NO2_adc2_1_offset_2=0;   // 1-70-70  -1-70-70
short NO2_adc2_1_offset_3=0;
short NO2_adc2_1_offset_4=0;
short NO2_adc2_1_offset_5=0;
short NO2_adc2_1_offset_6=0;

short NO2_adc2_2_offset_1=0;
short NO2_adc2_2_offset_2=0;
short NO2_adc2_2_offset_3=0;
short NO2_adc2_2_offset_4=0;
short NO2_adc2_2_offset_5=0;
short NO2_adc2_2_offset_6=0;

short NO2_adc2_3_offset_1=0;
short NO2_adc2_3_offset_2=0;
short NO2_adc2_3_offset_3=0;
short NO2_adc2_3_offset_4=0;
short NO2_adc2_3_offset_5=0;
short NO2_adc2_3_offset_6=0;

short NO2_adc2_4_offset_1=0;
short NO2_adc2_4_offset_2=0;
short NO2_adc2_4_offset_3=0;
short NO2_adc2_4_offset_4=0;
short NO2_adc2_4_offset_5=0;
short NO2_adc2_4_offset_6=0;



 u16 NO2_chipID = 0;

	NO2_chipID=spi_recv(spi_base_addr, 0x0000);

//************************************************************************//204b_CONFIG/*****************************************************************
	reset_204b(ctrl_204b_addr); //reset sysref_gen let sysref be 0
	spi_send(spi_base_addr, 0x813D, 0x0001);//sys_rst in ADC, for global rst
	spi_send(spi_base_addr, 0x813D, 0x0000);//sys_rst in ADC, for global rst
//--------------rst clk divide-----------------------------------
	spi_send(spi_base_addr,22,0x0002);
	spi_send(spi_base_addr,534,0x0002);
	set_sysref_num(ctrl_204b_addr, 12);
	set_sysref_div_cfg(ctrl_204b_addr, 30);
//	reset_sysref(ctrl_204b_addr);
	spi_send(spi_base_addr,22,0x0000);
	spi_send(spi_base_addr,534,0x0000);
	spi_send(spi_base_addr,21,0x0948);
	spi_send(spi_base_addr,533,0x0948);
//------------------------------ configuration 204B_LL ---------------------------------

	spi_send(spi_base_addr, 0xCC04, 0x0000);
	spi_send(spi_base_addr, 0xCC05, 0x0100);// set marker_swap_timeout 1, Defines maximum transmitted byte count limit
	//without a synchronization marker. If this limit is exceed, respective interrupt is flagged.0b00 - 256 0b01 - 512 Others - RESERVED
	spi_send(spi_base_addr, 0xCC18, 0x6011);//<<sb_jesd204bss_tx_ftis>> 7.5.3.7 P121, means align on next 1 sysref
	spi_send(spi_base_addr, 0xCC19, 0x0001);//LMFC reset latency (in terms of number of devclk_i cycles) after SYSREF
	//has been sampled asserted on a devclk_i edge, here the latency is set as 22 devclk_i cycles according to data of address 0xCC18_19
	spi_send(spi_base_addr, 0xCC20, 0x0032);//after syncb_i goes 1 to 0, at least 256 commas will be sent. Send ILAS on 3rd multiframe after de-assertion of syncb
	spi_send(spi_base_addr, 0xCC21, 0x0000);
	spi_send(spi_base_addr, 0xCC58, 0x0007);//mask sysref alignment from generating interrupt. mask marker swap timeout from generating interrupt.
	spi_send(spi_base_addr, 0xCC59, 0x0000);

//----------------------------- configuration 204B_SS ------------------------------------

	spi_send(spi_base_addr, 0xCE00, 0x2521);//<<sb_jesd204bss_tx_ftis>> 7.5.4.1 P137
	spi_send(spi_base_addr, 0xCE01, 0x00FF);//<<sb_jesd204bss_tx_ftis>> 7.5.4.1 P137

//----------------------------- configuration 204B_CMTX -----------------------------------

	spi_send(spi_base_addr, 0xC80C, 0x1930);//set pll_postdiv = 25. freq(pll_clkout_o) = VCOCLK/(2*pll_postdiv)
	spi_send(spi_base_addr, 0xC80D, 0x0001);//pll_clkout_o is enabled
	spi_send(spi_base_addr, 0xC810, 0xF40C);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. PREDIV .freq(LOOPCLK) = freq(pll_clkin_i)/PREDIV
	spi_send(spi_base_addr, 0xC811, 0x0001);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. FBDIV .freq(VCOCLK) = freq(LOOPCLK)*FBDIV
	spi_send(spi_base_addr, 0xC810, 0x580C);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. PREDIV .freq(LOOPCLK) = freq(pll_clkin_i)/PREDIV
	spi_send(spi_base_addr, 0xC811, 0x0002);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. FBDIV .freq(VCOCLK) = freq(LOOPCLK)*FBDIV

//	spi_send(spi_base_addr, 0xC810, 0xF405);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. PREDIV .freq(LOOPCLK) = freq(pll_clkin_i)/PREDIV
//	spi_send(spi_base_addr, 0xC811, 0x0001);//<<sb_jesd204bss_tx_ftis>> 7.5.2.5 P101. FBDIV .freq(VCOCLK) = freq(LOOPCLK)*FBDIV
	spi_send(spi_base_addr, 0xC800, 0x0036);//<<sb_jesd204bss_tx_ftis>> 7.5.2.1 P99. 1 symbol mode
	spi_send(spi_base_addr, 0xC801, 0x0100);//<<sb_jesd204bss_tx_ftis>> 7.5.2.1 P99. 1 symbol mode
	spi_send(spi_base_addr, 0xC808, 0x521F);//<<sb_jesd204bss_tx_ftis>> 7.5.2.3 P100.loopclk_calib_cnt_0
	spi_send(spi_base_addr, 0xC809, 0x0777);//<<sb_jesd204bss_tx_ftis>> 7.5.2.3 P100.loopclk_calib_cnt_0

//----------------------------- configuration 204B_SS ------------------------------------

	spi_send(spi_base_addr, 0xCE04, 0x100C);//<<sb_jesd204bss_tx_ftis>> 7.5.2 P138, disable DCC. what is DCC?
	spi_send(spi_base_addr, 0xCE05, 0x0050);//<<sb_jesd204bss_tx_ftis>> 7.5.2 P138
	spi_send(spi_base_addr, 0xCE04, 0x100C);
	spi_send(spi_base_addr, 0xCE05, 0x0051);//2021/11/3/different  0051 before

//------------------------------ configuration 204B_LL ---------------------------------

	spi_send(spi_base_addr, 0xCC08, 0x53F7);//configure Device id to 247.configure Bank id to 5.
	spi_send(spi_base_addr, 0xCC09, 0x0754);//configure lane id to 20.Number of lanes per converter device (link) minus 1, here is 8-1=7.
	spi_send(spi_base_addr, 0xCC0C, 0x1D01);//one octet per frame. 30 frames per multiframe.
	spi_send(spi_base_addr, 0xCC0D, 0x0F01);//one converter per device. Converter resolution minus 1, here is 16-1=15. 0 control bit per sample.
	spi_send(spi_base_addr, 0xCC10, 0x232F);//<<sb_jesd204bss_tx_ftis>> 7.5.3.5 P120. Total number of bits per sample minus 1,here
	//is 16-1=15. Device subclass version,Subclass 1. 4 samples per converter per frame cycle. JESD204B.
	spi_send(spi_base_addr, 0xCC11, 0x0C00);//<<sb_jesd204bss_tx_ftis>> 7.5.3.5 P120.
	spi_send(spi_base_addr, 0xCC14, 0x0A7B);//set checksum 10 for registers.
	spi_send(spi_base_addr, 0xCC15, 0x0000);
	spi_send(spi_base_addr, 0xCC24, 0x00C2);//ilas_mf_count:(ilas_mf_count+1) is the number of multiframes sent during ILAS
	spi_send(spi_base_addr, 0xCC25, 0x0000);
	spi_send(spi_base_addr, 0xCC18, 0xA0C1);//<<sb_jesd204bss_tx_ftis>> 7.5.3.7 P121.
	spi_send(spi_base_addr, 0xCC19, 0x0001);//<<sb_jesd204bss_tx_ftis>> 7.5.3.7 P121.
	spi_send(spi_base_addr, 0xCC28, 0x09B0);//<<sb_jesd204bss_tx_ftis>> 7.5.3.11 P122. disable scrambler_reg_init to initialize scrambler.
	spi_send(spi_base_addr, 0xCC29, 0x0003);//<<sb_jesd204bss_tx_ftis>> 7.5.3.11 P122.
	spi_send(spi_base_addr, 0xCC04, 0x7000);
	spi_send(spi_base_addr, 0xCC05, 0x3101);
	spi_send(spi_base_addr, 0xCC04, 0x7001);//<<sb_jesd204bss_tx_ftis>> 7.5.3.2 P116.
	spi_send(spi_base_addr, 0xCC05, 0x3101);//<<sb_jesd204bss_tx_ftis>> 7.5.3.2 P116.

//----------------------------- configuration 204B_SS ------------------------------------

	spi_send(spi_base_addr, 0xCE04, 0x101C);//<<sb_jesd204bss_tx_ftis>> 7.5.2 P138
	spi_send(spi_base_addr, 0xCE05, 0x0050);

//------------------------------ configuration 204B_LL ---------------------------------
//#if 0
//		spi_send(spi_base_addr, 0xCC34, 0x0703);//Logical map
//		spi_send(spi_base_addr, 0xCC35, 0x0204);//Logical map
//		spi_send(spi_base_addr, 0xCC38, 0x0100);//Logical map
//		spi_send(spi_base_addr, 0xCC39, 0x0506);//Logical map
//#endif
/*
	spi_send(spi_base_addr, 0xCC34, 0x0401);//Logical map
	spi_send(spi_base_addr, 0xCC35, 0x0503);//Logical map
	spi_send(spi_base_addr, 0xCC38, 0x0600);//Logical map   2021/11/3/different 0703
	spi_send(spi_base_addr, 0xCC39, 0x0702);//Logical map   2021/11/3/different 0506
*/

//	spi_send(spi_base_addr, 0xCC38, 0x0603);
//	spi_send(spi_base_addr, 0xCC39, 0x0507);
/*
	spi_send(spi_base_addr, 0xC400, 0x4101);	//lane polarity
	spi_send(spi_base_addr, 0xC401, 0x0031);
	spi_send(spi_base_addr, 0xC500, 0x4101);
	spi_send(spi_base_addr, 0xC501, 0x0031);
	spi_send(spi_base_addr, 0xC600, 0x4101);
	spi_send(spi_base_addr, 0xC601, 0x0031);
	spi_send(spi_base_addr, 0xC700, 0x4101);
	spi_send(spi_base_addr, 0xC701, 0x0031);
*/
	set_sysref_num(ctrl_204b_addr, 12);
	set_sysref_div_cfg(ctrl_204b_addr, 30);
//	reset_sysref(ctrl_204b_addr);
//*****************************************************************************************************************************************//

//************************************************************//??/***************************************************************//
		spi_send(spi_base_addr,28,0xffff);
		spi_send(spi_base_addr,512+28,0xffff);//??
////*****************************************************************************************************************************************//
//************************************************************//cap_Efuse/***************************************************************//
if(NO2_cap_Efuse_write_key){
    	if(NO2_channel_efuse_key)
    	{
        u16 NO2_ADC1_C_weight1_1_2and1_low  =  NO2_ADC1_C_weight1_1_2and1%256;
        u16 NO2_ADC1_C_weight1_1_2and1_high = (NO2_ADC1_C_weight1_1_2and1 - NO2_ADC1_C_weight1_1_2and1_low)/256;
        u16 NO2_ADC1_C_weight1_1_4and3_low  =  NO2_ADC1_C_weight1_1_4and3%256;
        u16 NO2_ADC1_C_weight1_1_4and3_high = (NO2_ADC1_C_weight1_1_4and3 - NO2_ADC1_C_weight1_1_4and3_low)/256;
        u16 NO2_ADC1_C_weight1_1_6and5_low  =  NO2_ADC1_C_weight1_1_6and5%256;
        u16 NO2_ADC1_C_weight1_1_6and5_high = (NO2_ADC1_C_weight1_1_6and5 - NO2_ADC1_C_weight1_1_6and5_low)/256;
        u16 NO2_ADC1_C_weight1_2_2and1_low  =  NO2_ADC1_C_weight1_2_2and1%256;
        u16 NO2_ADC1_C_weight1_2_2and1_high = (NO2_ADC1_C_weight1_2_2and1 - NO2_ADC1_C_weight1_2_2and1_low)/256;
        u16 NO2_ADC1_C_weight1_2_4and3_low  =  NO2_ADC1_C_weight1_2_4and3%256;
        u16 NO2_ADC1_C_weight1_2_4and3_high = (NO2_ADC1_C_weight1_2_4and3 - NO2_ADC1_C_weight1_2_4and3_low)/256;
        u16 NO2_ADC1_C_weight1_2_6and5_low  =  NO2_ADC1_C_weight1_2_6and5%256;
        u16 NO2_ADC1_C_weight1_2_6and5_high = (NO2_ADC1_C_weight1_2_6and5 - NO2_ADC1_C_weight1_2_6and5_low)/256;
        u16 NO2_ADC1_C_weight1_3_2and1_low  =  NO2_ADC1_C_weight1_3_2and1%256;
        u16 NO2_ADC1_C_weight1_3_2and1_high = (NO2_ADC1_C_weight1_3_2and1 - NO2_ADC1_C_weight1_3_2and1_low)/256;
        u16 NO2_ADC1_C_weight1_3_4and3_low  =  NO2_ADC1_C_weight1_3_4and3%256;
        u16 NO2_ADC1_C_weight1_3_4and3_high = (NO2_ADC1_C_weight1_3_4and3 - NO2_ADC1_C_weight1_3_4and3_low)/256;
        u16 NO2_ADC1_C_weight1_3_6and5_low  =  NO2_ADC1_C_weight1_3_6and5%256;
        u16 NO2_ADC1_C_weight1_3_6and5_high = (NO2_ADC1_C_weight1_3_6and5 - NO2_ADC1_C_weight1_3_6and5_low)/256;

        u16 NO2_ADC1_C_weight2_1_2and1_low  =  NO2_ADC1_C_weight2_1_2and1%256;
        u16 NO2_ADC1_C_weight2_1_2and1_high = (NO2_ADC1_C_weight2_1_2and1 - NO2_ADC1_C_weight2_1_2and1_low)/256;
        u16 NO2_ADC1_C_weight2_1_4and3_low  =  NO2_ADC1_C_weight2_1_4and3%256;
        u16 NO2_ADC1_C_weight2_1_4and3_high = (NO2_ADC1_C_weight2_1_4and3 - NO2_ADC1_C_weight2_1_4and3_low)/256;
        u16 NO2_ADC1_C_weight2_1_6and5_low  =  NO2_ADC1_C_weight2_1_6and5%256;
        u16 NO2_ADC1_C_weight2_1_6and5_high = (NO2_ADC1_C_weight2_1_6and5 - NO2_ADC1_C_weight2_1_6and5_low)/256;
        u16 NO2_ADC1_C_weight2_2_2and1_low  =  NO2_ADC1_C_weight2_2_2and1%256;
        u16 NO2_ADC1_C_weight2_2_2and1_high = (NO2_ADC1_C_weight2_2_2and1 - NO2_ADC1_C_weight2_2_2and1_low)/256;
        u16 NO2_ADC1_C_weight2_2_4and3_low  =  NO2_ADC1_C_weight2_2_4and3%256;
        u16 NO2_ADC1_C_weight2_2_4and3_high = (NO2_ADC1_C_weight2_2_4and3 - NO2_ADC1_C_weight2_2_4and3_low)/256;
        u16 NO2_ADC1_C_weight2_2_6and5_low  =  NO2_ADC1_C_weight2_2_6and5%256;
        u16 NO2_ADC1_C_weight2_2_6and5_high = (NO2_ADC1_C_weight2_2_6and5 - NO2_ADC1_C_weight2_2_6and5_low)/256;
        u16 NO2_ADC1_C_weight2_3_2and1_low  =  NO2_ADC1_C_weight2_3_2and1%256;
        u16 NO2_ADC1_C_weight2_3_2and1_high = (NO2_ADC1_C_weight2_3_2and1 - NO2_ADC1_C_weight2_3_2and1_low)/256;
        u16 NO2_ADC1_C_weight2_3_4and3_low  =  NO2_ADC1_C_weight2_3_4and3%256;
        u16 NO2_ADC1_C_weight2_3_4and3_high = (NO2_ADC1_C_weight2_3_4and3 - NO2_ADC1_C_weight2_3_4and3_low)/256;
        u16 NO2_ADC1_C_weight2_3_6and5_low  =  NO2_ADC1_C_weight2_3_6and5%256;
        u16 NO2_ADC1_C_weight2_3_6and5_high = (NO2_ADC1_C_weight2_3_6and5 - NO2_ADC1_C_weight2_3_6and5_low)/256;

        u16 NO2_ADC1_C_weight3_1_2and1_low  =  NO2_ADC1_C_weight3_1_2and1%256;
        u16 NO2_ADC1_C_weight3_1_2and1_high = (NO2_ADC1_C_weight3_1_2and1 - NO2_ADC1_C_weight3_1_2and1_low)/256;
        u16 NO2_ADC1_C_weight3_1_4and3_low  =  NO2_ADC1_C_weight3_1_4and3%256;
        u16 NO2_ADC1_C_weight3_1_4and3_high = (NO2_ADC1_C_weight3_1_4and3 - NO2_ADC1_C_weight3_1_4and3_low)/256;
        u16 NO2_ADC1_C_weight3_1_6and5_low  =  NO2_ADC1_C_weight3_1_6and5%256;
        u16 NO2_ADC1_C_weight3_1_6and5_high = (NO2_ADC1_C_weight3_1_6and5 - NO2_ADC1_C_weight3_1_6and5_low)/256;
        u16 NO2_ADC1_C_weight3_2_2and1_low  =  NO2_ADC1_C_weight3_2_2and1%256;
        u16 NO2_ADC1_C_weight3_2_2and1_high = (NO2_ADC1_C_weight3_2_2and1 - NO2_ADC1_C_weight3_2_2and1_low)/256;
        u16 NO2_ADC1_C_weight3_2_4and3_low  =  NO2_ADC1_C_weight3_2_4and3%256;
        u16 NO2_ADC1_C_weight3_2_4and3_high = (NO2_ADC1_C_weight3_2_4and3 - NO2_ADC1_C_weight3_2_4and3_low)/256;
        u16 NO2_ADC1_C_weight3_2_6and5_low  =  NO2_ADC1_C_weight3_2_6and5%256;
        u16 NO2_ADC1_C_weight3_2_6and5_high = (NO2_ADC1_C_weight3_2_6and5 - NO2_ADC1_C_weight3_2_6and5_low)/256;
        u16 NO2_ADC1_C_weight3_3_2and1_low  =  NO2_ADC1_C_weight3_3_2and1%256;
        u16 NO2_ADC1_C_weight3_3_2and1_high = (NO2_ADC1_C_weight3_3_2and1 - NO2_ADC1_C_weight3_3_2and1_low)/256;
        u16 NO2_ADC1_C_weight3_3_4and3_low  =  NO2_ADC1_C_weight3_3_4and3%256;
        u16 NO2_ADC1_C_weight3_3_4and3_high = (NO2_ADC1_C_weight3_3_4and3 - NO2_ADC1_C_weight3_3_4and3_low)/256;
        u16 NO2_ADC1_C_weight3_3_6and5_low  =  NO2_ADC1_C_weight3_3_6and5%256;
        u16 NO2_ADC1_C_weight3_3_6and5_high = (NO2_ADC1_C_weight3_3_6and5 - NO2_ADC1_C_weight3_3_6and5_low)/256;

        u16 NO2_ADC1_C_weight4_1_2and1_low  =  NO2_ADC1_C_weight4_1_2and1%256;
        u16 NO2_ADC1_C_weight4_1_2and1_high = (NO2_ADC1_C_weight4_1_2and1 - NO2_ADC1_C_weight4_1_2and1_low)/256;
        u16 NO2_ADC1_C_weight4_1_4and3_low  =  NO2_ADC1_C_weight4_1_4and3%256;
        u16 NO2_ADC1_C_weight4_1_4and3_high = (NO2_ADC1_C_weight4_1_4and3 - NO2_ADC1_C_weight4_1_4and3_low)/256;
        u16 NO2_ADC1_C_weight4_1_6and5_low  =  NO2_ADC1_C_weight4_1_6and5%256;
        u16 NO2_ADC1_C_weight4_1_6and5_high = (NO2_ADC1_C_weight4_1_6and5 - NO2_ADC1_C_weight4_1_6and5_low)/256;
        u16 NO2_ADC1_C_weight4_2_2and1_low  =  NO2_ADC1_C_weight4_2_2and1%256;
        u16 NO2_ADC1_C_weight4_2_2and1_high = (NO2_ADC1_C_weight4_2_2and1 - NO2_ADC1_C_weight4_2_2and1_low)/256;
        u16 NO2_ADC1_C_weight4_2_4and3_low  =  NO2_ADC1_C_weight4_2_4and3%256;
        u16 NO2_ADC1_C_weight4_2_4and3_high = (NO2_ADC1_C_weight4_2_4and3 - NO2_ADC1_C_weight4_2_4and3_low)/256;
        u16 NO2_ADC1_C_weight4_2_6and5_low  =  NO2_ADC1_C_weight4_2_6and5%256;
        u16 NO2_ADC1_C_weight4_2_6and5_high = (NO2_ADC1_C_weight4_2_6and5 - NO2_ADC1_C_weight4_2_6and5_low)/256;
        u16 NO2_ADC1_C_weight4_3_2and1_low  =  NO2_ADC1_C_weight4_3_2and1%256;
        u16 NO2_ADC1_C_weight4_3_2and1_high = (NO2_ADC1_C_weight4_3_2and1 - NO2_ADC1_C_weight4_3_2and1_low)/256;
        u16 NO2_ADC1_C_weight4_3_4and3_low  =  NO2_ADC1_C_weight4_3_4and3%256;
        u16 NO2_ADC1_C_weight4_3_4and3_high = (NO2_ADC1_C_weight4_3_4and3 - NO2_ADC1_C_weight4_3_4and3_low)/256;
        u16 NO2_ADC1_C_weight4_3_6and5_low  =  NO2_ADC1_C_weight4_3_6and5%256;
        u16 NO2_ADC1_C_weight4_3_6and5_high = (NO2_ADC1_C_weight4_3_6and5 - NO2_ADC1_C_weight4_3_6and5_low)/256;

        u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

        NO2_EFUSE_data = control_efuse(spi_base_addr,  30, NO2_ADC1_C_weight1_1_2and1_low, NO2_ADC1_C_weight1_1_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  32, NO2_ADC1_C_weight1_1_4and3_low, NO2_ADC1_C_weight1_1_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  34, NO2_ADC1_C_weight1_1_6and5_low, NO2_ADC1_C_weight1_1_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  36, NO2_ADC1_C_weight1_2_2and1_low, NO2_ADC1_C_weight1_2_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  38, NO2_ADC1_C_weight1_2_4and3_low, NO2_ADC1_C_weight1_2_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  40, NO2_ADC1_C_weight1_2_6and5_low, NO2_ADC1_C_weight1_2_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  42, NO2_ADC1_C_weight1_3_2and1_low, NO2_ADC1_C_weight1_3_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  44, NO2_ADC1_C_weight1_3_4and3_low, NO2_ADC1_C_weight1_3_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  46, NO2_ADC1_C_weight1_3_6and5_low, NO2_ADC1_C_weight1_3_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  48, NO2_ADC1_C_weight2_1_2and1_low, NO2_ADC1_C_weight2_1_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  50, NO2_ADC1_C_weight2_1_4and3_low, NO2_ADC1_C_weight2_1_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  52, NO2_ADC1_C_weight2_1_6and5_low, NO2_ADC1_C_weight2_1_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  54, NO2_ADC1_C_weight2_2_2and1_low, NO2_ADC1_C_weight2_2_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  56, NO2_ADC1_C_weight2_2_4and3_low, NO2_ADC1_C_weight2_2_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  58, NO2_ADC1_C_weight2_2_6and5_low, NO2_ADC1_C_weight2_2_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  60, NO2_ADC1_C_weight2_3_2and1_low, NO2_ADC1_C_weight2_3_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  62, NO2_ADC1_C_weight2_3_4and3_low, NO2_ADC1_C_weight2_3_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  64, NO2_ADC1_C_weight2_3_6and5_low, NO2_ADC1_C_weight2_3_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  66, NO2_ADC1_C_weight3_1_2and1_low, NO2_ADC1_C_weight3_1_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  68, NO2_ADC1_C_weight3_1_4and3_low, NO2_ADC1_C_weight3_1_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  70, NO2_ADC1_C_weight3_1_6and5_low, NO2_ADC1_C_weight3_1_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  72, NO2_ADC1_C_weight3_2_2and1_low, NO2_ADC1_C_weight3_2_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  74, NO2_ADC1_C_weight3_2_4and3_low, NO2_ADC1_C_weight3_2_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  76, NO2_ADC1_C_weight3_2_6and5_low, NO2_ADC1_C_weight3_2_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  78, NO2_ADC1_C_weight3_3_2and1_low, NO2_ADC1_C_weight3_3_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  80, NO2_ADC1_C_weight3_3_4and3_low, NO2_ADC1_C_weight3_3_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  82, NO2_ADC1_C_weight3_3_6and5_low, NO2_ADC1_C_weight3_3_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  84, NO2_ADC1_C_weight4_1_2and1_low, NO2_ADC1_C_weight4_1_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  86, NO2_ADC1_C_weight4_1_4and3_low, NO2_ADC1_C_weight4_1_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  88, NO2_ADC1_C_weight4_1_6and5_low, NO2_ADC1_C_weight4_1_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  90, NO2_ADC1_C_weight4_2_2and1_low, NO2_ADC1_C_weight4_2_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  92, NO2_ADC1_C_weight4_2_4and3_low, NO2_ADC1_C_weight4_2_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  94, NO2_ADC1_C_weight4_2_6and5_low, NO2_ADC1_C_weight4_2_6and5_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  96, NO2_ADC1_C_weight4_3_2and1_low, NO2_ADC1_C_weight4_3_2and1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  98, NO2_ADC1_C_weight4_3_4and3_low, NO2_ADC1_C_weight4_3_4and3_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 100, NO2_ADC1_C_weight4_3_6and5_low, NO2_ADC1_C_weight4_3_6and5_high);
    	}

    	else{
        u16 NO2_ADC2_C_weight1_1_2and1_low  =  NO2_ADC2_C_weight1_1_2and1%256;
        u16 NO2_ADC2_C_weight1_1_2and1_high = (NO2_ADC2_C_weight1_1_2and1 - NO2_ADC2_C_weight1_1_2and1_low)/256;
        u16 NO2_ADC2_C_weight1_1_4and3_low  =  NO2_ADC2_C_weight1_1_4and3%256;
        u16 NO2_ADC2_C_weight1_1_4and3_high = (NO2_ADC2_C_weight1_1_4and3 - NO2_ADC2_C_weight1_1_4and3_low)/256;
        u16 NO2_ADC2_C_weight1_1_6and5_low  =  NO2_ADC2_C_weight1_1_6and5%256;
        u16 NO2_ADC2_C_weight1_1_6and5_high = (NO2_ADC2_C_weight1_1_6and5 - NO2_ADC2_C_weight1_1_6and5_low)/256;
        u16 NO2_ADC2_C_weight1_2_2and1_low  =  NO2_ADC2_C_weight1_2_2and1%256;
        u16 NO2_ADC2_C_weight1_2_2and1_high = (NO2_ADC2_C_weight1_2_2and1 - NO2_ADC2_C_weight1_2_2and1_low)/256;
        u16 NO2_ADC2_C_weight1_2_4and3_low  =  NO2_ADC2_C_weight1_2_4and3%256;
        u16 NO2_ADC2_C_weight1_2_4and3_high = (NO2_ADC2_C_weight1_2_4and3 - NO2_ADC2_C_weight1_2_4and3_low)/256;
        u16 NO2_ADC2_C_weight1_2_6and5_low  =  NO2_ADC2_C_weight1_2_6and5%256;
        u16 NO2_ADC2_C_weight1_2_6and5_high = (NO2_ADC2_C_weight1_2_6and5 - NO2_ADC2_C_weight1_2_6and5_low)/256;
        u16 NO2_ADC2_C_weight1_3_2and1_low  =  NO2_ADC2_C_weight1_3_2and1%256;
        u16 NO2_ADC2_C_weight1_3_2and1_high = (NO2_ADC2_C_weight1_3_2and1 - NO2_ADC2_C_weight1_3_2and1_low)/256;
        u16 NO2_ADC2_C_weight1_3_4and3_low  =  NO2_ADC2_C_weight1_3_4and3%256;
        u16 NO2_ADC2_C_weight1_3_4and3_high = (NO2_ADC2_C_weight1_3_4and3 - NO2_ADC2_C_weight1_3_4and3_low)/256;
        u16 NO2_ADC2_C_weight1_3_6and5_low  =  NO2_ADC2_C_weight1_3_6and5%256;
        u16 NO2_ADC2_C_weight1_3_6and5_high = (NO2_ADC2_C_weight1_3_6and5 - NO2_ADC2_C_weight1_3_6and5_low)/256;

        u16 NO2_ADC2_C_weight2_1_2and1_low  =  NO2_ADC2_C_weight2_1_2and1%256;
        u16 NO2_ADC2_C_weight2_1_2and1_high = (NO2_ADC2_C_weight2_1_2and1 - NO2_ADC2_C_weight2_1_2and1_low)/256;
        u16 NO2_ADC2_C_weight2_1_4and3_low  =  NO2_ADC2_C_weight2_1_4and3%256;
        u16 NO2_ADC2_C_weight2_1_4and3_high = (NO2_ADC2_C_weight2_1_4and3 - NO2_ADC2_C_weight2_1_4and3_low)/256;
        u16 NO2_ADC2_C_weight2_1_6and5_low  =  NO2_ADC2_C_weight2_1_6and5%256;
        u16 NO2_ADC2_C_weight2_1_6and5_high = (NO2_ADC2_C_weight2_1_6and5 - NO2_ADC2_C_weight2_1_6and5_low)/256;
        u16 NO2_ADC2_C_weight2_2_2and1_low  =  NO2_ADC2_C_weight2_2_2and1%256;
        u16 NO2_ADC2_C_weight2_2_2and1_high = (NO2_ADC2_C_weight2_2_2and1 - NO2_ADC2_C_weight2_2_2and1_low)/256;
        u16 NO2_ADC2_C_weight2_2_4and3_low  =  NO2_ADC2_C_weight2_2_4and3%256;
        u16 NO2_ADC2_C_weight2_2_4and3_high = (NO2_ADC2_C_weight2_2_4and3 - NO2_ADC2_C_weight2_2_4and3_low)/256;
        u16 NO2_ADC2_C_weight2_2_6and5_low  =  NO2_ADC2_C_weight2_2_6and5%256;
        u16 NO2_ADC2_C_weight2_2_6and5_high = (NO2_ADC2_C_weight2_2_6and5 - NO2_ADC2_C_weight2_2_6and5_low)/256;
        u16 NO2_ADC2_C_weight2_3_2and1_low  =  NO2_ADC2_C_weight2_3_2and1%256;
        u16 NO2_ADC2_C_weight2_3_2and1_high = (NO2_ADC2_C_weight2_3_2and1 - NO2_ADC2_C_weight2_3_2and1_low)/256;
        u16 NO2_ADC2_C_weight2_3_4and3_low  =  NO2_ADC2_C_weight2_3_4and3%256;
        u16 NO2_ADC2_C_weight2_3_4and3_high = (NO2_ADC2_C_weight2_3_4and3 - NO2_ADC2_C_weight2_3_4and3_low)/256;
        u16 NO2_ADC2_C_weight2_3_6and5_low  =  NO2_ADC2_C_weight2_3_6and5%256;
        u16 NO2_ADC2_C_weight2_3_6and5_high = (NO2_ADC2_C_weight2_3_6and5 - NO2_ADC2_C_weight2_3_6and5_low)/256;

        u16 NO2_ADC2_C_weight3_1_2and1_low  =  NO2_ADC2_C_weight3_1_2and1%256;
        u16 NO2_ADC2_C_weight3_1_2and1_high = (NO2_ADC2_C_weight3_1_2and1 - NO2_ADC2_C_weight3_1_2and1_low)/256;
        u16 NO2_ADC2_C_weight3_1_4and3_low  =  NO2_ADC2_C_weight3_1_4and3%256;
        u16 NO2_ADC2_C_weight3_1_4and3_high = (NO2_ADC2_C_weight3_1_4and3 - NO2_ADC2_C_weight3_1_4and3_low)/256;
        u16 NO2_ADC2_C_weight3_1_6and5_low  =  NO2_ADC2_C_weight3_1_6and5%256;
        u16 NO2_ADC2_C_weight3_1_6and5_high = (NO2_ADC2_C_weight3_1_6and5 - NO2_ADC2_C_weight3_1_6and5_low)/256;
        u16 NO2_ADC2_C_weight3_2_2and1_low  =  NO2_ADC2_C_weight3_2_2and1%256;
        u16 NO2_ADC2_C_weight3_2_2and1_high = (NO2_ADC2_C_weight3_2_2and1 - NO2_ADC2_C_weight3_2_2and1_low)/256;
        u16 NO2_ADC2_C_weight3_2_4and3_low  =  NO2_ADC2_C_weight3_2_4and3%256;
        u16 NO2_ADC2_C_weight3_2_4and3_high = (NO2_ADC2_C_weight3_2_4and3 - NO2_ADC2_C_weight3_2_4and3_low)/256;
        u16 NO2_ADC2_C_weight3_2_6and5_low  =  NO2_ADC2_C_weight3_2_6and5%256;
        u16 NO2_ADC2_C_weight3_2_6and5_high = (NO2_ADC2_C_weight3_2_6and5 - NO2_ADC2_C_weight3_2_6and5_low)/256;
        u16 NO2_ADC2_C_weight3_3_2and1_low  =  NO2_ADC2_C_weight3_3_2and1%256;
        u16 NO2_ADC2_C_weight3_3_2and1_high = (NO2_ADC2_C_weight3_3_2and1 - NO2_ADC2_C_weight3_3_2and1_low)/256;
        u16 NO2_ADC2_C_weight3_3_4and3_low  =  NO2_ADC2_C_weight3_3_4and3%256;
        u16 NO2_ADC2_C_weight3_3_4and3_high = (NO2_ADC2_C_weight3_3_4and3 - NO2_ADC2_C_weight3_3_4and3_low)/256;
        u16 NO2_ADC2_C_weight3_3_6and5_low  =  NO2_ADC2_C_weight3_3_6and5%256;
        u16 NO2_ADC2_C_weight3_3_6and5_high = (NO2_ADC2_C_weight3_3_6and5 - NO2_ADC2_C_weight3_3_6and5_low)/256;

        u16 NO2_ADC2_C_weight4_1_2and1_low  =  NO2_ADC2_C_weight4_1_2and1%256;
        u16 NO2_ADC2_C_weight4_1_2and1_high = (NO2_ADC2_C_weight4_1_2and1 - NO2_ADC2_C_weight4_1_2and1_low)/256;
        u16 NO2_ADC2_C_weight4_1_4and3_low  =  NO2_ADC2_C_weight4_1_4and3%256;
        u16 NO2_ADC2_C_weight4_1_4and3_high = (NO2_ADC2_C_weight4_1_4and3 - NO2_ADC2_C_weight4_1_4and3_low)/256;
        u16 NO2_ADC2_C_weight4_1_6and5_low  =  NO2_ADC2_C_weight4_1_6and5%256;
        u16 NO2_ADC2_C_weight4_1_6and5_high = (NO2_ADC2_C_weight4_1_6and5 - NO2_ADC2_C_weight4_1_6and5_low)/256;
        u16 NO2_ADC2_C_weight4_2_2and1_low  =  NO2_ADC2_C_weight4_2_2and1%256;
        u16 NO2_ADC2_C_weight4_2_2and1_high = (NO2_ADC2_C_weight4_2_2and1 - NO2_ADC2_C_weight4_2_2and1_low)/256;
        u16 NO2_ADC2_C_weight4_2_4and3_low  =  NO2_ADC2_C_weight4_2_4and3%256;
        u16 NO2_ADC2_C_weight4_2_4and3_high = (NO2_ADC2_C_weight4_2_4and3 - NO2_ADC2_C_weight4_2_4and3_low)/256;
        u16 NO2_ADC2_C_weight4_2_6and5_low  =  NO2_ADC2_C_weight4_2_6and5%256;
        u16 NO2_ADC2_C_weight4_2_6and5_high = (NO2_ADC2_C_weight4_2_6and5 - NO2_ADC2_C_weight4_2_6and5_low)/256;
        u16 NO2_ADC2_C_weight4_3_2and1_low  =  NO2_ADC2_C_weight4_3_2and1%256;
        u16 NO2_ADC2_C_weight4_3_2and1_high = (NO2_ADC2_C_weight4_3_2and1 - NO2_ADC2_C_weight4_3_2and1_low)/256;
        u16 NO2_ADC2_C_weight4_3_4and3_low  =  NO2_ADC2_C_weight4_3_4and3%256;
        u16 NO2_ADC2_C_weight4_3_4and3_high = (NO2_ADC2_C_weight4_3_4and3 - NO2_ADC2_C_weight4_3_4and3_low)/256;
        u16 NO2_ADC2_C_weight4_3_6and5_low  =  NO2_ADC2_C_weight4_3_6and5%256;
        u16 NO2_ADC2_C_weight4_3_6and5_high = (NO2_ADC2_C_weight4_3_6and5 - NO2_ADC2_C_weight4_3_6and5_low)/256;

        u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

		NO2_EFUSE_data = control_efuse(spi_base_addr, 152, NO2_ADC2_C_weight1_1_2and1_low, NO2_ADC2_C_weight1_1_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 154, NO2_ADC2_C_weight1_1_4and3_low, NO2_ADC2_C_weight1_1_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 156, NO2_ADC2_C_weight1_1_6and5_low, NO2_ADC2_C_weight1_1_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 158, NO2_ADC2_C_weight1_2_2and1_low, NO2_ADC2_C_weight1_2_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 160, NO2_ADC2_C_weight1_2_4and3_low, NO2_ADC2_C_weight1_2_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 162, NO2_ADC2_C_weight1_2_6and5_low, NO2_ADC2_C_weight1_2_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 164, NO2_ADC2_C_weight1_3_2and1_low, NO2_ADC2_C_weight1_3_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 166, NO2_ADC2_C_weight1_3_4and3_low, NO2_ADC2_C_weight1_3_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 168, NO2_ADC2_C_weight1_3_6and5_low, NO2_ADC2_C_weight1_3_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 170, NO2_ADC2_C_weight2_1_2and1_low, NO2_ADC2_C_weight2_1_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 172, NO2_ADC2_C_weight2_1_4and3_low, NO2_ADC2_C_weight2_1_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 174, NO2_ADC2_C_weight2_1_6and5_low, NO2_ADC2_C_weight2_1_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 176, NO2_ADC2_C_weight2_2_2and1_low, NO2_ADC2_C_weight2_2_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 178, NO2_ADC2_C_weight2_2_4and3_low, NO2_ADC2_C_weight2_2_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 180, NO2_ADC2_C_weight2_2_6and5_low, NO2_ADC2_C_weight2_2_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 182, NO2_ADC2_C_weight2_3_2and1_low, NO2_ADC2_C_weight2_3_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 184, NO2_ADC2_C_weight2_3_4and3_low, NO2_ADC2_C_weight2_3_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 186, NO2_ADC2_C_weight2_3_6and5_low, NO2_ADC2_C_weight2_3_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 188, NO2_ADC2_C_weight3_1_2and1_low, NO2_ADC2_C_weight3_1_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 190, NO2_ADC2_C_weight3_1_4and3_low, NO2_ADC2_C_weight3_1_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 192, NO2_ADC2_C_weight3_1_6and5_low, NO2_ADC2_C_weight3_1_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 194, NO2_ADC2_C_weight3_2_2and1_low, NO2_ADC2_C_weight3_2_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 196, NO2_ADC2_C_weight3_2_4and3_low, NO2_ADC2_C_weight3_2_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 198, NO2_ADC2_C_weight3_2_6and5_low, NO2_ADC2_C_weight3_2_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 200, NO2_ADC2_C_weight3_3_2and1_low, NO2_ADC2_C_weight3_3_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 202, NO2_ADC2_C_weight3_3_4and3_low, NO2_ADC2_C_weight3_3_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 204, NO2_ADC2_C_weight3_3_6and5_low, NO2_ADC2_C_weight3_3_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 206, NO2_ADC2_C_weight4_1_2and1_low, NO2_ADC2_C_weight4_1_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 208, NO2_ADC2_C_weight4_1_4and3_low, NO2_ADC2_C_weight4_1_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 210, NO2_ADC2_C_weight4_1_6and5_low, NO2_ADC2_C_weight4_1_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 212, NO2_ADC2_C_weight4_2_2and1_low, NO2_ADC2_C_weight4_2_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 214, NO2_ADC2_C_weight4_2_4and3_low, NO2_ADC2_C_weight4_2_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 216, NO2_ADC2_C_weight4_2_6and5_low, NO2_ADC2_C_weight4_2_6and5_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 218, NO2_ADC2_C_weight4_3_2and1_low, NO2_ADC2_C_weight4_3_2and1_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 220, NO2_ADC2_C_weight4_3_4and3_low, NO2_ADC2_C_weight4_3_4and3_high);
		NO2_EFUSE_data = control_efuse(spi_base_addr, 222, NO2_ADC2_C_weight4_3_6and5_low, NO2_ADC2_C_weight4_3_6and5_high);
    	}
        }
    if(NO2_cap_EFUSE_read_key){

        spi_send(spi_base_addr, 0x8803, 0x5034);
        spi_send(spi_base_addr, 0x8804, 0x4A2A);

    	if(NO2_channel_efuse_key)
    	{
        spi_send(spi_base_addr, 0x8805,  30);usleep(100000);NO2_ADC1_C_weight1_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  32);usleep(100000);NO2_ADC1_C_weight1_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  34);usleep(100000);NO2_ADC1_C_weight1_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  36);usleep(100000);NO2_ADC1_C_weight1_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  38);usleep(100000);NO2_ADC1_C_weight1_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  40);usleep(100000);NO2_ADC1_C_weight1_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  42);usleep(100000);NO2_ADC1_C_weight1_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  44);usleep(100000);NO2_ADC1_C_weight1_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  46);usleep(100000);NO2_ADC1_C_weight1_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  48);usleep(100000);NO2_ADC1_C_weight2_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  50);usleep(100000);NO2_ADC1_C_weight2_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  52);usleep(100000);NO2_ADC1_C_weight2_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  54);usleep(100000);NO2_ADC1_C_weight2_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  56);usleep(100000);NO2_ADC1_C_weight2_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  58);usleep(100000);NO2_ADC1_C_weight2_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  60);usleep(100000);NO2_ADC1_C_weight2_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  62);usleep(100000);NO2_ADC1_C_weight2_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  64);usleep(100000);NO2_ADC1_C_weight2_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  66);usleep(100000);NO2_ADC1_C_weight3_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  68);usleep(100000);NO2_ADC1_C_weight3_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  70);usleep(100000);NO2_ADC1_C_weight3_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  72);usleep(100000);NO2_ADC1_C_weight3_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  74);usleep(100000);NO2_ADC1_C_weight3_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  76);usleep(100000);NO2_ADC1_C_weight3_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  78);usleep(100000);NO2_ADC1_C_weight3_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  80);usleep(100000);NO2_ADC1_C_weight3_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  82);usleep(100000);NO2_ADC1_C_weight3_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  84);usleep(100000);NO2_ADC1_C_weight4_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  86);usleep(100000);NO2_ADC1_C_weight4_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  88);usleep(100000);NO2_ADC1_C_weight4_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  90);usleep(100000);NO2_ADC1_C_weight4_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  92);usleep(100000);NO2_ADC1_C_weight4_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  94);usleep(100000);NO2_ADC1_C_weight4_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  96);usleep(100000);NO2_ADC1_C_weight4_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  98);usleep(100000);NO2_ADC1_C_weight4_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 100);usleep(100000);NO2_ADC1_C_weight4_3_6and5 = spi_recv(spi_base_addr, 0x0805);
    	}

    	else{
        spi_send(spi_base_addr, 0x8805, 152);usleep(100000);NO2_ADC2_C_weight1_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 154);usleep(100000);NO2_ADC2_C_weight1_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 156);usleep(100000);NO2_ADC2_C_weight1_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 158);usleep(100000);NO2_ADC2_C_weight1_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 160);usleep(100000);NO2_ADC2_C_weight1_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 162);usleep(100000);NO2_ADC2_C_weight1_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 164);usleep(100000);NO2_ADC2_C_weight1_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 166);usleep(100000);NO2_ADC2_C_weight1_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 168);usleep(100000);NO2_ADC2_C_weight1_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 170);usleep(100000);NO2_ADC2_C_weight2_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 172);usleep(100000);NO2_ADC2_C_weight2_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 174);usleep(100000);NO2_ADC2_C_weight2_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 176);usleep(100000);NO2_ADC2_C_weight2_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 178);usleep(100000);NO2_ADC2_C_weight2_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 180);usleep(100000);NO2_ADC2_C_weight2_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 182);usleep(100000);NO2_ADC2_C_weight2_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 184);usleep(100000);NO2_ADC2_C_weight2_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 186);usleep(100000);NO2_ADC2_C_weight2_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 188);usleep(100000);NO2_ADC2_C_weight3_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 190);usleep(100000);NO2_ADC2_C_weight3_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 192);usleep(100000);NO2_ADC2_C_weight3_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 194);usleep(100000);NO2_ADC2_C_weight3_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 196);usleep(100000);NO2_ADC2_C_weight3_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 198);usleep(100000);NO2_ADC2_C_weight3_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 200);usleep(100000);NO2_ADC2_C_weight3_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 202);usleep(100000);NO2_ADC2_C_weight3_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 204);usleep(100000);NO2_ADC2_C_weight3_3_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 206);usleep(100000);NO2_ADC2_C_weight4_1_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 208);usleep(100000);NO2_ADC2_C_weight4_1_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 210);usleep(100000);NO2_ADC2_C_weight4_1_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 212);usleep(100000);NO2_ADC2_C_weight4_2_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 214);usleep(100000);NO2_ADC2_C_weight4_2_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 216);usleep(100000);NO2_ADC2_C_weight4_2_6and5 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 218);usleep(100000);NO2_ADC2_C_weight4_3_2and1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 220);usleep(100000);NO2_ADC2_C_weight4_3_4and3 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 222);usleep(100000);NO2_ADC2_C_weight4_3_6and5 = spi_recv(spi_base_addr, 0x0805);
    	}
	}

////*****************************************************************************************************************************************//

////******************************************************TI_Efuse****************************************************************************//
if(NO2_TI_Efuse_write_key){
    	if(NO2_channel_efuse_key)
    	{
        u16 NO2_ADC1_o_mis1_NZ1_low =   NO2_ADC1_o_mis1_NZ1%256;//prepare to write eFuse
        u16 NO2_ADC1_o_mis1_NZ1_high = (NO2_ADC1_o_mis1_NZ1-NO2_ADC1_o_mis1_NZ1_low)/256;
        u16 NO2_ADC1_o_mis2_NZ1_low =   NO2_ADC1_o_mis2_NZ1%256;
        u16 NO2_ADC1_o_mis2_NZ1_high = (NO2_ADC1_o_mis2_NZ1-NO2_ADC1_o_mis2_NZ1_low)/256;
        u16 NO2_ADC1_o_mis3_NZ1_low  =  NO2_ADC1_o_mis3_NZ1%256;
        u16 NO2_ADC1_o_mis3_NZ1_high = (NO2_ADC1_o_mis3_NZ1-NO2_ADC1_o_mis3_NZ1_low)/256;
        u16 NO2_ADC1_o_mis4_NZ1_low  =  NO2_ADC1_o_mis4_NZ1%256;
        u16 NO2_ADC1_o_mis4_NZ1_high = (NO2_ADC1_o_mis4_NZ1-NO2_ADC1_o_mis4_NZ1_low)/256;
        u16 NO2_ADC1_g_mis2_NZ1_low  =  NO2_ADC1_g_mis2_NZ1%256;
        u16 NO2_ADC1_g_mis2_NZ1_high = (NO2_ADC1_g_mis2_NZ1-NO2_ADC1_g_mis2_NZ1_low)/256;
        u16 NO2_ADC1_g_mis3_NZ1_low  =  NO2_ADC1_g_mis3_NZ1%256;
        u16 NO2_ADC1_g_mis3_NZ1_high = (NO2_ADC1_g_mis3_NZ1-NO2_ADC1_g_mis3_NZ1_low)/256;
        u16 NO2_ADC1_g_mis4_NZ1_low  =  NO2_ADC1_g_mis4_NZ1%256;
        u16 NO2_ADC1_g_mis4_NZ1_high = (NO2_ADC1_g_mis4_NZ1-NO2_ADC1_g_mis4_NZ1_low)/256;
        u16 NO2_ADC1_t_mis1_NZ1_low  =  NO2_ADC1_t_mis1_NZ1%256;
        u16 NO2_ADC1_t_mis1_NZ1_high = (NO2_ADC1_t_mis1_NZ1-NO2_ADC1_t_mis1_NZ1_low)/256;
        u16 NO2_ADC1_t_mis2_NZ1_low  =  NO2_ADC1_t_mis2_NZ1%256;
        u16 NO2_ADC1_t_mis2_NZ1_high = (NO2_ADC1_t_mis2_NZ1-NO2_ADC1_t_mis2_NZ1_low)/256;
        u16 NO2_ADC1_t_mis3_NZ1_low  =  NO2_ADC1_t_mis3_NZ1%256;
        u16 NO2_ADC1_t_mis3_NZ1_high = (NO2_ADC1_t_mis3_NZ1-NO2_ADC1_t_mis3_NZ1_low)/256;
        u16 NO2_ADC1_t_mis4_NZ1_low  =  NO2_ADC1_t_mis4_NZ1%256;
        u16 NO2_ADC1_t_mis4_NZ1_high = (NO2_ADC1_t_mis4_NZ1-NO2_ADC1_t_mis4_NZ1_low)/256;

        u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

        NO2_EFUSE_data = control_efuse(spi_base_addr,  0, NO2_ADC1_o_mis1_NZ1_low, NO2_ADC1_o_mis1_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  2, NO2_ADC1_o_mis2_NZ1_low, NO2_ADC1_o_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  4, NO2_ADC1_o_mis3_NZ1_low, NO2_ADC1_o_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  6, NO2_ADC1_o_mis4_NZ1_low, NO2_ADC1_o_mis4_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr,  8, NO2_ADC1_g_mis2_NZ1_low, NO2_ADC1_g_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 10, NO2_ADC1_g_mis3_NZ1_low, NO2_ADC1_g_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 12, NO2_ADC1_g_mis4_NZ1_low, NO2_ADC1_g_mis4_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 14, NO2_ADC1_t_mis1_NZ1_low, NO2_ADC1_t_mis1_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 16, NO2_ADC1_t_mis2_NZ1_low, NO2_ADC1_t_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 18, NO2_ADC1_t_mis3_NZ1_low, NO2_ADC1_t_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 20, NO2_ADC1_t_mis4_NZ1_low, NO2_ADC1_t_mis4_NZ1_high);
    	}
    	else{
        u16 NO2_ADC2_o_mis1_NZ1_low =   NO2_ADC2_o_mis1_NZ1%256;//prepare to write eFuse
        u16 NO2_ADC2_o_mis1_NZ1_high = (NO2_ADC2_o_mis1_NZ1-NO2_ADC2_o_mis1_NZ1_low)/256;
        u16 NO2_ADC2_o_mis2_NZ1_low =   NO2_ADC2_o_mis2_NZ1%256;
        u16 NO2_ADC2_o_mis2_NZ1_high = (NO2_ADC2_o_mis2_NZ1-NO2_ADC2_o_mis2_NZ1_low)/256;
        u16 NO2_ADC2_o_mis3_NZ1_low  =  NO2_ADC2_o_mis3_NZ1%256;
        u16 NO2_ADC2_o_mis3_NZ1_high = (NO2_ADC2_o_mis3_NZ1-NO2_ADC2_o_mis3_NZ1_low)/256;
        u16 NO2_ADC2_o_mis4_NZ1_low  =  NO2_ADC2_o_mis4_NZ1%256;
        u16 NO2_ADC2_o_mis4_NZ1_high = (NO2_ADC2_o_mis4_NZ1-NO2_ADC2_o_mis4_NZ1_low)/256;
        u16 NO2_ADC2_g_mis2_NZ1_low  =  NO2_ADC2_g_mis2_NZ1%256;
        u16 NO2_ADC2_g_mis2_NZ1_high = (NO2_ADC2_g_mis2_NZ1-NO2_ADC2_g_mis2_NZ1_low)/256;
        u16 NO2_ADC2_g_mis3_NZ1_low  =  NO2_ADC2_g_mis3_NZ1%256;
        u16 NO2_ADC2_g_mis3_NZ1_high = (NO2_ADC2_g_mis3_NZ1-NO2_ADC2_g_mis3_NZ1_low)/256;
        u16 NO2_ADC2_g_mis4_NZ1_low  =  NO2_ADC2_g_mis4_NZ1%256;
        u16 NO2_ADC2_g_mis4_NZ1_high = (NO2_ADC2_g_mis4_NZ1-NO2_ADC2_g_mis4_NZ1_low)/256;
        u16 NO2_ADC2_t_mis1_NZ1_low  =  NO2_ADC2_t_mis1_NZ1%256;
        u16 NO2_ADC2_t_mis1_NZ1_high = (NO2_ADC2_t_mis1_NZ1-NO2_ADC2_t_mis1_NZ1_low)/256;
        u16 NO2_ADC2_t_mis2_NZ1_low  =  NO2_ADC2_t_mis2_NZ1%256;
        u16 NO2_ADC2_t_mis2_NZ1_high = (NO2_ADC2_t_mis2_NZ1-NO2_ADC2_t_mis2_NZ1_low)/256;
        u16 NO2_ADC2_t_mis3_NZ1_low  =  NO2_ADC2_t_mis3_NZ1%256;
        u16 NO2_ADC2_t_mis3_NZ1_high = (NO2_ADC2_t_mis3_NZ1-NO2_ADC2_t_mis3_NZ1_low)/256;
        u16 NO2_ADC2_t_mis4_NZ1_low  =  NO2_ADC2_t_mis4_NZ1%256;
        u16 NO2_ADC2_t_mis4_NZ1_high = (NO2_ADC2_t_mis4_NZ1-NO2_ADC2_t_mis4_NZ1_low)/256;

        u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

        NO2_EFUSE_data = control_efuse(spi_base_addr, 122, NO2_ADC2_o_mis1_NZ1_low, NO2_ADC2_o_mis1_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 124, NO2_ADC2_o_mis2_NZ1_low, NO2_ADC2_o_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 126, NO2_ADC2_o_mis3_NZ1_low, NO2_ADC2_o_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 128, NO2_ADC2_o_mis4_NZ1_low, NO2_ADC2_o_mis4_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 130, NO2_ADC2_g_mis2_NZ1_low, NO2_ADC2_g_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 132, NO2_ADC2_g_mis3_NZ1_low, NO2_ADC2_g_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 134, NO2_ADC2_g_mis4_NZ1_low, NO2_ADC2_g_mis4_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 136, NO2_ADC2_t_mis1_NZ1_low, NO2_ADC2_t_mis1_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 138, NO2_ADC2_t_mis2_NZ1_low, NO2_ADC2_t_mis2_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 140, NO2_ADC2_t_mis3_NZ1_low, NO2_ADC2_t_mis3_NZ1_high);
        NO2_EFUSE_data = control_efuse(spi_base_addr, 142, NO2_ADC2_t_mis4_NZ1_low, NO2_ADC2_t_mis4_NZ1_high);
    	}
        }
    if(NO2_TI_EFUSE_read_key){

        spi_send(spi_base_addr, 0x8803, 0x5034);
        spi_send(spi_base_addr, 0x8804, 0x4A2A);
    	if(NO2_channel_efuse_key)
    	{
        spi_send(spi_base_addr, 0x8805,  0);usleep(100000);NO2_ADC1_o_mis1_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  2);usleep(100000);NO2_ADC1_o_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  4);usleep(100000);NO2_ADC1_o_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  6);usleep(100000);NO2_ADC1_o_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805,  8);usleep(100000);NO2_ADC1_g_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 10);usleep(100000);NO2_ADC1_g_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 12);usleep(100000);NO2_ADC1_g_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 14);usleep(100000);NO2_ADC1_t_mis1_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 16);usleep(100000);NO2_ADC1_t_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 18);usleep(100000);NO2_ADC1_t_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 20);usleep(100000);NO2_ADC1_t_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
    	}
    	else{
        spi_send(spi_base_addr, 0x8805, 122);usleep(100000);NO2_ADC2_o_mis1_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 124);usleep(100000);NO2_ADC2_o_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 126);usleep(100000);NO2_ADC2_o_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 128);usleep(100000);NO2_ADC2_o_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 130);usleep(100000);NO2_ADC2_g_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 132);usleep(100000);NO2_ADC2_g_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 134);usleep(100000);NO2_ADC2_g_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 136);usleep(100000);NO2_ADC2_t_mis1_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 138);usleep(100000);NO2_ADC2_t_mis2_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 140);usleep(100000);NO2_ADC2_t_mis3_NZ1 = spi_recv(spi_base_addr, 0x0805);
        spi_send(spi_base_addr, 0x8805, 142);usleep(100000);NO2_ADC2_t_mis4_NZ1 = spi_recv(spi_base_addr, 0x0805);
    	}
    }
////*****************************************************************************************************************************************//

////*************************************************offset_cal_Efuse******************************************************************************//
if(NO2_offset_cal_write_key){
    	if(NO2_channel_efuse_key)
    {
	//////////////////ADC1
     volatile u8 NO2_adc1_1_offset_1_low  =  NO2_adc1_1_offset_1%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_1_high = (NO2_adc1_1_offset_1-NO2_adc1_1_offset_1_low)/256;
     volatile u8 NO2_adc1_1_offset_2_low  =  NO2_adc1_1_offset_2%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_2_high = (NO2_adc1_1_offset_2-NO2_adc1_1_offset_2_low)/256;
     volatile u8 NO2_adc1_1_offset_3_low  =  NO2_adc1_1_offset_3%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_3_high = (NO2_adc1_1_offset_3-NO2_adc1_1_offset_3_low)/256;
     volatile u8 NO2_adc1_1_offset_4_low  =  NO2_adc1_1_offset_4%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_4_high = (NO2_adc1_1_offset_4-NO2_adc1_1_offset_4_low)/256;
     volatile u8 NO2_adc1_1_offset_5_low  =  NO2_adc1_1_offset_5%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_5_high = (NO2_adc1_1_offset_5-NO2_adc1_1_offset_5_low)/256;
     volatile u8 NO2_adc1_1_offset_6_low  =  NO2_adc1_1_offset_6%256;//prepare to write eFuse
     volatile u8 NO2_adc1_1_offset_6_high = (NO2_adc1_1_offset_6-NO2_adc1_1_offset_6_low)/256;

     volatile u8 NO2_adc1_2_offset_1_low  =  NO2_adc1_2_offset_1%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_1_high = (NO2_adc1_2_offset_1-NO2_adc1_2_offset_1_low)/256;
     volatile u8 NO2_adc1_2_offset_2_low  =  NO2_adc1_2_offset_2%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_2_high = (NO2_adc1_2_offset_2-NO2_adc1_2_offset_2_low)/256;
     volatile u8 NO2_adc1_2_offset_3_low  =  NO2_adc1_2_offset_3%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_3_high = (NO2_adc1_2_offset_3-NO2_adc1_2_offset_3_low)/256;
     volatile u8 NO2_adc1_2_offset_4_low  =  NO2_adc1_2_offset_4%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_4_high = (NO2_adc1_2_offset_4-NO2_adc1_2_offset_4_low)/256;
     volatile u8 NO2_adc1_2_offset_5_low  =  NO2_adc1_2_offset_5%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_5_high = (NO2_adc1_2_offset_5-NO2_adc1_2_offset_5_low)/256;
     volatile u8 NO2_adc1_2_offset_6_low  =  NO2_adc1_2_offset_6%256;//prepare to write eFuse
     volatile u8 NO2_adc1_2_offset_6_high = (NO2_adc1_2_offset_6-NO2_adc1_2_offset_6_low)/256;


     volatile u8 NO2_adc1_3_offset_1_low  =  NO2_adc1_3_offset_1%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_1_high = (NO2_adc1_3_offset_1-NO2_adc1_3_offset_1_low)/256;
     volatile u8 NO2_adc1_3_offset_2_low  =  NO2_adc1_3_offset_2%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_2_high = (NO2_adc1_3_offset_2-NO2_adc1_3_offset_2_low)/256;
     volatile u8 NO2_adc1_3_offset_3_low  =  NO2_adc1_3_offset_3%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_3_high = (NO2_adc1_3_offset_3-NO2_adc1_3_offset_3_low)/256;
     volatile u8 NO2_adc1_3_offset_4_low  =  NO2_adc1_3_offset_4%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_4_high = (NO2_adc1_3_offset_4-NO2_adc1_3_offset_4_low)/256;
     volatile u8 NO2_adc1_3_offset_5_low  =  NO2_adc1_3_offset_5%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_5_high = (NO2_adc1_3_offset_5-NO2_adc1_3_offset_5_low)/256;
     volatile u8 NO2_adc1_3_offset_6_low  =  NO2_adc1_3_offset_6%256;//prepare to write eFuse
     volatile u8 NO2_adc1_3_offset_6_high = (NO2_adc1_3_offset_6-NO2_adc1_3_offset_6_low)/256;

     volatile u8 NO2_adc1_4_offset_1_low  =  NO2_adc1_4_offset_1%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_1_high = (NO2_adc1_4_offset_1-NO2_adc1_4_offset_1_low)/256;
     volatile u8 NO2_adc1_4_offset_2_low  =  NO2_adc1_4_offset_2%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_2_high = (NO2_adc1_4_offset_2-NO2_adc1_4_offset_2_low)/256;
     volatile u8 NO2_adc1_4_offset_3_low  =  NO2_adc1_4_offset_3%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_3_high = (NO2_adc1_4_offset_3-NO2_adc1_4_offset_3_low)/256;
     volatile u8 NO2_adc1_4_offset_4_low  =  NO2_adc1_4_offset_4%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_4_high = (NO2_adc1_4_offset_4-NO2_adc1_4_offset_4_low)/256;
     volatile u8 NO2_adc1_4_offset_5_low  =  NO2_adc1_4_offset_5%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_5_high = (NO2_adc1_4_offset_5-NO2_adc1_4_offset_5_low)/256;
     volatile u8 NO2_adc1_4_offset_6_low  =  NO2_adc1_4_offset_6%256;//prepare to write eFuse
     volatile u8 NO2_adc1_4_offset_6_high = (NO2_adc1_4_offset_6-NO2_adc1_4_offset_6_low)/256;

     u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

     NO2_EFUSE_data = control_efuse(spi_base_addr, 276,  NO2_adc1_1_offset_1_low,  NO2_adc1_1_offset_1_high);
     NO2_EFUSE_data = control_efuse(spi_base_addr, 278,  NO2_adc1_1_offset_2_low,  NO2_adc1_1_offset_2_high);
     NO2_EFUSE_data = control_efuse(spi_base_addr, 280,  NO2_adc1_1_offset_3_low,  NO2_adc1_1_offset_3_high);
     NO2_EFUSE_data = control_efuse(spi_base_addr, 282,  NO2_adc1_1_offset_4_low,  NO2_adc1_1_offset_4_high);
     NO2_EFUSE_data = control_efuse(spi_base_addr, 284,  NO2_adc1_1_offset_5_low,  NO2_adc1_1_offset_5_high);
     NO2_EFUSE_data = control_efuse(spi_base_addr, 286,  NO2_adc1_1_offset_6_low,  NO2_adc1_1_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 288,  NO2_adc1_2_offset_1_low,  NO2_adc1_2_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 290,  NO2_adc1_2_offset_2_low,  NO2_adc1_2_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 292,  NO2_adc1_2_offset_3_low,  NO2_adc1_2_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 294,  NO2_adc1_2_offset_4_low,  NO2_adc1_2_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 296,  NO2_adc1_2_offset_5_low,  NO2_adc1_2_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 298,  NO2_adc1_2_offset_6_low,  NO2_adc1_2_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 300,  NO2_adc1_3_offset_1_low,  NO2_adc1_3_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 302,  NO2_adc1_3_offset_2_low,  NO2_adc1_3_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 304,  NO2_adc1_3_offset_3_low,  NO2_adc1_3_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 306,  NO2_adc1_3_offset_4_low,  NO2_adc1_3_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 308,  NO2_adc1_3_offset_5_low,  NO2_adc1_3_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 310,  NO2_adc1_3_offset_6_low,  NO2_adc1_3_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 312,  NO2_adc1_4_offset_1_low,  NO2_adc1_4_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 314,  NO2_adc1_4_offset_2_low,  NO2_adc1_4_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 316,  NO2_adc1_4_offset_3_low,  NO2_adc1_4_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 318,  NO2_adc1_4_offset_4_low,  NO2_adc1_4_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 320,  NO2_adc1_4_offset_5_low,  NO2_adc1_4_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 322,  NO2_adc1_4_offset_6_low,  NO2_adc1_4_offset_6_high);
    }

     else{
	 ////////ADC2
     volatile u8  NO2_adc2_1_offset_1_low  =   NO2_adc2_1_offset_1%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_1_high = ( NO2_adc2_1_offset_1- NO2_adc2_1_offset_1_low)/256;
     volatile u8  NO2_adc2_1_offset_2_low  =   NO2_adc2_1_offset_2%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_2_high = ( NO2_adc2_1_offset_2- NO2_adc2_1_offset_2_low)/256;
     volatile u8  NO2_adc2_1_offset_3_low  =   NO2_adc2_1_offset_3%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_3_high = ( NO2_adc2_1_offset_3- NO2_adc2_1_offset_3_low)/256;
     volatile u8  NO2_adc2_1_offset_4_low  =   NO2_adc2_1_offset_4%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_4_high = ( NO2_adc2_1_offset_4- NO2_adc2_1_offset_4_low)/256;
     volatile u8  NO2_adc2_1_offset_5_low  =   NO2_adc2_1_offset_5%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_5_high = ( NO2_adc2_1_offset_5- NO2_adc2_1_offset_5_low)/256;
     volatile u8  NO2_adc2_1_offset_6_low  =   NO2_adc2_1_offset_6%256;//prepare to write eFuse
     volatile u8  NO2_adc2_1_offset_6_high = ( NO2_adc2_1_offset_6- NO2_adc2_1_offset_6_low)/256;

     volatile u8  NO2_adc2_2_offset_1_low  =   NO2_adc2_2_offset_1%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_1_high = ( NO2_adc2_2_offset_1- NO2_adc2_2_offset_1_low)/256;
     volatile u8  NO2_adc2_2_offset_2_low  =   NO2_adc2_2_offset_2%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_2_high = ( NO2_adc2_2_offset_2- NO2_adc2_2_offset_2_low)/256;
     volatile u8  NO2_adc2_2_offset_3_low  =   NO2_adc2_2_offset_3%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_3_high = ( NO2_adc2_2_offset_3- NO2_adc2_2_offset_3_low)/256;
     volatile u8  NO2_adc2_2_offset_4_low  =   NO2_adc2_2_offset_4%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_4_high = ( NO2_adc2_2_offset_4- NO2_adc2_2_offset_4_low)/256;
     volatile u8  NO2_adc2_2_offset_5_low  =   NO2_adc2_2_offset_5%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_5_high = ( NO2_adc2_2_offset_5- NO2_adc2_2_offset_5_low)/256;
     volatile u8  NO2_adc2_2_offset_6_low  =   NO2_adc2_2_offset_6%256;//prepare to write eFuse
     volatile u8  NO2_adc2_2_offset_6_high = ( NO2_adc2_2_offset_6- NO2_adc2_2_offset_6_low)/256;


     volatile u8  NO2_adc2_3_offset_1_low  =   NO2_adc2_3_offset_1%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_1_high = ( NO2_adc2_3_offset_1- NO2_adc2_3_offset_1_low)/256;
     volatile u8  NO2_adc2_3_offset_2_low  =   NO2_adc2_3_offset_2%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_2_high = ( NO2_adc2_3_offset_2- NO2_adc2_3_offset_2_low)/256;
     volatile u8  NO2_adc2_3_offset_3_low  =   NO2_adc2_3_offset_3%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_3_high = ( NO2_adc2_3_offset_3- NO2_adc2_3_offset_3_low)/256;
     volatile u8  NO2_adc2_3_offset_4_low  =   NO2_adc2_3_offset_4%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_4_high = ( NO2_adc2_3_offset_4- NO2_adc2_3_offset_4_low)/256;
     volatile u8  NO2_adc2_3_offset_5_low  =   NO2_adc2_3_offset_5%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_5_high = ( NO2_adc2_3_offset_5- NO2_adc2_3_offset_5_low)/256;
     volatile u8  NO2_adc2_3_offset_6_low  =   NO2_adc2_3_offset_6%256;//prepare to write eFuse
     volatile u8  NO2_adc2_3_offset_6_high = ( NO2_adc2_3_offset_6- NO2_adc2_3_offset_6_low)/256;

     volatile u8  NO2_adc2_4_offset_1_low  =   NO2_adc2_4_offset_1%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_1_high = ( NO2_adc2_4_offset_1- NO2_adc2_4_offset_1_low)/256;
     volatile u8  NO2_adc2_4_offset_2_low  =   NO2_adc2_4_offset_2%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_2_high = ( NO2_adc2_4_offset_2- NO2_adc2_4_offset_2_low)/256;
     volatile u8  NO2_adc2_4_offset_3_low  =   NO2_adc2_4_offset_3%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_3_high = ( NO2_adc2_4_offset_3- NO2_adc2_4_offset_3_low)/256;
     volatile u8  NO2_adc2_4_offset_4_low  =   NO2_adc2_4_offset_4%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_4_high = ( NO2_adc2_4_offset_4- NO2_adc2_4_offset_4_low)/256;
     volatile u8  NO2_adc2_4_offset_5_low  =   NO2_adc2_4_offset_5%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_5_high = ( NO2_adc2_4_offset_5- NO2_adc2_4_offset_5_low)/256;
     volatile u8  NO2_adc2_4_offset_6_low  =   NO2_adc2_4_offset_6%256;//prepare to write eFuse
     volatile u8  NO2_adc2_4_offset_6_high = ( NO2_adc2_4_offset_6- NO2_adc2_4_offset_6_low)/256;

     u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8);

	////ADC2
	  NO2_EFUSE_data = control_efuse(spi_base_addr, 328,  NO2_adc2_1_offset_1_low,  NO2_adc2_1_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 330,  NO2_adc2_1_offset_2_low,  NO2_adc2_1_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 332,  NO2_adc2_1_offset_3_low,  NO2_adc2_1_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 334,  NO2_adc2_1_offset_4_low,  NO2_adc2_1_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 336,  NO2_adc2_1_offset_5_low,  NO2_adc2_1_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 338,  NO2_adc2_1_offset_6_low,  NO2_adc2_1_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 340,  NO2_adc2_2_offset_1_low,  NO2_adc2_2_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 342,  NO2_adc2_2_offset_2_low,  NO2_adc2_2_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 344,  NO2_adc2_2_offset_3_low,  NO2_adc2_2_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 346,  NO2_adc2_2_offset_4_low,  NO2_adc2_2_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 348,  NO2_adc2_2_offset_5_low,  NO2_adc2_2_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 350,  NO2_adc2_2_offset_6_low,  NO2_adc2_2_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 352,  NO2_adc2_3_offset_1_low,  NO2_adc2_3_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 354,  NO2_adc2_3_offset_2_low,  NO2_adc2_3_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 356,  NO2_adc2_3_offset_3_low,  NO2_adc2_3_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 358,  NO2_adc2_3_offset_4_low,  NO2_adc2_3_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 360,  NO2_adc2_3_offset_5_low,  NO2_adc2_3_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 362,  NO2_adc2_3_offset_6_low,  NO2_adc2_3_offset_6_high);

      NO2_EFUSE_data = control_efuse(spi_base_addr, 364,  NO2_adc2_4_offset_1_low,  NO2_adc2_4_offset_1_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 366,  NO2_adc2_4_offset_2_low,  NO2_adc2_4_offset_2_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 368,  NO2_adc2_4_offset_3_low,  NO2_adc2_4_offset_3_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 370,  NO2_adc2_4_offset_4_low,  NO2_adc2_4_offset_4_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 372,  NO2_adc2_4_offset_5_low,  NO2_adc2_4_offset_5_high);
      NO2_EFUSE_data = control_efuse(spi_base_addr, 374,  NO2_adc2_4_offset_6_low,  NO2_adc2_4_offset_6_high);
     }
        }
    if(NO2_offset_cal_read_key){

    spi_send(spi_base_addr, 0x8803, 0x5034);
    spi_send(spi_base_addr, 0x8804, 0x4A2A);
	if(NO2_channel_efuse_key)
	{
	/////////ADC1
    spi_send(spi_base_addr, 0x8805,  276 );usleep(100000); NO2_adc1_1_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  278 );usleep(100000); NO2_adc1_1_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  280 );usleep(100000); NO2_adc1_1_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  282 );usleep(100000); NO2_adc1_1_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  284 );usleep(100000); NO2_adc1_1_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  286 );usleep(100000); NO2_adc1_1_offset_6 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  288 );usleep(100000); NO2_adc1_2_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  290 );usleep(100000); NO2_adc1_2_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  292 );usleep(100000); NO2_adc1_2_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  294 );usleep(100000); NO2_adc1_2_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  296 );usleep(100000); NO2_adc1_2_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  298 );usleep(100000); NO2_adc1_2_offset_5 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  300 );usleep(100000); NO2_adc1_3_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  302 );usleep(100000); NO2_adc1_3_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  304 );usleep(100000); NO2_adc1_3_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  306 );usleep(100000); NO2_adc1_3_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  308 );usleep(100000); NO2_adc1_3_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  310 );usleep(100000); NO2_adc1_3_offset_6 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  312 );usleep(100000); NO2_adc1_4_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  314 );usleep(100000); NO2_adc1_4_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  316 );usleep(100000); NO2_adc1_4_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  318 );usleep(100000); NO2_adc1_4_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  320 );usleep(100000); NO2_adc1_4_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  322 );usleep(100000); NO2_adc1_4_offset_6 = spi_recv(spi_base_addr, 0x0805);

    offset_cal(spi_base_addr,   NO2_adc1_1_offset_1, NO2_adc1_1_offset_2, NO2_adc1_1_offset_3, NO2_adc1_1_offset_4, NO2_adc1_1_offset_5, NO2_adc1_1_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 1);
	offset_cal(spi_base_addr,   NO2_adc1_2_offset_1, NO2_adc1_2_offset_2, NO2_adc1_2_offset_3, NO2_adc1_2_offset_4, NO2_adc1_2_offset_5, NO2_adc1_2_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 2);
	offset_cal(spi_base_addr,   NO2_adc1_3_offset_1, NO2_adc1_3_offset_2, NO2_adc1_3_offset_3, NO2_adc1_3_offset_4, NO2_adc1_3_offset_5, NO2_adc1_3_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 3);
	offset_cal(spi_base_addr,   NO2_adc1_4_offset_1, NO2_adc1_4_offset_2, NO2_adc1_4_offset_3, NO2_adc1_4_offset_4, NO2_adc1_4_offset_5, NO2_adc1_4_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 4);
	}

	else{
	/////////ADC2
	spi_send(spi_base_addr, 0x8805,  328 );usleep(100000); NO2_adc2_1_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  330 );usleep(100000); NO2_adc2_1_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  332 );usleep(100000); NO2_adc2_1_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  334 );usleep(100000); NO2_adc2_1_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  336 );usleep(100000); NO2_adc2_1_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  338 );usleep(100000); NO2_adc2_1_offset_6 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  340 );usleep(100000); NO2_adc2_2_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  342 );usleep(100000); NO2_adc2_2_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  344 );usleep(100000); NO2_adc2_2_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  346 );usleep(100000); NO2_adc2_2_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  348 );usleep(100000); NO2_adc2_2_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  350 );usleep(100000); NO2_adc2_2_offset_5 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  352 );usleep(100000); NO2_adc2_3_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  354 );usleep(100000); NO2_adc2_3_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  356 );usleep(100000); NO2_adc2_3_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  358 );usleep(100000); NO2_adc2_3_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  360 );usleep(100000); NO2_adc2_3_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  362 );usleep(100000); NO2_adc2_3_offset_6 = spi_recv(spi_base_addr, 0x0805);

    spi_send(spi_base_addr, 0x8805,  364 );usleep(100000); NO2_adc2_4_offset_1 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  366 );usleep(100000); NO2_adc2_4_offset_2 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  368 );usleep(100000); NO2_adc2_4_offset_3 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  370 );usleep(100000); NO2_adc2_4_offset_4 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  372 );usleep(100000); NO2_adc2_4_offset_5 = spi_recv(spi_base_addr, 0x0805);
    spi_send(spi_base_addr, 0x8805,  374 );usleep(100000); NO2_adc2_4_offset_6 = spi_recv(spi_base_addr, 0x0805);

    offset_cal(spi_base_addr,   NO2_adc1_1_offset_1, NO2_adc1_1_offset_2, NO2_adc1_1_offset_3, NO2_adc1_1_offset_4, NO2_adc1_1_offset_5, NO2_adc1_1_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 5);
	offset_cal(spi_base_addr,   NO2_adc1_2_offset_1, NO2_adc1_2_offset_2, NO2_adc1_2_offset_3, NO2_adc1_2_offset_4, NO2_adc1_2_offset_5, NO2_adc1_2_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 6);
	offset_cal(spi_base_addr,   NO2_adc1_3_offset_1, NO2_adc1_3_offset_2, NO2_adc1_3_offset_3, NO2_adc1_3_offset_4, NO2_adc1_3_offset_5, NO2_adc1_3_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 7);
	offset_cal(spi_base_addr,   NO2_adc1_4_offset_1, NO2_adc1_4_offset_2, NO2_adc1_4_offset_3, NO2_adc1_4_offset_4, NO2_adc1_4_offset_5, NO2_adc1_4_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 8);
	}
        }

    if(!NO2_offset_cal_read_key){
    ///////ADC1CHAN
    offset_cal(spi_base_addr,   NO2_adc1_1_offset_1, NO2_adc1_1_offset_2, NO2_adc1_1_offset_3, NO2_adc1_1_offset_4, NO2_adc1_1_offset_5, NO2_adc1_1_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 1);
    offset_cal(spi_base_addr,   NO2_adc1_2_offset_1, NO2_adc1_2_offset_2, NO2_adc1_2_offset_3, NO2_adc1_2_offset_4, NO2_adc1_2_offset_5, NO2_adc1_2_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 2);
    offset_cal(spi_base_addr,   NO2_adc1_3_offset_1, NO2_adc1_3_offset_2, NO2_adc1_3_offset_3, NO2_adc1_3_offset_4, NO2_adc1_3_offset_5, NO2_adc1_3_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 3);
    offset_cal(spi_base_addr,   NO2_adc1_4_offset_1, NO2_adc1_4_offset_2, NO2_adc1_4_offset_3, NO2_adc1_4_offset_4, NO2_adc1_4_offset_5, NO2_adc1_4_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 4);
    //////ADC2CHAN
    offset_cal(spi_base_addr,   NO2_adc2_1_offset_1, NO2_adc2_1_offset_2, NO2_adc2_1_offset_3, NO2_adc2_1_offset_4, NO2_adc2_1_offset_5, NO2_adc2_1_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 5);
    offset_cal(spi_base_addr,   NO2_adc2_2_offset_1, NO2_adc2_2_offset_2, NO2_adc2_2_offset_3, NO2_adc2_2_offset_4, NO2_adc2_2_offset_5, NO2_adc2_2_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 6);
    offset_cal(spi_base_addr,   NO2_adc2_3_offset_1, NO2_adc2_3_offset_2, NO2_adc2_3_offset_3, NO2_adc2_3_offset_4, NO2_adc2_3_offset_5, NO2_adc2_3_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 7);
    offset_cal(spi_base_addr,   NO2_adc2_4_offset_1, NO2_adc2_4_offset_2, NO2_adc2_4_offset_3, NO2_adc2_4_offset_4, NO2_adc2_4_offset_5, NO2_adc2_4_offset_6, 0,0,0,0,0,0, 0,0,0,0,0,0, 8);
    }
////****************************************************************************************************************************************////



////**********************************************************cap_cal******************************************************************************////
if(NO2_cap_cal_key){
        spi_send(spi_base_addr, 126,  NO2_ADC1_C_weight1_1_2and1);
        spi_send(spi_base_addr, 127,  NO2_ADC1_C_weight1_1_4and3);
        spi_send(spi_base_addr, 128,  NO2_ADC1_C_weight1_1_6and5);
        spi_send(spi_base_addr, 129,  NO2_ADC1_C_weight1_2_2and1);
        spi_send(spi_base_addr, 130,  NO2_ADC1_C_weight1_2_4and3);
        spi_send(spi_base_addr, 131,  NO2_ADC1_C_weight1_2_6and5);
        spi_send(spi_base_addr, 132,  NO2_ADC1_C_weight1_3_2and1);
        spi_send(spi_base_addr, 133,  NO2_ADC1_C_weight1_3_4and3);
        spi_send(spi_base_addr, 134,  NO2_ADC1_C_weight1_3_6and5);
        spi_send(spi_base_addr, 135,  NO2_ADC1_C_weight2_1_2and1);
        spi_send(spi_base_addr, 136,  NO2_ADC1_C_weight2_1_4and3);
        spi_send(spi_base_addr, 137,  NO2_ADC1_C_weight2_1_6and5);
        spi_send(spi_base_addr, 138,  NO2_ADC1_C_weight2_2_2and1);
        spi_send(spi_base_addr, 139,  NO2_ADC1_C_weight2_2_4and3);
        spi_send(spi_base_addr, 140,  NO2_ADC1_C_weight2_2_6and5);
        spi_send(spi_base_addr, 141,  NO2_ADC1_C_weight2_3_2and1);
        spi_send(spi_base_addr, 142,  NO2_ADC1_C_weight2_3_4and3);
        spi_send(spi_base_addr, 143,  NO2_ADC1_C_weight2_3_6and5);
        spi_send(spi_base_addr, 144,  NO2_ADC1_C_weight3_1_2and1);
        spi_send(spi_base_addr, 145,  NO2_ADC1_C_weight3_1_4and3);
        spi_send(spi_base_addr, 146,  NO2_ADC1_C_weight3_1_6and5);
        spi_send(spi_base_addr, 147,  NO2_ADC1_C_weight3_2_2and1);
        spi_send(spi_base_addr, 148,  NO2_ADC1_C_weight3_2_4and3);
        spi_send(spi_base_addr, 149,  NO2_ADC1_C_weight3_2_6and5);
        spi_send(spi_base_addr, 150,  NO2_ADC1_C_weight3_3_2and1);
        spi_send(spi_base_addr, 151,  NO2_ADC1_C_weight3_3_4and3);
        spi_send(spi_base_addr, 152,  NO2_ADC1_C_weight3_3_6and5);
        spi_send(spi_base_addr, 153,  NO2_ADC1_C_weight4_1_2and1);
        spi_send(spi_base_addr, 154,  NO2_ADC1_C_weight4_1_4and3);
        spi_send(spi_base_addr, 155,  NO2_ADC1_C_weight4_1_6and5);
        spi_send(spi_base_addr, 156,  NO2_ADC1_C_weight4_2_2and1);
        spi_send(spi_base_addr, 157,  NO2_ADC1_C_weight4_2_4and3);
        spi_send(spi_base_addr, 158,  NO2_ADC1_C_weight4_2_6and5);
        spi_send(spi_base_addr, 159,  NO2_ADC1_C_weight4_3_2and1);
        spi_send(spi_base_addr, 160,  NO2_ADC1_C_weight4_3_4and3);
        spi_send(spi_base_addr, 161,  NO2_ADC1_C_weight4_3_6and5);
        spi_send(spi_base_addr, 162,  NO2_ADC1_MDAC_weight1_2and1);
        spi_send(spi_base_addr, 163,  NO2_ADC1_MDAC_weight1_3);
        spi_send(spi_base_addr, 164,  NO2_ADC1_MDAC_weight2_2and1);
        spi_send(spi_base_addr, 165,  NO2_ADC1_MDAC_weight2_3);
        spi_send(spi_base_addr, 166,  NO2_ADC1_MDAC_weight3_2and1);
        spi_send(spi_base_addr, 167,  NO2_ADC1_MDAC_weight3_3);
        spi_send(spi_base_addr, 168,  NO2_ADC1_MDAC_weight4_2and1);
        spi_send(spi_base_addr, 169,  NO2_ADC1_MDAC_weight4_3);
        spi_send(spi_base_addr, 28, 0xffff); // C_cal_key, MDAC_cal_key, key_C_cal_S, key_MDAC_cal_S

        spi_send(spi_base_addr, 512+126,  NO2_ADC2_C_weight1_1_2and1);
        spi_send(spi_base_addr, 512+127,  NO2_ADC2_C_weight1_1_4and3);
        spi_send(spi_base_addr, 512+128,  NO2_ADC2_C_weight1_1_6and5);
        spi_send(spi_base_addr, 512+129,  NO2_ADC2_C_weight1_2_2and1);
        spi_send(spi_base_addr, 512+130,  NO2_ADC2_C_weight1_2_4and3);
        spi_send(spi_base_addr, 512+131,  NO2_ADC2_C_weight1_2_6and5);
        spi_send(spi_base_addr, 512+132,  NO2_ADC2_C_weight1_3_2and1);
        spi_send(spi_base_addr, 512+133,  NO2_ADC2_C_weight1_3_4and3);
        spi_send(spi_base_addr, 512+134,  NO2_ADC2_C_weight1_3_6and5);
        spi_send(spi_base_addr, 512+135,  NO2_ADC2_C_weight2_1_2and1);
        spi_send(spi_base_addr, 512+136,  NO2_ADC2_C_weight2_1_4and3);
        spi_send(spi_base_addr, 512+137,  NO2_ADC2_C_weight2_1_6and5);
        spi_send(spi_base_addr, 512+138,  NO2_ADC2_C_weight2_2_2and1);
        spi_send(spi_base_addr, 512+139,  NO2_ADC2_C_weight2_2_4and3);
        spi_send(spi_base_addr, 512+140,  NO2_ADC2_C_weight2_2_6and5);
        spi_send(spi_base_addr, 512+141,  NO2_ADC2_C_weight2_3_2and1);
        spi_send(spi_base_addr, 512+142,  NO2_ADC2_C_weight2_3_4and3);
        spi_send(spi_base_addr, 512+143,  NO2_ADC2_C_weight2_3_6and5);
        spi_send(spi_base_addr, 512+144,  NO2_ADC2_C_weight3_1_2and1);
        spi_send(spi_base_addr, 512+145,  NO2_ADC2_C_weight3_1_4and3);
        spi_send(spi_base_addr, 512+146,  NO2_ADC2_C_weight3_1_6and5);
        spi_send(spi_base_addr, 512+147,  NO2_ADC2_C_weight3_2_2and1);
        spi_send(spi_base_addr, 512+148,  NO2_ADC2_C_weight3_2_4and3);
        spi_send(spi_base_addr, 512+149,  NO2_ADC2_C_weight3_2_6and5);
        spi_send(spi_base_addr, 512+150,  NO2_ADC2_C_weight3_3_2and1);
        spi_send(spi_base_addr, 512+151,  NO2_ADC2_C_weight3_3_4and3);
        spi_send(spi_base_addr, 512+152,  NO2_ADC2_C_weight3_3_6and5);
        spi_send(spi_base_addr, 512+153,  NO2_ADC2_C_weight4_1_2and1);
        spi_send(spi_base_addr, 512+154,  NO2_ADC2_C_weight4_1_4and3);
        spi_send(spi_base_addr, 512+155,  NO2_ADC2_C_weight4_1_6and5);
        spi_send(spi_base_addr, 512+156,  NO2_ADC2_C_weight4_2_2and1);
        spi_send(spi_base_addr, 512+157,  NO2_ADC2_C_weight4_2_4and3);
        spi_send(spi_base_addr, 512+158,  NO2_ADC2_C_weight4_2_6and5);
        spi_send(spi_base_addr, 512+159,  NO2_ADC2_C_weight4_3_2and1);
        spi_send(spi_base_addr, 512+160,  NO2_ADC2_C_weight4_3_4and3);
        spi_send(spi_base_addr, 512+161,  NO2_ADC2_C_weight4_3_6and5);
        spi_send(spi_base_addr, 512+162,  NO2_ADC2_MDAC_weight1_2and1);
        spi_send(spi_base_addr, 512+163,  NO2_ADC2_MDAC_weight1_3);
        spi_send(spi_base_addr, 512+164,  NO2_ADC2_MDAC_weight2_2and1);
        spi_send(spi_base_addr, 512+165,  NO2_ADC2_MDAC_weight2_3);
        spi_send(spi_base_addr, 512+166,  NO2_ADC2_MDAC_weight3_2and1);
        spi_send(spi_base_addr, 512+167,  NO2_ADC2_MDAC_weight3_3);
        spi_send(spi_base_addr, 512+168,  NO2_ADC2_MDAC_weight4_2and1);
        spi_send(spi_base_addr, 512+169,  NO2_ADC2_MDAC_weight4_3);
        spi_send(spi_base_addr, 512+28, 0xffff); // C_cal_key, MDAC_cal_key, key_C_cal_S, key_MDAC_cal_S
    }
////****************************************************************************************************************************************////
////*************************************************************TI_cal***************************************************************************////

    if(NO2_TI_cal_key){
		if(NO2_TI_cal_auto_key){
			if(NO2_low_NZ){
				spi_send(spi_base_addr, 27, 0x00FF); //skew_acc_sign = 1
			}
			else{
				spi_send(spi_base_addr, 27, 0x00F7); //skew_acc_sign = 0
			}
			spi_send(spi_base_addr,117,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,118,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,119,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,120,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,121,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr, 25, 1);//write wt=1
			spi_send(spi_base_addr, 25, 0);//write wt=1
			spi_send(spi_base_addr, 26, 0x0079); //write keys of TI cal(turn on offset cal)
			usleep(1000000);
			spi_send(spi_base_addr, 26, 0x007b); //write keys of TI cal(turn on gain cal)
			usleep(1000000);
			spi_send(spi_base_addr, 26, 0x007f); //write keys of TI cal(turn on skew cal)
//			usleep(1000000);
//			spi_send(spi_base_addr, 26, 0x0070);//write keys of TI cal(turn on skew cal)


			//ADC2
			if(NO2_low_NZ){
				spi_send(spi_base_addr, 512+27, 0x00FF);
			}
			else{
				spi_send(spi_base_addr, 512+27, 0x00F7);
			}
//			spi_send(spi_base_addr,512+117,(32*64+32));
//			spi_send(spi_base_addr,512+118,(32*64+32));
//			spi_send(spi_base_addr,512+119,(32*64+32));
//			spi_send(spi_base_addr,512+120,(32*64+48));
//			spi_send(spi_base_addr,512+121,(48*64+48));
//			spi_send(spi_base_addr,512+25, 1);//write wt=1
//			spi_send(spi_base_addr,512+25, 0);//write wt=1
//			spi_send(spi_base_addr, 512+26, 0x0079);
//			usleep(1000000);
//			spi_send(spi_base_addr, 512+26, 0x007b);
//			usleep(1000000);
//			spi_send(spi_base_addr, 512+26, 0x007f);
			spi_send(spi_base_addr,512+117,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,512+118,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,512+119,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,512+120,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,512+121,(20*64+20)); //TI truncated by 32bit
			spi_send(spi_base_addr,512+25, 1);//write wt=1
			spi_send(spi_base_addr,512+25, 0);//write wt=1
			spi_send(spi_base_addr, 512+26, 0x0079);
			usleep(1000000);
			spi_send(spi_base_addr, 512+26, 0x007b);
			usleep(1000000);
			spi_send(spi_base_addr, 512+26, 0x007f);
			spi_send(spi_base_addr, 26, 0x007f); //write keys of TI cal(turn on skew cal)
//			usleep(1000000);
//			spi_send(spi_base_addr, 26, 0x0070);//write keys of TI cal(turn on skew cal)


		}

		if(NO2_TI_cal_manual_key){   //NO2_TI_cal_manual_key=0 该段代码不运行
			if(NO2_low_NZ){
			spi_send(spi_base_addr, 26, 0x0000);
			spi_send(spi_base_addr, 32768+25, 1);//write wt=1
			spi_send(spi_base_addr, 32768+30,  NO2_ADC1_o_mis1_NZ1);//write o_mis1
			spi_send(spi_base_addr, 32768+31,  NO2_ADC1_o_mis2_NZ1);//write o_mis2
			spi_send(spi_base_addr, 32768+32,  NO2_ADC1_o_mis3_NZ1);//write o_mis3
			spi_send(spi_base_addr, 32768+33,  NO2_ADC1_o_mis4_NZ1);//write o_mis4
			spi_send(spi_base_addr, 32768+34,  NO2_ADC1_g_mis2_NZ1);//write g_mis2
			spi_send(spi_base_addr, 32768+35,  NO2_ADC1_g_mis3_NZ1);//write g_mis3
			spi_send(spi_base_addr, 32768+36,  NO2_ADC1_g_mis4_NZ1);//write g_mis4
			spi_send(spi_base_addr, 32768+13,  NO2_ADC1_t_mis1_NZ1);//write t_mis1
			spi_send(spi_base_addr, 32768+14,  NO2_ADC1_t_mis2_NZ1);//write t_mis2
			spi_send(spi_base_addr, 32768+15,  NO2_ADC1_t_mis3_NZ1);//write t_mis3
			spi_send(spi_base_addr, 32768+16,  NO2_ADC1_t_mis4_NZ1);//write t_mis4
			spi_send(spi_base_addr, 32768+25, 0);
			//ADC2
			spi_send(spi_base_addr, 512+26, 0x0000);
			spi_send(spi_base_addr, 32768+512+25, 1);//write wt=1
			spi_send(spi_base_addr, 32768+512+30,  NO2_ADC2_o_mis1_NZ1);
			spi_send(spi_base_addr, 32768+512+31,  NO2_ADC2_o_mis2_NZ1);
			spi_send(spi_base_addr, 32768+512+32,  NO2_ADC2_o_mis3_NZ1);
			spi_send(spi_base_addr, 32768+512+33,  NO2_ADC2_o_mis4_NZ1);
			spi_send(spi_base_addr, 32768+512+34,  NO2_ADC2_g_mis2_NZ1);
			spi_send(spi_base_addr, 32768+512+35,  NO2_ADC2_g_mis3_NZ1);
			spi_send(spi_base_addr, 32768+512+36,  NO2_ADC2_g_mis4_NZ1);
			spi_send(spi_base_addr, 32768+512+13,  NO2_ADC2_t_mis1_NZ1);
			spi_send(spi_base_addr, 32768+512+14,  NO2_ADC2_t_mis2_NZ1);
			spi_send(spi_base_addr, 32768+512+15,  NO2_ADC2_t_mis3_NZ1);
			spi_send(spi_base_addr, 32768+512+16,  NO2_ADC2_t_mis4_NZ1);
			spi_send(spi_base_addr, 32768+512+25, 0);
			}
		    else {
			spi_send(spi_base_addr, 26, 0x0000);
			spi_send(spi_base_addr, 32768+25, 1);//write wt=1
			spi_send(spi_base_addr, 32768+30,  NO2_ADC1_o_mis1_NZ2);//write o_mis1
			spi_send(spi_base_addr, 32768+31,  NO2_ADC1_o_mis2_NZ2);//write o_mis2
			spi_send(spi_base_addr, 32768+32,  NO2_ADC1_o_mis3_NZ2);//write o_mis3
			spi_send(spi_base_addr, 32768+33,  NO2_ADC1_o_mis4_NZ2);//write o_mis4
			spi_send(spi_base_addr, 32768+34,  NO2_ADC1_g_mis2_NZ2);//write g_mis2
			spi_send(spi_base_addr, 32768+35,  NO2_ADC1_g_mis3_NZ2);//write g_mis3
			spi_send(spi_base_addr, 32768+36,  NO2_ADC1_g_mis4_NZ2);//write g_mis4
			spi_send(spi_base_addr, 32768+13,  NO2_ADC1_t_mis1_NZ2);//write t_mis1
			spi_send(spi_base_addr, 32768+14,  NO2_ADC1_t_mis2_NZ2);//write t_mis2
			spi_send(spi_base_addr, 32768+15,  NO2_ADC1_t_mis3_NZ2);//write t_mis3
			spi_send(spi_base_addr, 32768+16,  NO2_ADC1_t_mis4_NZ2);//write t_mis4
			spi_send(spi_base_addr, 32768+25, 0);
			//ADC2
			spi_send(spi_base_addr, 512+26, 0x0000);
			spi_send(spi_base_addr, 32768+512+25, 1);//write wt=1
			spi_send(spi_base_addr, 32768+512+30,  NO2_ADC2_o_mis1_NZ2);
			spi_send(spi_base_addr, 32768+512+31,  NO2_ADC2_o_mis2_NZ2);
			spi_send(spi_base_addr, 32768+512+32,  NO2_ADC2_o_mis3_NZ2);
			spi_send(spi_base_addr, 32768+512+33,  NO2_ADC2_o_mis4_NZ2);
			spi_send(spi_base_addr, 32768+512+34,  NO2_ADC2_g_mis2_NZ2);
			spi_send(spi_base_addr, 32768+512+35,  NO2_ADC2_g_mis3_NZ2);
			spi_send(spi_base_addr, 32768+512+36,  NO2_ADC2_g_mis4_NZ2);
			spi_send(spi_base_addr, 32768+512+13,  NO2_ADC2_t_mis1_NZ2);
			spi_send(spi_base_addr, 32768+512+14,  NO2_ADC2_t_mis2_NZ2);
			spi_send(spi_base_addr, 32768+512+15,  NO2_ADC2_t_mis3_NZ2);
			spi_send(spi_base_addr, 32768+512+16,  NO2_ADC2_t_mis4_NZ2);
			spi_send(spi_base_addr, 32768+512+25, 0);
			}
		}
	}
 ////****************************************************************************************************************************************////

 ////*********************************************output_sel*********************************************************************************////
        	if(NO2_output_sel_key==0){
		spi_send(spi_base_addr, 29, 2);// output raw data
		spi_send(spi_base_addr, 512+29, 2);// output raw data
	}
	else if(NO2_output_sel_key==1){
		spi_send(spi_base_addr, 29, 1);// after TI cal data
		spi_send(spi_base_addr, 512+29, 1);// after TI cal data
		// spi_send(spi_base_addr, 29, 0);// after interstage-gain cal data
		// spi_send(spi_base_addr, 512+29, 0);// after interstage-gain cal data
	}
////***************************************************//???*******************************************************************************////

		spi_send(spi_base_addr,21,0x02B0);		//AAD12D2500 ONLY
		spi_send(spi_base_addr,533,0x02B0);		//AAD12D2500 ONLY

////****************************************************************************************************************************************////

		int loop = 100;
		while(loop > 0)
		{
		NO2_ADC1_o_mis1_o = spi_recv(spi_base_addr, 170);
		NO2_ADC1_o_mis2_o = spi_recv(spi_base_addr, 171);
		NO2_ADC1_o_mis3_o = spi_recv(spi_base_addr, 172);
		NO2_ADC1_o_mis4_o = spi_recv(spi_base_addr, 173);
		NO2_ADC1_g_mis2_o = spi_recv(spi_base_addr, 174);
		NO2_ADC1_g_mis3_o = spi_recv(spi_base_addr, 175);
		NO2_ADC1_g_mis4_o = spi_recv(spi_base_addr, 176);
		NO2_ADC1_t_mis1_o = spi_recv(spi_base_addr, 177);
		NO2_ADC1_t_mis2_o = spi_recv(spi_base_addr, 178);
		NO2_ADC1_t_mis3_o = spi_recv(spi_base_addr, 179);
		NO2_ADC1_t_mis4_o = spi_recv(spi_base_addr, 180);

		NO2_ADC2_o_mis1_o = spi_recv(spi_base_addr, 682);
		NO2_ADC2_o_mis2_o = spi_recv(spi_base_addr, 683);
		NO2_ADC2_o_mis3_o = spi_recv(spi_base_addr, 684);
		NO2_ADC2_o_mis4_o = spi_recv(spi_base_addr, 685);
		NO2_ADC2_g_mis2_o = spi_recv(spi_base_addr, 686);
		NO2_ADC2_g_mis3_o = spi_recv(spi_base_addr, 687);
		NO2_ADC2_g_mis4_o = spi_recv(spi_base_addr, 688);
		NO2_ADC2_t_mis1_o = spi_recv(spi_base_addr, 689);
		NO2_ADC2_t_mis2_o = spi_recv(spi_base_addr, 690);
		NO2_ADC2_t_mis3_o = spi_recv(spi_base_addr, 691);
		NO2_ADC2_t_mis4_o = spi_recv(spi_base_addr, 692);
		loop = loop - 1 ;

		}

}
