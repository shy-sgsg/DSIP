/*
 * spi.c
 *
 *  Created on: 2019Äê5ÔÂ7ÈÕ
 *      Author: JEY
 */

#include"xil_types.h"
#include"write_memory.h"
#include"sleep.h"

void reset_spi(u32 base_addr)
{
	write_memory(base_addr, 0x00000001);
	usleep(1);
	write_memory(base_addr, 0x00000000);
	usleep(1);
}

void set_spi_wr(u32 base_addr, u32 data)//1: write; 0: read
{
	write_memory(base_addr + 4, data);
}

void set_spi_addr(u32 base_addr, u32 data)
{
	write_memory(base_addr + 8, data);
}

void set_spi_data(u32 base_addr, u32 data)
{
	write_memory(base_addr + 12, data);
}


void set_spi_ready(u32 base_addr)
{
	write_memory(base_addr + 20, 0x00000001);
}

void clear_spi_ready(u32 base_addr)
{
	write_memory(base_addr + 20, 0x00000000);
}

u32 get_spi_busy(u32 base_addr)
{
	u32 data = read_memory(base_addr + 24);
	return data;
}

u16 get_spi_data(u32 base_addr)
{
	u16 data = read_memory(base_addr + 16);
	return data;
}

void spi_send(u32 base_addr, u16 addr, u16 data)
{
	set_spi_wr(base_addr, 1);
	set_spi_addr(base_addr, (u32)addr);
	set_spi_data(base_addr, (u32)data);
	usleep(1);
	set_spi_ready(base_addr);
	usleep(1);
	clear_spi_ready(base_addr);
	while(get_spi_busy(base_addr))
	{
		;
	}
	usleep(1);
}

u16 spi_recv(u32 base_addr, u16 addr)
{
	u16 data;
	set_spi_wr(base_addr, 0);
	set_spi_addr(base_addr, (u32)addr);
	usleep(1);
	set_spi_ready(base_addr);
	usleep(1);
	clear_spi_ready(base_addr);
	while(get_spi_busy(base_addr))
	{
		;
	}
	usleep(1);
	data = get_spi_data(base_addr);
	return data;
}

