#include"xil_types.h"
#include"write_memory.h"
#include"sleep.h"

void reset_204b(u32 base_addr)
{
	write_memory(base_addr, 0x00000001);
	usleep(1);
	write_memory(base_addr, 0x00000000);
	usleep(1);
}

void reset_sysref(u32 base_addr)
{
	write_memory(base_addr+4, 0x00000001);
	usleep(1);
	write_memory(base_addr+4, 0x00000000);
	usleep(1);
}

void set_sysref_div_cfg(u32 base_addr, u8 value)
{
	write_memory(base_addr+8, (u32)value);
	usleep(1);
}

void set_sysref_num(u32 base_addr, u8 value)
{
	write_memory(base_addr+12, (u32)value);
	usleep(1);
}

