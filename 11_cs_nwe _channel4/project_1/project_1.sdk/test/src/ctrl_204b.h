#ifndef SRC_CTRL_204B_H_
#define SRC_CTRL_204B_H_
void reset_204b(u32 base_addr); //��λFPGA�е�204B IP�ˣ�base_addrΪ204B_ctrl�Ļ���ַ
void reset_sysref(u32 base_addr); //��λSYSREF��������base_addrΪ204B_ctrl�Ļ���ַ
void set_sysref_div_cfg(u32 base_addr, u8 value); //����SYSREF��Ƶ�ȣ�base_addrΪ204B_ctrl�Ļ���ַ
void set_sysref_num(u32 base_addr, u8 value);//����SYSREF��������base_addrΪ204B_ctrl�Ļ���ַ
#endif
