/*
 * spi.h
 *
 *  Created on: 2019年5月7日
 *      Author: JEY
 */

#ifndef SRC_SPI_H_
#define SRC_SPI_H_
void reset_spi(u32 base_addr);//复位SPI，base_addr为SPI模块的基地址
void set_spi_wr(u32 base_addr, u32 data);
void set_spi_addr(u32 base_addr, u32 data);
void set_spi_data(u32 base_addr, u32 data);
void set_spi_ready(u32 base_addr);
void clear_spi_ready(u32 base_addr);
u16 get_spi_data(u32 base_addr);

void spi_send(u32 base_addr, u16 addr, u16 data); //发送SPI数据，base_addr为SPI模块的基地址，addr为ADC内部寄存器地址，data为需要配置的数据
u16 spi_recv(u32 base_addr, u16 addr);//读取SPI数据，base_addr为SPI模块的基地址，addr为ADC内部寄存器地址，返回值为该寄存器的数据

#endif /* SRC_SPI_H_ */
