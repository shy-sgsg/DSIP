/*
 * spi.h
 *
 *  Created on: 2019��5��7��
 *      Author: JEY
 */

#ifndef SRC_SPI_H_
#define SRC_SPI_H_
void reset_spi(u32 base_addr);//��λSPI��base_addrΪSPIģ��Ļ���ַ
void set_spi_wr(u32 base_addr, u32 data);
void set_spi_addr(u32 base_addr, u32 data);
void set_spi_data(u32 base_addr, u32 data);
void set_spi_ready(u32 base_addr);
void clear_spi_ready(u32 base_addr);
u16 get_spi_data(u32 base_addr);

void spi_send(u32 base_addr, u16 addr, u16 data); //����SPI���ݣ�base_addrΪSPIģ��Ļ���ַ��addrΪADC�ڲ��Ĵ�����ַ��dataΪ��Ҫ���õ�����
u16 spi_recv(u32 base_addr, u16 addr);//��ȡSPI���ݣ�base_addrΪSPIģ��Ļ���ַ��addrΪADC�ڲ��Ĵ�����ַ������ֵΪ�üĴ���������

#endif /* SRC_SPI_H_ */
