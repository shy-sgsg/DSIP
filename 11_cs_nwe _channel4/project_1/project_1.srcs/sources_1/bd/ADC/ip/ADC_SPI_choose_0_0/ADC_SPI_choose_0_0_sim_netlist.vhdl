-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 26 17:17:04 2022
-- Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/work_panyanjiao/37_YTH2/new_2/pro/ad/project_vivado18.3_YTH2_AD_0825/project_1/project_1.srcs/sources_1/bd/ADC/ip/ADC_SPI_choose_0_0/ADC_SPI_choose_0_0_sim_netlist.vhdl
-- Design      : ADC_SPI_choose_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_SPI_choose_0_0 is
  port (
    vio_en : in STD_LOGIC;
    sclk_sdk : in STD_LOGIC;
    csn_sdk : in STD_LOGIC;
    sdi_sdk : in STD_LOGIC;
    sclk_spi : in STD_LOGIC;
    csn_spi : in STD_LOGIC;
    sdi_spi : in STD_LOGIC;
    sdi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    csn : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADC_SPI_choose_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADC_SPI_choose_0_0 : entity is "ADC_SPI_choose_0_0,SPI_choose,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ADC_SPI_choose_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ADC_SPI_choose_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ADC_SPI_choose_0_0 : entity is "SPI_choose,Vivado 2018.3";
end ADC_SPI_choose_0_0;

architecture STRUCTURE of ADC_SPI_choose_0_0 is
begin
csn_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => csn_spi,
      I1 => vio_en,
      I2 => csn_sdk,
      O => csn
    );
sclk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sclk_spi,
      I1 => vio_en,
      I2 => sclk_sdk,
      O => sclk
    );
sdi_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdi_spi,
      I1 => vio_en,
      I2 => sdi_sdk,
      O => sdi
    );
end STRUCTURE;
