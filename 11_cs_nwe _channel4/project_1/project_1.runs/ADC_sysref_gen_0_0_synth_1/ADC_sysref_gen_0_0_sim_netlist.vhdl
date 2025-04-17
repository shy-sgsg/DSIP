-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Aug 17 17:21:57 2023
-- Host        : GL-0301-949 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADC_sysref_gen_0_0_sim_netlist.vhdl
-- Design      : ADC_sysref_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen is
  port (
    sysref : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    div_cfg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysref_num : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen is
  signal cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal cnt1_carry_i_8_n_0 : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal sysref_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_5_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_6_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_7_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_i_8_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_n_0 : STD_LOGIC;
  signal sysref_cnt0_carry_n_1 : STD_LOGIC;
  signal sysref_cnt0_carry_n_2 : STD_LOGIC;
  signal sysref_cnt0_carry_n_3 : STD_LOGIC;
  signal \sysref_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sysref_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \sysref_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \sysref_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sysref_i_1_n_0 : STD_LOGIC;
  signal NLW_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sysref_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sysref_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sysref_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sysref_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sysref_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sysref_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sysref_cnt[7]_i_2\ : label is "soft_lutpair4";
begin
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => '0',
      DI(3) => cnt1_carry_i_1_n_0,
      DI(2) => cnt1_carry_i_2_n_0,
      DI(1) => cnt1_carry_i_3_n_0,
      DI(0) => cnt1_carry_i_4_n_0,
      O(3 downto 0) => NLW_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt1_carry_i_5_n_0,
      S(2) => cnt1_carry_i_6_n_0,
      S(1) => cnt1_carry_i_7_n_0,
      S(0) => cnt1_carry_i_8_n_0
    );
cnt1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => div_cfg(6),
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      I3 => div_cfg(7),
      O => cnt1_carry_i_1_n_0
    );
cnt1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => div_cfg(4),
      I1 => \cnt_reg__0\(4),
      I2 => \cnt_reg__0\(5),
      I3 => div_cfg(5),
      O => cnt1_carry_i_2_n_0
    );
cnt1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => div_cfg(2),
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(3),
      I3 => div_cfg(3),
      O => cnt1_carry_i_3_n_0
    );
cnt1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => div_cfg(0),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => div_cfg(1),
      O => cnt1_carry_i_4_n_0
    );
cnt1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => div_cfg(6),
      I1 => \cnt_reg__0\(6),
      I2 => div_cfg(7),
      I3 => \cnt_reg__0\(7),
      O => cnt1_carry_i_5_n_0
    );
cnt1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => div_cfg(4),
      I1 => \cnt_reg__0\(4),
      I2 => div_cfg(5),
      I3 => \cnt_reg__0\(5),
      O => cnt1_carry_i_6_n_0
    );
cnt1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => div_cfg(2),
      I1 => \cnt_reg__0\(2),
      I2 => div_cfg(3),
      I3 => \cnt_reg__0\(3),
      O => cnt1_carry_i_7_n_0
    );
cnt1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => div_cfg(0),
      I1 => \cnt_reg__0\(0),
      I2 => div_cfg(1),
      I3 => \cnt_reg__0\(1),
      O => cnt1_carry_i_8_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(4),
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(4),
      I5 => \cnt_reg__0\(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[7]_i_3_n_0\,
      I1 => \cnt_reg__0\(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => cnt1_carry_n_0,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[7]_i_3_n_0\,
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      O => p_0_in(7)
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(4),
      O => \cnt[7]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0),
      S => \cnt[7]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \cnt_reg__0\(1),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \cnt_reg__0\(4),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => \cnt_reg__0\(5),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => \cnt_reg__0\(6),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \cnt_reg__0\(7),
      R => \cnt[7]_i_1_n_0\
    );
sysref_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sysref_cnt0_carry_n_0,
      CO(2) => sysref_cnt0_carry_n_1,
      CO(1) => sysref_cnt0_carry_n_2,
      CO(0) => sysref_cnt0_carry_n_3,
      CYINIT => '0',
      DI(3) => sysref_cnt0_carry_i_1_n_0,
      DI(2) => sysref_cnt0_carry_i_2_n_0,
      DI(1) => sysref_cnt0_carry_i_3_n_0,
      DI(0) => sysref_cnt0_carry_i_4_n_0,
      O(3 downto 0) => NLW_sysref_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sysref_cnt0_carry_i_5_n_0,
      S(2) => sysref_cnt0_carry_i_6_n_0,
      S(1) => sysref_cnt0_carry_i_7_n_0,
      S(0) => sysref_cnt0_carry_i_8_n_0
    );
sysref_cnt0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sysref_num(6),
      I1 => \sysref_cnt_reg__0\(6),
      I2 => \sysref_cnt_reg__0\(7),
      I3 => sysref_num(7),
      O => sysref_cnt0_carry_i_1_n_0
    );
sysref_cnt0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sysref_num(4),
      I1 => \sysref_cnt_reg__0\(4),
      I2 => \sysref_cnt_reg__0\(5),
      I3 => sysref_num(5),
      O => sysref_cnt0_carry_i_2_n_0
    );
sysref_cnt0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sysref_num(2),
      I1 => \sysref_cnt_reg__0\(2),
      I2 => \sysref_cnt_reg__0\(3),
      I3 => sysref_num(3),
      O => sysref_cnt0_carry_i_3_n_0
    );
sysref_cnt0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sysref_num(0),
      I1 => \sysref_cnt_reg__0\(0),
      I2 => \sysref_cnt_reg__0\(1),
      I3 => sysref_num(1),
      O => sysref_cnt0_carry_i_4_n_0
    );
sysref_cnt0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sysref_num(6),
      I1 => \sysref_cnt_reg__0\(6),
      I2 => sysref_num(7),
      I3 => \sysref_cnt_reg__0\(7),
      O => sysref_cnt0_carry_i_5_n_0
    );
sysref_cnt0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sysref_num(4),
      I1 => \sysref_cnt_reg__0\(4),
      I2 => sysref_num(5),
      I3 => \sysref_cnt_reg__0\(5),
      O => sysref_cnt0_carry_i_6_n_0
    );
sysref_cnt0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sysref_num(2),
      I1 => \sysref_cnt_reg__0\(2),
      I2 => sysref_num(3),
      I3 => \sysref_cnt_reg__0\(3),
      O => sysref_cnt0_carry_i_7_n_0
    );
sysref_cnt0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sysref_num(0),
      I1 => \sysref_cnt_reg__0\(0),
      I2 => sysref_num(1),
      I3 => \sysref_cnt_reg__0\(1),
      O => sysref_cnt0_carry_i_8_n_0
    );
\sysref_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(0),
      O => \sysref_cnt[0]_i_1_n_0\
    );
\sysref_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(0),
      I1 => \sysref_cnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\sysref_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(0),
      I1 => \sysref_cnt_reg__0\(1),
      I2 => \sysref_cnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\sysref_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(1),
      I1 => \sysref_cnt_reg__0\(0),
      I2 => \sysref_cnt_reg__0\(2),
      I3 => \sysref_cnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\sysref_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(2),
      I1 => \sysref_cnt_reg__0\(0),
      I2 => \sysref_cnt_reg__0\(1),
      I3 => \sysref_cnt_reg__0\(3),
      I4 => \sysref_cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sysref_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(3),
      I1 => \sysref_cnt_reg__0\(1),
      I2 => \sysref_cnt_reg__0\(0),
      I3 => \sysref_cnt_reg__0\(2),
      I4 => \sysref_cnt_reg__0\(4),
      I5 => \sysref_cnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sysref_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sysref_cnt[7]_i_3_n_0\,
      I1 => \sysref_cnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\sysref_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sysref_cnt0_carry_n_0,
      I1 => cnt1_carry_n_0,
      O => \sysref_cnt[7]_i_1_n_0\
    );
\sysref_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sysref_cnt[7]_i_3_n_0\,
      I1 => \sysref_cnt_reg__0\(6),
      I2 => \sysref_cnt_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\sysref_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sysref_cnt_reg__0\(5),
      I1 => \sysref_cnt_reg__0\(3),
      I2 => \sysref_cnt_reg__0\(1),
      I3 => \sysref_cnt_reg__0\(0),
      I4 => \sysref_cnt_reg__0\(2),
      I5 => \sysref_cnt_reg__0\(4),
      O => \sysref_cnt[7]_i_3_n_0\
    );
\sysref_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \sysref_cnt[0]_i_1_n_0\,
      Q => \sysref_cnt_reg__0\(0),
      R => rst
    );
\sysref_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \sysref_cnt_reg__0\(1),
      R => rst
    );
\sysref_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \sysref_cnt_reg__0\(2),
      R => rst
    );
\sysref_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \sysref_cnt_reg__0\(3),
      R => rst
    );
\sysref_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \sysref_cnt_reg__0\(4),
      R => rst
    );
\sysref_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \sysref_cnt_reg__0\(5),
      R => rst
    );
\sysref_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \sysref_cnt_reg__0\(6),
      R => rst
    );
\sysref_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sysref_cnt[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \sysref_cnt_reg__0\(7),
      R => rst
    );
sysref_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sysref_cnt0_carry_n_0,
      I1 => cnt1_carry_n_0,
      I2 => rst,
      O => sysref_i_1_n_0
    );
sysref_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sysref_i_1_n_0,
      Q => sysref,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    div_cfg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysref_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysref : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ADC_sysref_gen_0_0,sysref_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sysref_gen,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ADC_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sysref_gen
     port map (
      clk => clk,
      div_cfg(7 downto 0) => div_cfg(7 downto 0),
      rst => rst,
      sysref => sysref,
      sysref_num(7 downto 0) => sysref_num(7 downto 0)
    );
end STRUCTURE;
