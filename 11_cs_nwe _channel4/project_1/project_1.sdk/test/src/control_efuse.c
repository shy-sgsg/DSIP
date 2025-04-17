
#include"xil_types.h"
#include"write_memory.h"
#include"sleep.h"
#include"stdlib.h"
#include"xparameters.h"

#include "adc_config_ADC2.h"
#include"spi.h"
#include"ctrl_204b.h"
#include"offset_cal.h"





u32 control_efuse(u32 spi_base_addr, u16 low_address, u16 data_low8, u16 data_high8)
{
	u16 high_address;
	u32 EFUSE_data=0;
	high_address=low_address+1;

	spi_send(spi_base_addr, 0x8800, low_address);
	spi_send(spi_base_addr, 0x8801, 0x005C);
	spi_send(spi_base_addr, 0x8803, 0x5034);
	spi_send(spi_base_addr, 0x8804, 0x4A2A);
	spi_send(spi_base_addr, 0x8806, data_low8);

	u16 efuse_busy;
	efuse_busy=0x0100;
	while((efuse_busy & 0x0100)==0x0100)
	{
		efuse_busy=spi_recv(spi_base_addr, 0x0806);
	}

	efuse_busy=spi_recv(spi_base_addr, 0x0806);

	spi_send(spi_base_addr, 0x8800, high_address);
	spi_send(spi_base_addr, 0x8801, 0x005C);
	spi_send(spi_base_addr, 0x8803, 0x5034);
	spi_send(spi_base_addr, 0x8804, 0x4A2A);
	spi_send(spi_base_addr, 0x8806, data_high8);

	efuse_busy=0x0100;
	while((efuse_busy & 0x0100)==0x0100)
	{
		efuse_busy=spi_recv(spi_base_addr, 0x0806);
	}

	spi_send(spi_base_addr, 0x8800, low_address);
	spi_send(spi_base_addr, 0x8801, 0x005C);
	spi_send(spi_base_addr, 0x8803, 0x5034);
	spi_send(spi_base_addr, 0x8804, 0x4A2A);
	spi_send(spi_base_addr, 0x8805, low_address);
	EFUSE_data = spi_recv(spi_base_addr, 0x0805);

	return EFUSE_data;
}
