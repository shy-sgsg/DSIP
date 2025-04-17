/*
 * write_memory.c
 *
 *  Created on: 2019Äê5ÔÂ7ÈÕ
 *      Author: JEY
 */
#include"xil_types.h"
void write_memory(u32 addr, u32 data)
{
	*(u32 *)addr = data;
}

u32 read_memory(u32 addr)
{
	u32 data = *(u32 *)addr;
	return data;
}


