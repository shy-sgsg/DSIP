#ifndef SRC_CTRL_204B_H_
#define SRC_CTRL_204B_H_
void reset_204b(u32 base_addr); //复位FPGA中的204B IP核，base_addr为204B_ctrl的基地址
void reset_sysref(u32 base_addr); //复位SYSREF发生器，base_addr为204B_ctrl的基地址
void set_sysref_div_cfg(u32 base_addr, u8 value); //设置SYSREF分频比，base_addr为204B_ctrl的基地址
void set_sysref_num(u32 base_addr, u8 value);//设置SYSREF脉冲数，base_addr为204B_ctrl的基地址
#endif
