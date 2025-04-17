-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 26 17:17:04 2022
-- Host        : SKY-20191122TPZ running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_SPI_choose_0_0_stub.vhdl
-- Design      : ADC_SPI_choose_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vio_en,sclk_sdk,csn_sdk,sdi_sdk,sclk_spi,csn_spi,sdi_spi,sdi,sclk,csn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPI_choose,Vivado 2018.3";
begin
end;
