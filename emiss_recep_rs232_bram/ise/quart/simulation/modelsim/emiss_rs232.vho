-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Full Version"

-- DATE "03/20/2018 14:10:17"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	emiss_rs232 IS
    PORT (
	ledR : OUT std_logic;
	raddress_bram : OUT std_logic_vector(3 DOWNTO 0);
	txd_obs : OUT std_logic;
	txd_out : OUT std_logic;
	Clk : IN std_logic;
	rst : IN std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	q_bram : IN std_logic_vector(7 DOWNTO 0)
	);
END emiss_rs232;

-- Design Ports Information
-- sw[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledR	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- raddress_bram[0]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- raddress_bram[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- raddress_bram[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- raddress_bram[3]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- txd_obs	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- txd_out	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[3]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[4]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[5]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[6]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- q_bram[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF emiss_rs232 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ledR : std_logic;
SIGNAL ww_raddress_bram : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_txd_obs : std_logic;
SIGNAL ww_txd_out : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_bram : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \tempo[8]~42_combout\ : std_logic;
SIGNAL \tempo[15]~56_combout\ : std_logic;
SIGNAL \tempo[22]~70_combout\ : std_logic;
SIGNAL \burst[6]~29_combout\ : std_logic;
SIGNAL \burst[8]~33_combout\ : std_logic;
SIGNAL \burst[11]~40\ : std_logic;
SIGNAL \burst[12]~41_combout\ : std_logic;
SIGNAL \burst[12]~42\ : std_logic;
SIGNAL \burst[13]~43_combout\ : std_logic;
SIGNAL \burst[13]~44\ : std_logic;
SIGNAL \burst[14]~45_combout\ : std_logic;
SIGNAL \burst[14]~46\ : std_logic;
SIGNAL \burst[15]~47_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \P_FSM~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \baud_time[12]~33_combout\ : std_logic;
SIGNAL \baud_time[12]~35_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \baud_time~38_combout\ : std_logic;
SIGNAL \baud_time~41_combout\ : std_logic;
SIGNAL \baud_time~46_combout\ : std_logic;
SIGNAL \baud_time~49_combout\ : std_logic;
SIGNAL \baud_time~50_combout\ : std_logic;
SIGNAL \baud_time~51_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Current_State~15_combout\ : std_logic;
SIGNAL \Current_State.init0~regout\ : std_logic;
SIGNAL \sw9_sync~0_combout\ : std_logic;
SIGNAL \sw9_sync~regout\ : std_logic;
SIGNAL \burst[0]~17\ : std_logic;
SIGNAL \burst[1]~18_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Current_State.tempo_t~regout\ : std_logic;
SIGNAL \baud_time~32_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Current_State.stop~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Current_State.att~regout\ : std_logic;
SIGNAL \Current_State~14_combout\ : std_logic;
SIGNAL \Current_State.lec_pf_st~regout\ : std_logic;
SIGNAL \Current_State~12_combout\ : std_logic;
SIGNAL \Current_State.stop2~regout\ : std_logic;
SIGNAL \tempo[0]~25\ : std_logic;
SIGNAL \tempo[1]~29\ : std_logic;
SIGNAL \tempo[2]~31\ : std_logic;
SIGNAL \tempo[3]~32_combout\ : std_logic;
SIGNAL \tempo[13]~26_combout\ : std_logic;
SIGNAL \tempo[13]~27_combout\ : std_logic;
SIGNAL \tempo[3]~33\ : std_logic;
SIGNAL \tempo[4]~34_combout\ : std_logic;
SIGNAL \tempo[4]~35\ : std_logic;
SIGNAL \tempo[5]~36_combout\ : std_logic;
SIGNAL \tempo[5]~37\ : std_logic;
SIGNAL \tempo[6]~39\ : std_logic;
SIGNAL \tempo[7]~40_combout\ : std_logic;
SIGNAL \tempo[7]~41\ : std_logic;
SIGNAL \tempo[8]~43\ : std_logic;
SIGNAL \tempo[9]~44_combout\ : std_logic;
SIGNAL \tempo[9]~45\ : std_logic;
SIGNAL \tempo[10]~46_combout\ : std_logic;
SIGNAL \tempo[10]~47\ : std_logic;
SIGNAL \tempo[11]~48_combout\ : std_logic;
SIGNAL \tempo[11]~49\ : std_logic;
SIGNAL \tempo[12]~50_combout\ : std_logic;
SIGNAL \tempo[12]~51\ : std_logic;
SIGNAL \tempo[13]~52_combout\ : std_logic;
SIGNAL \tempo[13]~53\ : std_logic;
SIGNAL \tempo[14]~54_combout\ : std_logic;
SIGNAL \tempo[14]~55\ : std_logic;
SIGNAL \tempo[15]~57\ : std_logic;
SIGNAL \tempo[16]~58_combout\ : std_logic;
SIGNAL \tempo[16]~59\ : std_logic;
SIGNAL \tempo[17]~61\ : std_logic;
SIGNAL \tempo[18]~63\ : std_logic;
SIGNAL \tempo[19]~64_combout\ : std_logic;
SIGNAL \tempo[19]~65\ : std_logic;
SIGNAL \tempo[20]~67\ : std_logic;
SIGNAL \tempo[21]~68_combout\ : std_logic;
SIGNAL \tempo[21]~69\ : std_logic;
SIGNAL \tempo[22]~71\ : std_logic;
SIGNAL \tempo[23]~72_combout\ : std_logic;
SIGNAL \tempo[20]~66_combout\ : std_logic;
SIGNAL \P_FSM~6_combout\ : std_logic;
SIGNAL \P_FSM~3_combout\ : std_logic;
SIGNAL \tempo[6]~38_combout\ : std_logic;
SIGNAL \P_FSM~1_combout\ : std_logic;
SIGNAL \tempo[0]~24_combout\ : std_logic;
SIGNAL \tempo[1]~28_combout\ : std_logic;
SIGNAL \tempo[2]~30_combout\ : std_logic;
SIGNAL \P_FSM~0_combout\ : std_logic;
SIGNAL \P_FSM~4_combout\ : std_logic;
SIGNAL \P_FSM~7_combout\ : std_logic;
SIGNAL \burst[10]~20_combout\ : std_logic;
SIGNAL \burst[1]~19\ : std_logic;
SIGNAL \burst[2]~21_combout\ : std_logic;
SIGNAL \burst[2]~22\ : std_logic;
SIGNAL \burst[3]~23_combout\ : std_logic;
SIGNAL \burst[0]~16_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \burst[3]~24\ : std_logic;
SIGNAL \burst[4]~25_combout\ : std_logic;
SIGNAL \burst[4]~26\ : std_logic;
SIGNAL \burst[5]~28\ : std_logic;
SIGNAL \burst[6]~30\ : std_logic;
SIGNAL \burst[7]~31_combout\ : std_logic;
SIGNAL \burst[7]~32\ : std_logic;
SIGNAL \burst[8]~34\ : std_logic;
SIGNAL \burst[9]~35_combout\ : std_logic;
SIGNAL \burst[9]~36\ : std_logic;
SIGNAL \burst[10]~38\ : std_logic;
SIGNAL \burst[11]~39_combout\ : std_logic;
SIGNAL \burst[10]~37_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \burst[5]~27_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Current_State.init~regout\ : std_logic;
SIGNAL \baud_time[12]~34_combout\ : std_logic;
SIGNAL \baud_time~44_combout\ : std_logic;
SIGNAL \ad_bram[3]~5_combout\ : std_logic;
SIGNAL \tempo[17]~60_combout\ : std_logic;
SIGNAL \tempo[18]~62_combout\ : std_logic;
SIGNAL \P_FSM~5_combout\ : std_logic;
SIGNAL \P_FSM~8_combout\ : std_logic;
SIGNAL \dp_ram2[0]~0_combout\ : std_logic;
SIGNAL \baud_time[12]~36_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \baud_time~52_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \baud_time~48_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \baud_time~47_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \baud_time~45_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \baud_time~43_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \baud_time~42_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \baud_time~40_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \baud_time~37_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \baud_time~39_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Current_State.emiss~regout\ : std_logic;
SIGNAL \Current_State~13_combout\ : std_logic;
SIGNAL \Current_State.data_emiss~regout\ : std_logic;
SIGNAL \dp_ram2~10_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Current_State.start~regout\ : std_logic;
SIGNAL \dp_ram2[0]~2_combout\ : std_logic;
SIGNAL \dp_ram2[0]~3_combout\ : std_logic;
SIGNAL \dp_ram2~9_combout\ : std_logic;
SIGNAL \dp_ram2~8_combout\ : std_logic;
SIGNAL \dp_ram2~7_combout\ : std_logic;
SIGNAL \dp_ram2~6_combout\ : std_logic;
SIGNAL \dp_ram2~5_combout\ : std_logic;
SIGNAL \dp_ram2~4_combout\ : std_logic;
SIGNAL \dp_ram2~1_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \txd~feeder_combout\ : std_logic;
SIGNAL \txd~regout\ : std_logic;
SIGNAL \ad_bram~4_combout\ : std_logic;
SIGNAL \ad_bram[3]~6_combout\ : std_logic;
SIGNAL \ad_bram~7_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \ad_bram~9_combout\ : std_logic;
SIGNAL \ad_bram~8_combout\ : std_logic;
SIGNAL \q_bram~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ad_bram : std_logic_vector(3 DOWNTO 0);
SIGNAL baud_time : std_logic_vector(15 DOWNTO 0);
SIGNAL burst : std_logic_vector(15 DOWNTO 0);
SIGNAL dp_ram2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ind_txd : std_logic_vector(3 DOWNTO 0);
SIGNAL tempo : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_txd~regout\ : std_logic;

BEGIN

ledR <= ww_ledR;
raddress_bram <= ww_raddress_bram;
txd_obs <= ww_txd_obs;
txd_out <= ww_txd_out;
ww_Clk <= Clk;
ww_rst <= rst;
ww_sw <= sw;
ww_q_bram <= q_bram;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);
\ALT_INV_txd~regout\ <= NOT \txd~regout\;

-- Location: LCFF_X21_Y12_N25
\tempo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[8]~42_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(8));

-- Location: LCFF_X21_Y11_N7
\tempo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[15]~56_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(15));

-- Location: LCFF_X21_Y11_N21
\tempo[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[22]~70_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(22));

-- Location: LCFF_X15_Y12_N13
\burst[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[6]~29_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(6));

-- Location: LCFF_X15_Y12_N17
\burst[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[8]~33_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(8));

-- Location: LCFF_X15_Y12_N25
\burst[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[12]~41_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(12));

-- Location: LCFF_X15_Y12_N27
\burst[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[13]~43_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(13));

-- Location: LCFF_X15_Y12_N29
\burst[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[14]~45_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(14));

-- Location: LCFF_X15_Y12_N31
\burst[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[15]~47_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(15));

-- Location: LCCOMB_X19_Y13_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (baud_time(1) & (\Add0~1\ & VCC)) # (!baud_time(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!baud_time(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y13_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (baud_time(2) & ((GND) # (!\Add0~3\))) # (!baud_time(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((baud_time(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y13_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (baud_time(3) & (\Add0~5\ & VCC)) # (!baud_time(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!baud_time(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y13_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (baud_time(6) & ((GND) # (!\Add0~11\))) # (!baud_time(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((baud_time(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y13_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (baud_time(8) & ((GND) # (!\Add0~15\))) # (!baud_time(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((baud_time(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y13_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (baud_time(11) & (\Add0~21\ & VCC)) # (!baud_time(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!baud_time(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X19_Y13_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (baud_time(14) & ((GND) # (!\Add0~27\))) # (!baud_time(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((baud_time(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCFF_X19_Y12_N21
\ind_txd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector27~1_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ind_txd(3));

-- Location: LCCOMB_X21_Y12_N24
\tempo[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[8]~42_combout\ = (tempo(8) & (\tempo[7]~41\ $ (GND))) # (!tempo(8) & (!\tempo[7]~41\ & VCC))
-- \tempo[8]~43\ = CARRY((tempo(8) & !\tempo[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(8),
	datad => VCC,
	cin => \tempo[7]~41\,
	combout => \tempo[8]~42_combout\,
	cout => \tempo[8]~43\);

-- Location: LCCOMB_X21_Y11_N6
\tempo[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[15]~56_combout\ = (tempo(15) & (!\tempo[14]~55\)) # (!tempo(15) & ((\tempo[14]~55\) # (GND)))
-- \tempo[15]~57\ = CARRY((!\tempo[14]~55\) # (!tempo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(15),
	datad => VCC,
	cin => \tempo[14]~55\,
	combout => \tempo[15]~56_combout\,
	cout => \tempo[15]~57\);

-- Location: LCCOMB_X21_Y11_N20
\tempo[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[22]~70_combout\ = (tempo(22) & (\tempo[21]~69\ $ (GND))) # (!tempo(22) & (!\tempo[21]~69\ & VCC))
-- \tempo[22]~71\ = CARRY((tempo(22) & !\tempo[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(22),
	datad => VCC,
	cin => \tempo[21]~69\,
	combout => \tempo[22]~70_combout\,
	cout => \tempo[22]~71\);

-- Location: LCCOMB_X15_Y12_N12
\burst[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[6]~29_combout\ = (burst(6) & (\burst[5]~28\ $ (GND))) # (!burst(6) & (!\burst[5]~28\ & VCC))
-- \burst[6]~30\ = CARRY((burst(6) & !\burst[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(6),
	datad => VCC,
	cin => \burst[5]~28\,
	combout => \burst[6]~29_combout\,
	cout => \burst[6]~30\);

-- Location: LCCOMB_X15_Y12_N16
\burst[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[8]~33_combout\ = (burst(8) & (\burst[7]~32\ $ (GND))) # (!burst(8) & (!\burst[7]~32\ & VCC))
-- \burst[8]~34\ = CARRY((burst(8) & !\burst[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(8),
	datad => VCC,
	cin => \burst[7]~32\,
	combout => \burst[8]~33_combout\,
	cout => \burst[8]~34\);

-- Location: LCCOMB_X15_Y12_N22
\burst[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[11]~39_combout\ = (burst(11) & (!\burst[10]~38\)) # (!burst(11) & ((\burst[10]~38\) # (GND)))
-- \burst[11]~40\ = CARRY((!\burst[10]~38\) # (!burst(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(11),
	datad => VCC,
	cin => \burst[10]~38\,
	combout => \burst[11]~39_combout\,
	cout => \burst[11]~40\);

-- Location: LCCOMB_X15_Y12_N24
\burst[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[12]~41_combout\ = (burst(12) & (\burst[11]~40\ $ (GND))) # (!burst(12) & (!\burst[11]~40\ & VCC))
-- \burst[12]~42\ = CARRY((burst(12) & !\burst[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(12),
	datad => VCC,
	cin => \burst[11]~40\,
	combout => \burst[12]~41_combout\,
	cout => \burst[12]~42\);

-- Location: LCCOMB_X15_Y12_N26
\burst[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[13]~43_combout\ = (burst(13) & (!\burst[12]~42\)) # (!burst(13) & ((\burst[12]~42\) # (GND)))
-- \burst[13]~44\ = CARRY((!\burst[12]~42\) # (!burst(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(13),
	datad => VCC,
	cin => \burst[12]~42\,
	combout => \burst[13]~43_combout\,
	cout => \burst[13]~44\);

-- Location: LCCOMB_X15_Y12_N28
\burst[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[14]~45_combout\ = (burst(14) & (\burst[13]~44\ $ (GND))) # (!burst(14) & (!\burst[13]~44\ & VCC))
-- \burst[14]~46\ = CARRY((burst(14) & !\burst[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(14),
	datad => VCC,
	cin => \burst[13]~44\,
	combout => \burst[14]~45_combout\,
	cout => \burst[14]~46\);

-- Location: LCCOMB_X15_Y12_N30
\burst[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[15]~47_combout\ = \burst[14]~46\ $ (burst(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => burst(15),
	cin => \burst[14]~46\,
	combout => \burst[15]~47_combout\);

-- Location: LCFF_X18_Y12_N27
\baud_time[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~38_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(14));

-- Location: LCFF_X18_Y12_N3
\baud_time[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~41_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(11));

-- Location: LCFF_X19_Y12_N3
\baud_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~46_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(6));

-- Location: LCFF_X18_Y12_N17
\baud_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~49_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(3));

-- Location: LCFF_X18_Y12_N11
\baud_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~50_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(2));

-- Location: LCFF_X18_Y12_N13
\baud_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~51_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(1));

-- Location: LCCOMB_X18_Y12_N24
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!baud_time(1) & (!baud_time(0) & (!baud_time(3) & !baud_time(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(1),
	datab => baud_time(0),
	datac => baud_time(3),
	datad => baud_time(2),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X21_Y11_N24
\P_FSM~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~2_combout\ = (tempo(7) & (tempo(9) & (tempo(10) & tempo(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(7),
	datab => tempo(9),
	datac => tempo(10),
	datad => tempo(8),
	combout => \P_FSM~2_combout\);

-- Location: LCCOMB_X14_Y12_N8
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!burst(13) & (!burst(14) & (!burst(12) & !burst(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst(13),
	datab => burst(14),
	datac => burst(12),
	datad => burst(15),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X18_Y13_N20
\baud_time[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time[12]~33_combout\ = (\Current_State.start~regout\) # (\Current_State.stop~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.start~regout\,
	datad => \Current_State.stop~regout\,
	combout => \baud_time[12]~33_combout\);

-- Location: LCCOMB_X18_Y12_N22
\baud_time[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time[12]~35_combout\ = (\Equal1~4_combout\ & ((\Current_State.emiss~regout\) # (\Current_State.att~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.emiss~regout\,
	datab => \Current_State.att~regout\,
	datad => \Equal1~4_combout\,
	combout => \baud_time[12]~35_combout\);

-- Location: LCCOMB_X19_Y12_N26
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Current_State.init~regout\) # ((ind_txd(3) & (!\Current_State.data_emiss~regout\ & !\Current_State.tempo_t~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ind_txd(3),
	datab => \Current_State.data_emiss~regout\,
	datac => \Current_State.tempo_t~regout\,
	datad => \Current_State.init~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ind_txd(3) $ (((ind_txd(0)) # ((ind_txd(1)) # (ind_txd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ind_txd(3),
	datab => ind_txd(0),
	datac => ind_txd(1),
	datad => ind_txd(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector27~0_combout\) # ((\Current_State.data_emiss~regout\ & !\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.data_emiss~regout\,
	datab => \Selector27~0_combout\,
	datac => \Add1~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X18_Y12_N26
\baud_time~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~38_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~28_combout\,
	combout => \baud_time~38_combout\);

-- Location: LCCOMB_X18_Y12_N2
\baud_time~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~41_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~22_combout\,
	combout => \baud_time~41_combout\);

-- Location: LCCOMB_X19_Y12_N2
\baud_time~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~46_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & ((\baud_time[12]~34_combout\) # (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~34_combout\,
	datab => \Current_State.tempo_t~regout\,
	datac => \rst~combout\,
	datad => \Add0~12_combout\,
	combout => \baud_time~46_combout\);

-- Location: LCCOMB_X18_Y12_N16
\baud_time~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~49_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~6_combout\,
	combout => \baud_time~49_combout\);

-- Location: LCCOMB_X18_Y12_N10
\baud_time~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~50_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & ((\baud_time[12]~34_combout\) # (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~4_combout\,
	combout => \baud_time~50_combout\);

-- Location: LCCOMB_X18_Y12_N12
\baud_time~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~51_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~2_combout\,
	combout => \baud_time~51_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(1),
	combout => \q_bram~combout\(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(2),
	combout => \q_bram~combout\(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(5),
	combout => \q_bram~combout\(5));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(6),
	combout => \q_bram~combout\(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(7),
	combout => \q_bram~combout\(7));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G2
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X20_Y12_N12
\Current_State~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Current_State~15_combout\ = (!\rst~combout\ & ((\sw9_sync~regout\) # (\Current_State.init0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw9_sync~regout\,
	datac => \Current_State.init0~regout\,
	datad => \rst~combout\,
	combout => \Current_State~15_combout\);

-- Location: LCFF_X20_Y12_N13
\Current_State.init0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Current_State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.init0~regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(6),
	combout => \sw~combout\(6));

-- Location: LCCOMB_X20_Y12_N0
\sw9_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sw9_sync~0_combout\ = (!\rst~combout\ & \sw~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \sw~combout\(6),
	combout => \sw9_sync~0_combout\);

-- Location: LCFF_X20_Y12_N1
sw9_sync : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \sw9_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sw9_sync~regout\);

-- Location: LCCOMB_X15_Y12_N0
\burst[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[0]~16_combout\ = (burst(0) & (\Equal2~4_combout\ $ (GND))) # (!burst(0) & (!\Equal2~4_combout\ & VCC))
-- \burst[0]~17\ = CARRY((burst(0) & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst(0),
	datab => \Equal2~4_combout\,
	datad => VCC,
	combout => \burst[0]~16_combout\,
	cout => \burst[0]~17\);

-- Location: LCCOMB_X15_Y12_N2
\burst[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[1]~18_combout\ = (burst(1) & (!\burst[0]~17\)) # (!burst(1) & ((\burst[0]~17\) # (GND)))
-- \burst[1]~19\ = CARRY((!\burst[0]~17\) # (!burst(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(1),
	datad => VCC,
	cin => \burst[0]~17\,
	combout => \burst[1]~18_combout\,
	cout => \burst[1]~19\);

-- Location: LCCOMB_X19_Y12_N16
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Current_State.tempo_t~regout\) # ((\Current_State.stop2~regout\ & \Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.stop2~regout\,
	datac => \Current_State.tempo_t~regout\,
	datad => \Equal2~4_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X19_Y12_N17
\Current_State.tempo_t\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.tempo_t~regout\);

-- Location: LCCOMB_X18_Y13_N26
\baud_time~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~32_combout\ = (\Current_State.tempo_t~regout\) # (\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Current_State.tempo_t~regout\,
	datad => \rst~combout\,
	combout => \baud_time~32_combout\);

-- Location: LCCOMB_X18_Y13_N8
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\Current_State.data_emiss~regout\ & (!\Current_State.tempo_t~regout\ & !\Current_State.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.data_emiss~regout\,
	datac => \Current_State.tempo_t~regout\,
	datad => \Current_State.init~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X18_Y13_N14
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (ind_txd(0) & ((\Selector28~0_combout\) # ((\Current_State.data_emiss~regout\ & \Equal0~0_combout\)))) # (!ind_txd(0) & (\Current_State.data_emiss~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.data_emiss~regout\,
	datab => \Selector28~0_combout\,
	datac => ind_txd(0),
	datad => \Equal0~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCFF_X18_Y13_N15
\ind_txd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector30~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ind_txd(0));

-- Location: LCCOMB_X19_Y12_N24
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (ind_txd(1) & ((\Selector28~0_combout\) # ((ind_txd(0) & \Current_State.data_emiss~regout\)))) # (!ind_txd(1) & (((!ind_txd(0) & \Current_State.data_emiss~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => ind_txd(0),
	datac => ind_txd(1),
	datad => \Current_State.data_emiss~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCFF_X19_Y12_N25
\ind_txd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ind_txd(1));

-- Location: LCCOMB_X19_Y12_N6
\Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Current_State.data_emiss~regout\ & (ind_txd(2) $ (((!ind_txd(0) & !ind_txd(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.data_emiss~regout\,
	datab => ind_txd(0),
	datac => ind_txd(1),
	datad => ind_txd(2),
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X19_Y12_N22
\Selector28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\Selector28~1_combout\) # ((\Selector28~0_combout\ & ind_txd(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datac => ind_txd(2),
	datad => \Selector28~1_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCFF_X19_Y12_N23
\ind_txd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector28~2_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ind_txd(2));

-- Location: LCCOMB_X19_Y12_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!ind_txd(3) & (ind_txd(0) & (!ind_txd(1) & !ind_txd(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ind_txd(3),
	datab => ind_txd(0),
	datac => ind_txd(1),
	datad => ind_txd(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Equal1~4_combout\ & (\Current_State.data_emiss~regout\ & ((\Equal0~0_combout\)))) # (!\Equal1~4_combout\ & ((\Current_State.stop~regout\) # ((\Current_State.data_emiss~regout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Current_State.data_emiss~regout\,
	datac => \Current_State.stop~regout\,
	datad => \Equal0~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X19_Y11_N1
\Current_State.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.stop~regout\);

-- Location: LCCOMB_X18_Y13_N24
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Equal1~4_combout\ & ((\Current_State.stop~regout\))) # (!\Equal1~4_combout\ & (\Current_State.att~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Current_State.att~regout\,
	datad => \Current_State.stop~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X18_Y13_N25
\Current_State.att\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.att~regout\);

-- Location: LCCOMB_X20_Y12_N18
\Current_State~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Current_State~14_combout\ = (\Current_State.att~regout\ & (\Equal1~4_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.att~regout\,
	datac => \Equal1~4_combout\,
	datad => \rst~combout\,
	combout => \Current_State~14_combout\);

-- Location: LCFF_X20_Y12_N19
\Current_State.lec_pf_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Current_State~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.lec_pf_st~regout\);

-- Location: LCCOMB_X20_Y12_N24
\Current_State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Current_State~12_combout\ = (!\rst~combout\ & \Current_State.lec_pf_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \Current_State.lec_pf_st~regout\,
	combout => \Current_State~12_combout\);

-- Location: LCFF_X20_Y12_N25
\Current_State.stop2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Current_State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.stop2~regout\);

-- Location: LCCOMB_X21_Y12_N8
\tempo[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[0]~24_combout\ = (tempo(0) & (\P_FSM~7_combout\ $ (GND))) # (!tempo(0) & (!\P_FSM~7_combout\ & VCC))
-- \tempo[0]~25\ = CARRY((tempo(0) & !\P_FSM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(0),
	datab => \P_FSM~7_combout\,
	datad => VCC,
	combout => \tempo[0]~24_combout\,
	cout => \tempo[0]~25\);

-- Location: LCCOMB_X21_Y12_N10
\tempo[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[1]~28_combout\ = (tempo(1) & (!\tempo[0]~25\)) # (!tempo(1) & ((\tempo[0]~25\) # (GND)))
-- \tempo[1]~29\ = CARRY((!\tempo[0]~25\) # (!tempo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(1),
	datad => VCC,
	cin => \tempo[0]~25\,
	combout => \tempo[1]~28_combout\,
	cout => \tempo[1]~29\);

-- Location: LCCOMB_X21_Y12_N12
\tempo[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[2]~30_combout\ = (tempo(2) & (\tempo[1]~29\ $ (GND))) # (!tempo(2) & (!\tempo[1]~29\ & VCC))
-- \tempo[2]~31\ = CARRY((tempo(2) & !\tempo[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(2),
	datad => VCC,
	cin => \tempo[1]~29\,
	combout => \tempo[2]~30_combout\,
	cout => \tempo[2]~31\);

-- Location: LCCOMB_X21_Y12_N14
\tempo[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[3]~32_combout\ = (tempo(3) & (!\tempo[2]~31\)) # (!tempo(3) & ((\tempo[2]~31\) # (GND)))
-- \tempo[3]~33\ = CARRY((!\tempo[2]~31\) # (!tempo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(3),
	datad => VCC,
	cin => \tempo[2]~31\,
	combout => \tempo[3]~32_combout\,
	cout => \tempo[3]~33\);

-- Location: LCCOMB_X18_Y13_N6
\tempo[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[13]~26_combout\ = (\rst~combout\) # (!\Current_State.tempo_t~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Current_State.tempo_t~regout\,
	datad => \rst~combout\,
	combout => \tempo[13]~26_combout\);

-- Location: LCCOMB_X20_Y12_N14
\tempo[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[13]~27_combout\ = (\rst~combout\) # ((\Current_State.stop2~regout\ & ((\Equal2~4_combout\))) # (!\Current_State.stop2~regout\ & (\Current_State.tempo_t~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \Equal2~4_combout\,
	datad => \Current_State.stop2~regout\,
	combout => \tempo[13]~27_combout\);

-- Location: LCFF_X21_Y12_N15
\tempo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[3]~32_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(3));

-- Location: LCCOMB_X21_Y12_N16
\tempo[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[4]~34_combout\ = (tempo(4) & (\tempo[3]~33\ $ (GND))) # (!tempo(4) & (!\tempo[3]~33\ & VCC))
-- \tempo[4]~35\ = CARRY((tempo(4) & !\tempo[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(4),
	datad => VCC,
	cin => \tempo[3]~33\,
	combout => \tempo[4]~34_combout\,
	cout => \tempo[4]~35\);

-- Location: LCFF_X21_Y12_N17
\tempo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[4]~34_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(4));

-- Location: LCCOMB_X21_Y12_N18
\tempo[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[5]~36_combout\ = (tempo(5) & (!\tempo[4]~35\)) # (!tempo(5) & ((\tempo[4]~35\) # (GND)))
-- \tempo[5]~37\ = CARRY((!\tempo[4]~35\) # (!tempo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(5),
	datad => VCC,
	cin => \tempo[4]~35\,
	combout => \tempo[5]~36_combout\,
	cout => \tempo[5]~37\);

-- Location: LCFF_X21_Y12_N19
\tempo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[5]~36_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(5));

-- Location: LCCOMB_X21_Y12_N20
\tempo[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[6]~38_combout\ = (tempo(6) & (\tempo[5]~37\ $ (GND))) # (!tempo(6) & (!\tempo[5]~37\ & VCC))
-- \tempo[6]~39\ = CARRY((tempo(6) & !\tempo[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(6),
	datad => VCC,
	cin => \tempo[5]~37\,
	combout => \tempo[6]~38_combout\,
	cout => \tempo[6]~39\);

-- Location: LCCOMB_X21_Y12_N22
\tempo[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[7]~40_combout\ = (tempo(7) & (!\tempo[6]~39\)) # (!tempo(7) & ((\tempo[6]~39\) # (GND)))
-- \tempo[7]~41\ = CARRY((!\tempo[6]~39\) # (!tempo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(7),
	datad => VCC,
	cin => \tempo[6]~39\,
	combout => \tempo[7]~40_combout\,
	cout => \tempo[7]~41\);

-- Location: LCFF_X21_Y12_N23
\tempo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[7]~40_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(7));

-- Location: LCCOMB_X21_Y12_N26
\tempo[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[9]~44_combout\ = (tempo(9) & (!\tempo[8]~43\)) # (!tempo(9) & ((\tempo[8]~43\) # (GND)))
-- \tempo[9]~45\ = CARRY((!\tempo[8]~43\) # (!tempo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(9),
	datad => VCC,
	cin => \tempo[8]~43\,
	combout => \tempo[9]~44_combout\,
	cout => \tempo[9]~45\);

-- Location: LCFF_X21_Y12_N27
\tempo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[9]~44_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(9));

-- Location: LCCOMB_X21_Y12_N28
\tempo[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[10]~46_combout\ = (tempo(10) & (\tempo[9]~45\ $ (GND))) # (!tempo(10) & (!\tempo[9]~45\ & VCC))
-- \tempo[10]~47\ = CARRY((tempo(10) & !\tempo[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(10),
	datad => VCC,
	cin => \tempo[9]~45\,
	combout => \tempo[10]~46_combout\,
	cout => \tempo[10]~47\);

-- Location: LCFF_X21_Y12_N29
\tempo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[10]~46_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(10));

-- Location: LCCOMB_X21_Y12_N30
\tempo[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[11]~48_combout\ = (tempo(11) & (!\tempo[10]~47\)) # (!tempo(11) & ((\tempo[10]~47\) # (GND)))
-- \tempo[11]~49\ = CARRY((!\tempo[10]~47\) # (!tempo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(11),
	datad => VCC,
	cin => \tempo[10]~47\,
	combout => \tempo[11]~48_combout\,
	cout => \tempo[11]~49\);

-- Location: LCFF_X21_Y12_N31
\tempo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[11]~48_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(11));

-- Location: LCCOMB_X21_Y11_N0
\tempo[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[12]~50_combout\ = (tempo(12) & (\tempo[11]~49\ $ (GND))) # (!tempo(12) & (!\tempo[11]~49\ & VCC))
-- \tempo[12]~51\ = CARRY((tempo(12) & !\tempo[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(12),
	datad => VCC,
	cin => \tempo[11]~49\,
	combout => \tempo[12]~50_combout\,
	cout => \tempo[12]~51\);

-- Location: LCFF_X21_Y11_N1
\tempo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[12]~50_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(12));

-- Location: LCCOMB_X21_Y11_N2
\tempo[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[13]~52_combout\ = (tempo(13) & (!\tempo[12]~51\)) # (!tempo(13) & ((\tempo[12]~51\) # (GND)))
-- \tempo[13]~53\ = CARRY((!\tempo[12]~51\) # (!tempo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(13),
	datad => VCC,
	cin => \tempo[12]~51\,
	combout => \tempo[13]~52_combout\,
	cout => \tempo[13]~53\);

-- Location: LCFF_X21_Y11_N3
\tempo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[13]~52_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(13));

-- Location: LCCOMB_X21_Y11_N4
\tempo[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[14]~54_combout\ = (tempo(14) & (\tempo[13]~53\ $ (GND))) # (!tempo(14) & (!\tempo[13]~53\ & VCC))
-- \tempo[14]~55\ = CARRY((tempo(14) & !\tempo[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(14),
	datad => VCC,
	cin => \tempo[13]~53\,
	combout => \tempo[14]~54_combout\,
	cout => \tempo[14]~55\);

-- Location: LCFF_X21_Y11_N5
\tempo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[14]~54_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(14));

-- Location: LCCOMB_X21_Y11_N8
\tempo[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[16]~58_combout\ = (tempo(16) & (\tempo[15]~57\ $ (GND))) # (!tempo(16) & (!\tempo[15]~57\ & VCC))
-- \tempo[16]~59\ = CARRY((tempo(16) & !\tempo[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(16),
	datad => VCC,
	cin => \tempo[15]~57\,
	combout => \tempo[16]~58_combout\,
	cout => \tempo[16]~59\);

-- Location: LCFF_X21_Y11_N9
\tempo[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[16]~58_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(16));

-- Location: LCCOMB_X21_Y11_N10
\tempo[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[17]~60_combout\ = (tempo(17) & (!\tempo[16]~59\)) # (!tempo(17) & ((\tempo[16]~59\) # (GND)))
-- \tempo[17]~61\ = CARRY((!\tempo[16]~59\) # (!tempo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(17),
	datad => VCC,
	cin => \tempo[16]~59\,
	combout => \tempo[17]~60_combout\,
	cout => \tempo[17]~61\);

-- Location: LCCOMB_X21_Y11_N12
\tempo[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[18]~62_combout\ = (tempo(18) & (\tempo[17]~61\ $ (GND))) # (!tempo(18) & (!\tempo[17]~61\ & VCC))
-- \tempo[18]~63\ = CARRY((tempo(18) & !\tempo[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(18),
	datad => VCC,
	cin => \tempo[17]~61\,
	combout => \tempo[18]~62_combout\,
	cout => \tempo[18]~63\);

-- Location: LCCOMB_X21_Y11_N14
\tempo[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[19]~64_combout\ = (tempo(19) & (!\tempo[18]~63\)) # (!tempo(19) & ((\tempo[18]~63\) # (GND)))
-- \tempo[19]~65\ = CARRY((!\tempo[18]~63\) # (!tempo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(19),
	datad => VCC,
	cin => \tempo[18]~63\,
	combout => \tempo[19]~64_combout\,
	cout => \tempo[19]~65\);

-- Location: LCFF_X21_Y11_N15
\tempo[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[19]~64_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(19));

-- Location: LCCOMB_X21_Y11_N16
\tempo[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[20]~66_combout\ = (tempo(20) & (\tempo[19]~65\ $ (GND))) # (!tempo(20) & (!\tempo[19]~65\ & VCC))
-- \tempo[20]~67\ = CARRY((tempo(20) & !\tempo[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo(20),
	datad => VCC,
	cin => \tempo[19]~65\,
	combout => \tempo[20]~66_combout\,
	cout => \tempo[20]~67\);

-- Location: LCCOMB_X21_Y11_N18
\tempo[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[21]~68_combout\ = (tempo(21) & (!\tempo[20]~67\)) # (!tempo(21) & ((\tempo[20]~67\) # (GND)))
-- \tempo[21]~69\ = CARRY((!\tempo[20]~67\) # (!tempo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo(21),
	datad => VCC,
	cin => \tempo[20]~67\,
	combout => \tempo[21]~68_combout\,
	cout => \tempo[21]~69\);

-- Location: LCFF_X21_Y11_N19
\tempo[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[21]~68_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(21));

-- Location: LCCOMB_X21_Y11_N22
\tempo[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempo[23]~72_combout\ = \tempo[22]~71\ $ (tempo(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tempo(23),
	cin => \tempo[22]~71\,
	combout => \tempo[23]~72_combout\);

-- Location: LCFF_X21_Y11_N23
\tempo[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[23]~72_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(23));

-- Location: LCFF_X21_Y11_N17
\tempo[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[20]~66_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(20));

-- Location: LCCOMB_X19_Y11_N14
\P_FSM~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~6_combout\ = (tempo(22) & (tempo(21) & (tempo(20) & tempo(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(22),
	datab => tempo(21),
	datac => tempo(20),
	datad => tempo(19),
	combout => \P_FSM~6_combout\);

-- Location: LCCOMB_X21_Y11_N26
\P_FSM~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~3_combout\ = (tempo(14) & (tempo(13) & (tempo(11) & tempo(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(14),
	datab => tempo(13),
	datac => tempo(11),
	datad => tempo(12),
	combout => \P_FSM~3_combout\);

-- Location: LCFF_X21_Y12_N21
\tempo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[6]~38_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(6));

-- Location: LCCOMB_X21_Y12_N2
\P_FSM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~1_combout\ = (tempo(4) & (tempo(3) & (tempo(6) & tempo(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(4),
	datab => tempo(3),
	datac => tempo(6),
	datad => tempo(5),
	combout => \P_FSM~1_combout\);

-- Location: LCFF_X21_Y12_N9
\tempo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[0]~24_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(0));

-- Location: LCFF_X21_Y12_N11
\tempo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[1]~28_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(1));

-- Location: LCFF_X21_Y12_N13
\tempo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[2]~30_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(2));

-- Location: LCCOMB_X20_Y12_N26
\P_FSM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~0_combout\ = (\sw9_sync~regout\ & (tempo(0) & (tempo(1) & tempo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw9_sync~regout\,
	datab => tempo(0),
	datac => tempo(1),
	datad => tempo(2),
	combout => \P_FSM~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\P_FSM~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~4_combout\ = (\P_FSM~2_combout\ & (\P_FSM~3_combout\ & (\P_FSM~1_combout\ & \P_FSM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_FSM~2_combout\,
	datab => \P_FSM~3_combout\,
	datac => \P_FSM~1_combout\,
	datad => \P_FSM~0_combout\,
	combout => \P_FSM~4_combout\);

-- Location: LCCOMB_X21_Y11_N30
\P_FSM~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~7_combout\ = (\P_FSM~5_combout\ & (tempo(23) & (\P_FSM~6_combout\ & \P_FSM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_FSM~5_combout\,
	datab => tempo(23),
	datac => \P_FSM~6_combout\,
	datad => \P_FSM~4_combout\,
	combout => \P_FSM~7_combout\);

-- Location: LCCOMB_X21_Y12_N4
\burst[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[10]~20_combout\ = (\rst~combout\) # ((\Current_State.tempo_t~regout\ & ((\P_FSM~7_combout\))) # (!\Current_State.tempo_t~regout\ & (\Current_State.stop2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Current_State.stop2~regout\,
	datac => \Current_State.tempo_t~regout\,
	datad => \P_FSM~7_combout\,
	combout => \burst[10]~20_combout\);

-- Location: LCFF_X15_Y12_N3
\burst[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[1]~18_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(1));

-- Location: LCCOMB_X15_Y12_N4
\burst[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[2]~21_combout\ = (burst(2) & (\burst[1]~19\ $ (GND))) # (!burst(2) & (!\burst[1]~19\ & VCC))
-- \burst[2]~22\ = CARRY((burst(2) & !\burst[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(2),
	datad => VCC,
	cin => \burst[1]~19\,
	combout => \burst[2]~21_combout\,
	cout => \burst[2]~22\);

-- Location: LCFF_X15_Y12_N5
\burst[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[2]~21_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(2));

-- Location: LCCOMB_X15_Y12_N6
\burst[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[3]~23_combout\ = (burst(3) & (!\burst[2]~22\)) # (!burst(3) & ((\burst[2]~22\) # (GND)))
-- \burst[3]~24\ = CARRY((!\burst[2]~22\) # (!burst(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(3),
	datad => VCC,
	cin => \burst[2]~22\,
	combout => \burst[3]~23_combout\,
	cout => \burst[3]~24\);

-- Location: LCFF_X15_Y12_N7
\burst[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[3]~23_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(3));

-- Location: LCFF_X15_Y12_N1
\burst[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[0]~16_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(0));

-- Location: LCCOMB_X18_Y11_N0
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (burst(1) & (burst(2) & (burst(3) & !burst(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst(1),
	datab => burst(2),
	datac => burst(3),
	datad => burst(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X15_Y12_N8
\burst[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[4]~25_combout\ = (burst(4) & (\burst[3]~24\ $ (GND))) # (!burst(4) & (!\burst[3]~24\ & VCC))
-- \burst[4]~26\ = CARRY((burst(4) & !\burst[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(4),
	datad => VCC,
	cin => \burst[3]~24\,
	combout => \burst[4]~25_combout\,
	cout => \burst[4]~26\);

-- Location: LCFF_X15_Y12_N9
\burst[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[4]~25_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(4));

-- Location: LCCOMB_X15_Y12_N10
\burst[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[5]~27_combout\ = (burst(5) & (!\burst[4]~26\)) # (!burst(5) & ((\burst[4]~26\) # (GND)))
-- \burst[5]~28\ = CARRY((!\burst[4]~26\) # (!burst(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(5),
	datad => VCC,
	cin => \burst[4]~26\,
	combout => \burst[5]~27_combout\,
	cout => \burst[5]~28\);

-- Location: LCCOMB_X15_Y12_N14
\burst[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[7]~31_combout\ = (burst(7) & (!\burst[6]~30\)) # (!burst(7) & ((\burst[6]~30\) # (GND)))
-- \burst[7]~32\ = CARRY((!\burst[6]~30\) # (!burst(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(7),
	datad => VCC,
	cin => \burst[6]~30\,
	combout => \burst[7]~31_combout\,
	cout => \burst[7]~32\);

-- Location: LCFF_X15_Y12_N15
\burst[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[7]~31_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(7));

-- Location: LCCOMB_X15_Y12_N18
\burst[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[9]~35_combout\ = (burst(9) & (!\burst[8]~34\)) # (!burst(9) & ((\burst[8]~34\) # (GND)))
-- \burst[9]~36\ = CARRY((!\burst[8]~34\) # (!burst(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => burst(9),
	datad => VCC,
	cin => \burst[8]~34\,
	combout => \burst[9]~35_combout\,
	cout => \burst[9]~36\);

-- Location: LCFF_X15_Y12_N19
\burst[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[9]~35_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(9));

-- Location: LCCOMB_X15_Y12_N20
\burst[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \burst[10]~37_combout\ = (burst(10) & (\burst[9]~36\ $ (GND))) # (!burst(10) & (!\burst[9]~36\ & VCC))
-- \burst[10]~38\ = CARRY((burst(10) & !\burst[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => burst(10),
	datad => VCC,
	cin => \burst[9]~36\,
	combout => \burst[10]~37_combout\,
	cout => \burst[10]~38\);

-- Location: LCFF_X15_Y12_N23
\burst[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[11]~39_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(11));

-- Location: LCFF_X15_Y12_N21
\burst[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[10]~37_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(10));

-- Location: LCCOMB_X15_Y11_N0
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!burst(8) & (!burst(11) & (!burst(10) & !burst(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst(8),
	datab => burst(11),
	datac => burst(10),
	datad => burst(9),
	combout => \Equal2~2_combout\);

-- Location: LCFF_X15_Y12_N11
\burst[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \burst[5]~27_combout\,
	sclr => \baud_time~32_combout\,
	ena => \burst[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => burst(5));

-- Location: LCCOMB_X15_Y10_N8
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!burst(6) & (!burst(4) & (!burst(5) & !burst(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst(6),
	datab => burst(4),
	datac => burst(5),
	datad => burst(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X20_Y12_N30
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~0_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X19_Y12_N10
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Current_State.stop2~regout\ & (((!\Current_State.init0~regout\ & \sw9_sync~regout\)) # (!\Equal2~4_combout\))) # (!\Current_State.stop2~regout\ & (!\Current_State.init0~regout\ & (\sw9_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.stop2~regout\,
	datab => \Current_State.init0~regout\,
	datac => \sw9_sync~regout\,
	datad => \Equal2~4_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X19_Y12_N11
\Current_State.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.init~regout\);

-- Location: LCCOMB_X18_Y12_N20
\baud_time[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time[12]~34_combout\ = (\Current_State.data_emiss~regout\) # ((\Current_State.init~regout\) # ((\baud_time[12]~33_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~33_combout\,
	datab => \Equal1~4_combout\,
	datac => \Current_State.data_emiss~regout\,
	datad => \Current_State.init~regout\,
	combout => \baud_time[12]~34_combout\);

-- Location: LCCOMB_X19_Y12_N30
\baud_time~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~44_combout\ = (!\rst~combout\ & (!\Current_State.tempo_t~regout\ & ((\Add0~16_combout\) # (\baud_time[12]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Current_State.tempo_t~regout\,
	combout => \baud_time~44_combout\);

-- Location: LCCOMB_X20_Y12_N4
\ad_bram[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram[3]~5_combout\ = (\Current_State.init0~regout\ & (!\Current_State.stop2~regout\ & !\Current_State.lec_pf_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.init0~regout\,
	datab => \Current_State.stop2~regout\,
	datad => \Current_State.lec_pf_st~regout\,
	combout => \ad_bram[3]~5_combout\);

-- Location: LCFF_X21_Y11_N11
\tempo[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[17]~60_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(17));

-- Location: LCFF_X21_Y11_N13
\tempo[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \tempo[18]~62_combout\,
	sclr => \tempo[13]~26_combout\,
	ena => \tempo[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tempo(18));

-- Location: LCCOMB_X19_Y11_N20
\P_FSM~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~5_combout\ = (tempo(15) & (tempo(16) & (tempo(17) & tempo(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(15),
	datab => tempo(16),
	datac => tempo(17),
	datad => tempo(18),
	combout => \P_FSM~5_combout\);

-- Location: LCCOMB_X19_Y11_N24
\P_FSM~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_FSM~8_combout\ = (\P_FSM~6_combout\ & (\P_FSM~5_combout\ & tempo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_FSM~6_combout\,
	datac => \P_FSM~5_combout\,
	datad => tempo(23),
	combout => \P_FSM~8_combout\);

-- Location: LCCOMB_X19_Y11_N18
\dp_ram2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2[0]~0_combout\ = (\Current_State.tempo_t~regout\ & ((!\P_FSM~4_combout\) # (!\P_FSM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datac => \P_FSM~8_combout\,
	datad => \P_FSM~4_combout\,
	combout => \dp_ram2[0]~0_combout\);

-- Location: LCCOMB_X20_Y12_N20
\baud_time[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time[12]~36_combout\ = (\rst~combout\) # ((!\baud_time[12]~35_combout\ & (\ad_bram[3]~5_combout\ & !\dp_ram2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~35_combout\,
	datab => \rst~combout\,
	datac => \ad_bram[3]~5_combout\,
	datad => \dp_ram2[0]~0_combout\,
	combout => \baud_time[12]~36_combout\);

-- Location: LCFF_X19_Y12_N31
\baud_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~44_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(8));

-- Location: LCCOMB_X19_Y13_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = baud_time(0) $ (VCC)
-- \Add0~1\ = CARRY(baud_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_time(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X18_Y12_N14
\baud_time~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~52_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~0_combout\,
	combout => \baud_time~52_combout\);

-- Location: LCFF_X18_Y12_N15
\baud_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~52_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(0));

-- Location: LCCOMB_X19_Y13_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (baud_time(4) & ((GND) # (!\Add0~7\))) # (!baud_time(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((baud_time(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_time(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y12_N14
\baud_time~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~48_combout\ = (!\baud_time[12]~34_combout\ & (\Add0~8_combout\ & (!\rst~combout\ & !\Current_State.tempo_t~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~34_combout\,
	datab => \Add0~8_combout\,
	datac => \rst~combout\,
	datad => \Current_State.tempo_t~regout\,
	combout => \baud_time~48_combout\);

-- Location: LCFF_X19_Y12_N15
\baud_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~48_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(4));

-- Location: LCCOMB_X19_Y13_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (baud_time(5) & (\Add0~9\ & VCC)) # (!baud_time(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!baud_time(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_time(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y12_N28
\baud_time~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~47_combout\ = (!\rst~combout\ & (!\Current_State.tempo_t~regout\ & ((\baud_time[12]~34_combout\) # (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~34_combout\,
	datab => \rst~combout\,
	datac => \Add0~10_combout\,
	datad => \Current_State.tempo_t~regout\,
	combout => \baud_time~47_combout\);

-- Location: LCFF_X19_Y12_N29
\baud_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~47_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(5));

-- Location: LCCOMB_X19_Y13_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (baud_time(7) & (\Add0~13\ & VCC)) # (!baud_time(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!baud_time(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_time(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X19_Y12_N0
\baud_time~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~45_combout\ = (!\baud_time[12]~34_combout\ & (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~34_combout\,
	datab => \Current_State.tempo_t~regout\,
	datac => \rst~combout\,
	datad => \Add0~14_combout\,
	combout => \baud_time~45_combout\);

-- Location: LCFF_X19_Y12_N1
\baud_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~45_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(7));

-- Location: LCCOMB_X19_Y13_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (baud_time(9) & (\Add0~17\ & VCC)) # (!baud_time(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!baud_time(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_time(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X19_Y12_N12
\baud_time~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~43_combout\ = (!\rst~combout\ & (!\Current_State.tempo_t~regout\ & ((\Add0~18_combout\) # (\baud_time[12]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~18_combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Current_State.tempo_t~regout\,
	combout => \baud_time~43_combout\);

-- Location: LCFF_X19_Y12_N13
\baud_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~43_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(9));

-- Location: LCCOMB_X19_Y13_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (baud_time(10) & ((GND) # (!\Add0~19\))) # (!baud_time(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((baud_time(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X19_Y12_N18
\baud_time~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~42_combout\ = (!\baud_time[12]~34_combout\ & (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & \Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time[12]~34_combout\,
	datab => \Current_State.tempo_t~regout\,
	datac => \rst~combout\,
	datad => \Add0~20_combout\,
	combout => \baud_time~42_combout\);

-- Location: LCFF_X19_Y12_N19
\baud_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~42_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(10));

-- Location: LCCOMB_X18_Y12_N28
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!baud_time(11) & (!baud_time(8) & (!baud_time(9) & !baud_time(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(11),
	datab => baud_time(8),
	datac => baud_time(9),
	datad => baud_time(10),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X19_Y13_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (baud_time(12) & ((GND) # (!\Add0~23\))) # (!baud_time(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((baud_time(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_time(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X18_Y12_N30
\baud_time~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~40_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~24_combout\,
	combout => \baud_time~40_combout\);

-- Location: LCFF_X18_Y12_N31
\baud_time[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~40_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(12));

-- Location: LCCOMB_X19_Y13_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (baud_time(13) & (\Add0~25\ & VCC)) # (!baud_time(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!baud_time(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X19_Y13_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = baud_time(15) $ (!\Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X18_Y12_N0
\baud_time~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~37_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~30_combout\,
	combout => \baud_time~37_combout\);

-- Location: LCFF_X18_Y12_N1
\baud_time[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~37_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(15));

-- Location: LCCOMB_X18_Y12_N4
\baud_time~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \baud_time~39_combout\ = (!\Current_State.tempo_t~regout\ & (!\rst~combout\ & (!\baud_time[12]~34_combout\ & \Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \rst~combout\,
	datac => \baud_time[12]~34_combout\,
	datad => \Add0~26_combout\,
	combout => \baud_time~39_combout\);

-- Location: LCFF_X18_Y12_N5
\baud_time[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \baud_time~39_combout\,
	ena => \baud_time[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => baud_time(13));

-- Location: LCCOMB_X18_Y12_N8
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!baud_time(14) & (!baud_time(15) & (!baud_time(13) & !baud_time(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(14),
	datab => baud_time(15),
	datac => baud_time(13),
	datad => baud_time(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!baud_time(6) & (!baud_time(4) & (!baud_time(7) & !baud_time(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_time(6),
	datab => baud_time(4),
	datac => baud_time(7),
	datad => baud_time(5),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X18_Y12_N18
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X19_Y11_N10
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Current_State.data_emiss~regout\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.data_emiss~regout\,
	datad => \Equal0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X18_Y13_N10
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\Equal1~4_combout\ & (\Current_State.start~regout\)) # (!\Equal1~4_combout\ & ((\Current_State.emiss~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.start~regout\,
	datab => \Equal1~4_combout\,
	datac => \Current_State.emiss~regout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCFF_X18_Y13_N11
\Current_State.emiss\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector6~1_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.emiss~regout\);

-- Location: LCCOMB_X18_Y13_N16
\Current_State~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Current_State~13_combout\ = (!\rst~combout\ & (\Equal1~4_combout\ & \Current_State.emiss~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Equal1~4_combout\,
	datad => \Current_State.emiss~regout\,
	combout => \Current_State~13_combout\);

-- Location: LCFF_X18_Y13_N17
\Current_State.data_emiss\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Current_State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.data_emiss~regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(0),
	combout => \q_bram~combout\(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(4),
	combout => \q_bram~combout\(4));

-- Location: LCCOMB_X19_Y11_N30
\dp_ram2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~10_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(0)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_bram~combout\(7),
	datab => \Current_State.data_emiss~regout\,
	datac => \baud_time~32_combout\,
	datad => dp_ram2(0),
	combout => \dp_ram2~10_combout\);

-- Location: LCCOMB_X18_Y13_N12
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Current_State.init~regout\) # ((!\Equal1~4_combout\ & \Current_State.start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Current_State.start~regout\,
	datad => \Current_State.init~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X18_Y13_N13
\Current_State.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.start~regout\);

-- Location: LCCOMB_X19_Y11_N6
\dp_ram2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2[0]~2_combout\ = (\Current_State.data_emiss~regout\ & (((\Equal0~0_combout\)))) # (!\Current_State.data_emiss~regout\ & (!\Current_State.tempo_t~regout\ & (!\Current_State.start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \Current_State.data_emiss~regout\,
	datac => \Current_State.start~regout\,
	datad => \Equal0~0_combout\,
	combout => \dp_ram2[0]~2_combout\);

-- Location: LCCOMB_X19_Y11_N16
\dp_ram2[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2[0]~3_combout\ = (\rst~combout\) # ((!\dp_ram2[0]~0_combout\ & !\dp_ram2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_ram2[0]~0_combout\,
	datac => \rst~combout\,
	datad => \dp_ram2[0]~2_combout\,
	combout => \dp_ram2[0]~3_combout\);

-- Location: LCFF_X19_Y11_N31
\dp_ram2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~10_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(7));

-- Location: LCCOMB_X19_Y11_N28
\dp_ram2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~9_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(7)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_bram~combout\(6),
	datab => dp_ram2(7),
	datac => \baud_time~32_combout\,
	datad => \Current_State.data_emiss~regout\,
	combout => \dp_ram2~9_combout\);

-- Location: LCFF_X19_Y11_N29
\dp_ram2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~9_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(6));

-- Location: LCCOMB_X19_Y11_N2
\dp_ram2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~8_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(6)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_bram~combout\(5),
	datab => dp_ram2(6),
	datac => \baud_time~32_combout\,
	datad => \Current_State.data_emiss~regout\,
	combout => \dp_ram2~8_combout\);

-- Location: LCFF_X19_Y11_N3
\dp_ram2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~8_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(5));

-- Location: LCCOMB_X19_Y11_N8
\dp_ram2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~7_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(5)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time~32_combout\,
	datab => \Current_State.data_emiss~regout\,
	datac => \q_bram~combout\(4),
	datad => dp_ram2(5),
	combout => \dp_ram2~7_combout\);

-- Location: LCFF_X19_Y11_N9
\dp_ram2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~7_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(4));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\q_bram[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_q_bram(3),
	combout => \q_bram~combout\(3));

-- Location: LCCOMB_X19_Y11_N22
\dp_ram2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~6_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & (dp_ram2(4))) # (!\Current_State.data_emiss~regout\ & ((\q_bram~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time~32_combout\,
	datab => dp_ram2(4),
	datac => \q_bram~combout\(3),
	datad => \Current_State.data_emiss~regout\,
	combout => \dp_ram2~6_combout\);

-- Location: LCFF_X19_Y11_N23
\dp_ram2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~6_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(3));

-- Location: LCCOMB_X19_Y11_N4
\dp_ram2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~5_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(3)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_bram~combout\(2),
	datab => \Current_State.data_emiss~regout\,
	datac => \baud_time~32_combout\,
	datad => dp_ram2(3),
	combout => \dp_ram2~5_combout\);

-- Location: LCFF_X19_Y11_N5
\dp_ram2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~5_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(2));

-- Location: LCCOMB_X19_Y11_N12
\dp_ram2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~4_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(2)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_bram~combout\(1),
	datab => dp_ram2(2),
	datac => \baud_time~32_combout\,
	datad => \Current_State.data_emiss~regout\,
	combout => \dp_ram2~4_combout\);

-- Location: LCFF_X19_Y11_N13
\dp_ram2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~4_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(1));

-- Location: LCCOMB_X19_Y11_N26
\dp_ram2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp_ram2~1_combout\ = (!\baud_time~32_combout\ & ((\Current_State.data_emiss~regout\ & ((dp_ram2(1)))) # (!\Current_State.data_emiss~regout\ & (\q_bram~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_time~32_combout\,
	datab => \Current_State.data_emiss~regout\,
	datac => \q_bram~combout\(0),
	datad => dp_ram2(1),
	combout => \dp_ram2~1_combout\);

-- Location: LCFF_X19_Y11_N27
\dp_ram2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \dp_ram2~1_combout\,
	ena => \dp_ram2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dp_ram2(0));

-- Location: LCCOMB_X21_Y12_N0
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Current_State.stop~regout\) # ((\Current_State.stop2~regout\) # ((dp_ram2(0) & \Current_State.emiss~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.stop~regout\,
	datab => dp_ram2(0),
	datac => \Current_State.emiss~regout\,
	datad => \Current_State.stop2~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X20_Y12_N6
\Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ((\Current_State.lec_pf_st~regout\) # ((\Current_State.data_emiss~regout\) # (\Current_State.tempo_t~regout\))) # (!\Current_State.init0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.init0~regout\,
	datab => \Current_State.lec_pf_st~regout\,
	datac => \Current_State.data_emiss~regout\,
	datad => \Current_State.tempo_t~regout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X18_Y13_N18
\Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\txd~regout\ & (((\Current_State.att~regout\) # (\Selector26~1_combout\)))) # (!\txd~regout\ & (!\Equal1~4_combout\ & (\Current_State.att~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txd~regout\,
	datab => \Equal1~4_combout\,
	datac => \Current_State.att~regout\,
	datad => \Selector26~1_combout\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X21_Y12_N6
\Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\Selector26~0_combout\) # ((\Selector26~2_combout\) # ((\Current_State.tempo_t~regout\ & \P_FSM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.tempo_t~regout\,
	datab => \Selector26~0_combout\,
	datac => \Selector26~2_combout\,
	datad => \P_FSM~7_combout\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X20_Y10_N8
\txd~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \txd~feeder_combout\ = \Selector26~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector26~3_combout\,
	combout => \txd~feeder_combout\);

-- Location: LCFF_X20_Y10_N9
txd : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \txd~feeder_combout\,
	sdata => VCC,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \txd~regout\);

-- Location: LCCOMB_X20_Y12_N8
\ad_bram~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram~4_combout\ = (!\rst~combout\ & (!ad_bram(0) & \Current_State.lec_pf_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => ad_bram(0),
	datad => \Current_State.lec_pf_st~regout\,
	combout => \ad_bram~4_combout\);

-- Location: LCCOMB_X20_Y12_N16
\ad_bram[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram[3]~6_combout\ = (\rst~combout\) # ((!\ad_bram[3]~5_combout\ & ((\Equal2~4_combout\) # (!\Current_State.stop2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Current_State.stop2~regout\,
	datac => \ad_bram[3]~5_combout\,
	datad => \Equal2~4_combout\,
	combout => \ad_bram[3]~6_combout\);

-- Location: LCFF_X20_Y12_N9
\ad_bram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \ad_bram~4_combout\,
	ena => \ad_bram[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ad_bram(0));

-- Location: LCCOMB_X20_Y12_N10
\ad_bram~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram~7_combout\ = (!\rst~combout\ & (\Current_State.lec_pf_st~regout\ & (ad_bram(0) $ (ad_bram(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => ad_bram(0),
	datac => ad_bram(1),
	datad => \Current_State.lec_pf_st~regout\,
	combout => \ad_bram~7_combout\);

-- Location: LCFF_X20_Y12_N11
\ad_bram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \ad_bram~7_combout\,
	ena => \ad_bram[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ad_bram(1));

-- Location: LCCOMB_X20_Y12_N2
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (ad_bram(0) & ad_bram(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ad_bram(0),
	datad => ad_bram(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X20_Y12_N28
\ad_bram~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram~9_combout\ = (!\rst~combout\ & (\Current_State.lec_pf_st~regout\ & (ad_bram(2) $ (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Current_State.lec_pf_st~regout\,
	datac => ad_bram(2),
	datad => \Add2~0_combout\,
	combout => \ad_bram~9_combout\);

-- Location: LCFF_X20_Y12_N29
\ad_bram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \ad_bram~9_combout\,
	ena => \ad_bram[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ad_bram(2));

-- Location: LCCOMB_X20_Y12_N22
\ad_bram~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ad_bram~8_combout\ = (\Current_State~12_combout\ & (ad_bram(3) $ (((\Add2~0_combout\ & ad_bram(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State~12_combout\,
	datab => \Add2~0_combout\,
	datac => ad_bram(3),
	datad => ad_bram(2),
	combout => \ad_bram~8_combout\);

-- Location: LCFF_X20_Y12_N23
\ad_bram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \ad_bram~8_combout\,
	ena => \ad_bram[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ad_bram(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(2));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(3));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(4));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(5));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(7));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_txd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledR);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\raddress_bram[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ad_bram(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_raddress_bram(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\raddress_bram[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ad_bram(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_raddress_bram(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\raddress_bram[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ad_bram(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_raddress_bram(2));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\raddress_bram[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ad_bram(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_raddress_bram(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\txd_obs~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \txd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txd_obs);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\txd_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \txd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txd_out);
END structure;


