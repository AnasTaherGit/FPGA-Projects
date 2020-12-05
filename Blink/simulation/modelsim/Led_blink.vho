-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/05/2020 11:34:11"

-- 
-- Device: Altera EP1C3T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Led_blink IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic
	);
END Led_blink;

-- Design Ports Information
-- led	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Led_blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_164\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_166\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_168\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_170\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_172\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_174\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_152\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_154\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_156\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_158\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_160\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_162\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_180\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_176\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_178\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_182\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_184\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_186\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_188\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_190\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \pulse~regout\ : std_logic;
SIGNAL count : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cyclone_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X18_Y5_N0
\Add0~30\ : cyclone_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(8) $ ((!\Add0~37\)))
-- \Add0~32\ = CARRY(((count(8) & !\Add0~37\)))
-- \Add0~32COUT1_164\ = CARRY(((count(8) & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_164\);

-- Location: LC_X17_Y5_N0
\count[8]\ : cyclone_lcell
-- Equation(s):
-- count(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X18_Y5_N1
\Add0~25\ : cyclone_lcell
-- Equation(s):
-- \Add0~25_combout\ = count(9) $ (((((!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_164\)))))
-- \Add0~27\ = CARRY(((!\Add0~32\)) # (!count(9)))
-- \Add0~27COUT1_166\ = CARRY(((!\Add0~32COUT1_164\)) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_166\);

-- Location: LC_X17_Y5_N1
\count[9]\ : cyclone_lcell
-- Equation(s):
-- count(9) = DFFEAS((((\Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X18_Y5_N2
\Add0~15\ : cyclone_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(10) $ ((!(!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_166\))))
-- \Add0~17\ = CARRY(((count(10) & !\Add0~27\)))
-- \Add0~17COUT1_168\ = CARRY(((count(10) & !\Add0~27COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_168\);

-- Location: LC_X18_Y5_N3
\Add0~10\ : cyclone_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(11) $ (((!\Add0~37\ & \Add0~17\) # (\Add0~37\ & \Add0~17COUT1_168\))))
-- \Add0~12\ = CARRY(((!\Add0~17\) # (!count(11))))
-- \Add0~12COUT1_170\ = CARRY(((!\Add0~17COUT1_168\) # (!count(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	cin => \Add0~37\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_170\);

-- Location: LC_X18_Y5_N5
\Add0~0\ : cyclone_lcell
-- Equation(s):
-- \Add0~0_combout\ = (count(13) $ ((\Add0~7\)))
-- \Add0~2\ = CARRY(((!\Add0~7\) # (!count(13))))
-- \Add0~2COUT1_172\ = CARRY(((!\Add0~7\) # (!count(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_172\);

-- Location: LC_X17_Y5_N9
\count[13]\ : cyclone_lcell
-- Equation(s):
-- count(13) = DFFEAS(((\Add0~0_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X17_Y5_N7
\count[11]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(10) & (count(12) & (!count[11] & count(13))))
-- count(11) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(10),
	datab => count(12),
	datac => \Add0~10_combout\,
	datad => count(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(11));

-- Location: LC_X18_Y5_N4
\Add0~5\ : cyclone_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(12) $ ((!(!\Add0~37\ & \Add0~12\) # (\Add0~37\ & \Add0~12COUT1_170\))))
-- \Add0~7\ = CARRY(((count(12) & !\Add0~12COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	cin => \Add0~37\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X16_Y5_N2
\count[12]\ : cyclone_lcell
-- Equation(s):
-- count(12) = DFFEAS(((\Add0~5_combout\ & ((!\Equal0~7\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7700",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7\,
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X18_Y5_N6
\Add0~70\ : cyclone_lcell
-- Equation(s):
-- \Add0~70_combout\ = count(14) $ ((((!(!\Add0~7\ & \Add0~2\) # (\Add0~7\ & \Add0~2COUT1_172\)))))
-- \Add0~72\ = CARRY((count(14) & ((!\Add0~2\))))
-- \Add0~72COUT1_174\ = CARRY((count(14) & ((!\Add0~2COUT1_172\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	cin => \Add0~7\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_174\);

-- Location: LC_X17_Y5_N3
\count[14]\ : cyclone_lcell
-- Equation(s):
-- count(14) = DFFEAS(((\Add0~70_combout\ & ((!\Equal0~7\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~4_combout\,
	datac => \Equal0~7\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X18_Y5_N7
\Add0~75\ : cyclone_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(15) $ (((!\Add0~7\ & \Add0~72\) # (\Add0~7\ & \Add0~72COUT1_174\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(15))))
-- \Add0~77COUT1_176\ = CARRY(((!\Add0~72COUT1_174\) # (!count(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	cin => \Add0~7\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_176\);

-- Location: LC_X19_Y5_N9
\count[15]\ : cyclone_lcell
-- Equation(s):
-- count(15) = DFFEAS(((\Add0~75_combout\ & ((!\Equal0~7\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~75_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X18_Y6_N2
\Add0~65\ : cyclone_lcell
-- Equation(s):
-- \Add0~65_combout\ = ((!count(0)))
-- \Add0~67\ = CARRY(((count(0))))
-- \Add0~67COUT1_152\ = CARRY(((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_152\);

-- Location: LC_X18_Y6_N0
\count[0]\ : cyclone_lcell
-- Equation(s):
-- count(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X18_Y6_N3
\Add0~60\ : cyclone_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(1) $ ((\Add0~67\)))
-- \Add0~62\ = CARRY(((!\Add0~67\) # (!count(1))))
-- \Add0~62COUT1_154\ = CARRY(((!\Add0~67COUT1_152\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_154\);

-- Location: LC_X17_Y5_N8
\count[1]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~3\ = (count(15) & (count(14) & (count[1] & count(0))))
-- count(1) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(15),
	datab => count(14),
	datac => \Add0~60_combout\,
	datad => count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(1));

-- Location: LC_X18_Y6_N4
\Add0~55\ : cyclone_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(2) $ ((!\Add0~62\)))
-- \Add0~57\ = CARRY(((count(2) & !\Add0~62COUT1_154\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X17_Y6_N2
\count[2]\ : cyclone_lcell
-- Equation(s):
-- count(2) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X18_Y6_N5
\Add0~50\ : cyclone_lcell
-- Equation(s):
-- \Add0~50_combout\ = count(3) $ ((((\Add0~57\))))
-- \Add0~52\ = CARRY(((!\Add0~57\)) # (!count(3)))
-- \Add0~52COUT1_156\ = CARRY(((!\Add0~57\)) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_156\);

-- Location: LC_X18_Y6_N1
\count[3]\ : cyclone_lcell
-- Equation(s):
-- count(3) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X18_Y6_N6
\Add0~45\ : cyclone_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(4) $ ((!(!\Add0~57\ & \Add0~52\) # (\Add0~57\ & \Add0~52COUT1_156\))))
-- \Add0~47\ = CARRY(((count(4) & !\Add0~52\)))
-- \Add0~47COUT1_158\ = CARRY(((count(4) & !\Add0~52COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	cin => \Add0~57\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_158\);

-- Location: LC_X17_Y6_N5
\count[4]\ : cyclone_lcell
-- Equation(s):
-- count(4) = DFFEAS((((\Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X18_Y6_N7
\Add0~40\ : cyclone_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(5) $ (((!\Add0~57\ & \Add0~47\) # (\Add0~57\ & \Add0~47COUT1_158\))))
-- \Add0~42\ = CARRY(((!\Add0~47\) # (!count(5))))
-- \Add0~42COUT1_160\ = CARRY(((!\Add0~47COUT1_158\) # (!count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	cin => \Add0~57\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_160\);

-- Location: LC_X17_Y6_N4
\count[5]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~2\ = (count(2) & (count(4) & (count[5] & count(3))))
-- count(5) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(2),
	datab => count(4),
	datac => \Add0~40_combout\,
	datad => count(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(5));

-- Location: LC_X18_Y6_N8
\Add0~20\ : cyclone_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(6) $ ((!(!\Add0~57\ & \Add0~42\) # (\Add0~57\ & \Add0~42COUT1_160\))))
-- \Add0~22\ = CARRY(((count(6) & !\Add0~42\)))
-- \Add0~22COUT1_162\ = CARRY(((count(6) & !\Add0~42COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	cin => \Add0~57\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_162\);

-- Location: LC_X17_Y5_N5
\count[6]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(9) & (!count(7) & (count[6] & !count(8))))
-- count(6) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(9),
	datab => count(7),
	datac => \Add0~20_combout\,
	datad => count(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(6));

-- Location: LC_X18_Y6_N9
\Add0~35\ : cyclone_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(7) $ (((!\Add0~57\ & \Add0~22\) # (\Add0~57\ & \Add0~22COUT1_162\))))
-- \Add0~37\ = CARRY(((!\Add0~22COUT1_162\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~57\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X17_Y6_N9
\count[7]\ : cyclone_lcell
-- Equation(s):
-- count(7) = DFFEAS(((\Add0~35_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~35_combout\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X17_Y5_N2
\count[10]\ : cyclone_lcell
-- Equation(s):
-- count(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X17_Y5_N6
\Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0\ & (\Equal0~2\ & (\Equal0~3\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0\,
	datab => \Equal0~2\,
	datac => \Equal0~3\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X18_Y4_N0
\Add0~95\ : cyclone_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(18) $ ((!\Add0~82\)))
-- \Add0~97\ = CARRY(((count(18) & !\Add0~82\)))
-- \Add0~97COUT1_180\ = CARRY(((count(18) & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_180\);

-- Location: LC_X17_Y4_N2
\count[18]\ : cyclone_lcell
-- Equation(s):
-- count(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X18_Y4_N1
\Add0~85\ : cyclone_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(19) $ (((!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_180\))))
-- \Add0~87\ = CARRY(((!\Add0~97\) # (!count(19))))
-- \Add0~87COUT1_182\ = CARRY(((!\Add0~97COUT1_180\) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_182\);

-- Location: LC_X17_Y4_N4
\count[19]\ : cyclone_lcell
-- Equation(s):
-- count(19) = DFFEAS(((\Add0~85_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7\,
	datac => \Equal0~4_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X18_Y5_N8
\Add0~90\ : cyclone_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(16) $ ((!(!\Add0~7\ & \Add0~77\) # (\Add0~7\ & \Add0~77COUT1_176\))))
-- \Add0~92\ = CARRY(((count(16) & !\Add0~77\)))
-- \Add0~92COUT1_178\ = CARRY(((count(16) & !\Add0~77COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	cin => \Add0~7\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_178\);

-- Location: LC_X17_Y4_N3
\count[16]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~5\ = (!count(18) & (count(19) & (!count[16] & count(17))))
-- count(16) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(18),
	datab => count(19),
	datac => \Add0~90_combout\,
	datad => count(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(16));

-- Location: LC_X18_Y5_N9
\Add0~80\ : cyclone_lcell
-- Equation(s):
-- \Add0~80_combout\ = count(17) $ (((((!\Add0~7\ & \Add0~92\) # (\Add0~7\ & \Add0~92COUT1_178\)))))
-- \Add0~82\ = CARRY(((!\Add0~92COUT1_178\)) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	cin => \Add0~7\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X17_Y5_N4
\count[17]\ : cyclone_lcell
-- Equation(s):
-- count(17) = DFFEAS(((\Add0~80_combout\ & ((!\Equal0~7\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~4_combout\,
	datac => \Equal0~7\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X18_Y4_N2
\Add0~100\ : cyclone_lcell
-- Equation(s):
-- \Add0~100_combout\ = count(20) $ ((((!(!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_182\)))))
-- \Add0~102\ = CARRY((count(20) & ((!\Add0~87\))))
-- \Add0~102COUT1_184\ = CARRY((count(20) & ((!\Add0~87COUT1_182\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_184\);

-- Location: LC_X17_Y4_N8
\count[20]\ : cyclone_lcell
-- Equation(s):
-- count(20) = DFFEAS(((\Add0~100_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7\,
	datac => \Add0~100_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X18_Y4_N3
\Add0~105\ : cyclone_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(21) $ (((!\Add0~82\ & \Add0~102\) # (\Add0~82\ & \Add0~102COUT1_184\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!count(21))))
-- \Add0~107COUT1_186\ = CARRY(((!\Add0~102COUT1_184\) # (!count(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	cin => \Add0~82\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_186\);

-- Location: LC_X17_Y4_N9
\count[21]\ : cyclone_lcell
-- Equation(s):
-- count(21) = DFFEAS(((\Add0~105_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7\,
	datac => \Equal0~4_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X18_Y4_N4
\Add0~110\ : cyclone_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count(22) $ ((!(!\Add0~82\ & \Add0~107\) # (\Add0~82\ & \Add0~107COUT1_186\))))
-- \Add0~112\ = CARRY(((count(22) & !\Add0~107COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	cin => \Add0~82\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X18_Y4_N8
\count[22]\ : cyclone_lcell
-- Equation(s):
-- count(22) = DFFEAS(((\Add0~110_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~7\,
	datac => \Add0~110_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X18_Y4_N5
\Add0~115\ : cyclone_lcell
-- Equation(s):
-- \Add0~115_combout\ = count(23) $ ((((\Add0~112\))))
-- \Add0~117\ = CARRY(((!\Add0~112\)) # (!count(23)))
-- \Add0~117COUT1_188\ = CARRY(((!\Add0~112\)) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_188\);

-- Location: LC_X18_Y4_N9
\count[23]\ : cyclone_lcell
-- Equation(s):
-- count(23) = DFFEAS(((\Add0~115_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~115_combout\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X17_Y4_N5
\Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (count(21) & (count(23) & (count(20) & count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(23),
	datac => count(20),
	datad => count(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X18_Y4_N6
\Add0~125\ : cyclone_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(24) $ ((!(!\Add0~112\ & \Add0~117\) # (\Add0~112\ & \Add0~117COUT1_188\))))
-- \Add0~127\ = CARRY(((count(24) & !\Add0~117\)))
-- \Add0~127COUT1_190\ = CARRY(((count(24) & !\Add0~117COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	cin => \Add0~112\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_190\);

-- Location: LC_X17_Y4_N7
\count[24]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~7\ = (count(25) & (\Equal0~6_combout\ & (!count[24] & \Equal0~5\)))
-- count(24) = DFFEAS(\Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(25),
	datab => \Equal0~6_combout\,
	datac => \Add0~125_combout\,
	datad => \Equal0~5\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => count(24));

-- Location: LC_X18_Y4_N7
\Add0~120\ : cyclone_lcell
-- Equation(s):
-- \Add0~120_combout\ = (((!\Add0~112\ & \Add0~127\) # (\Add0~112\ & \Add0~127COUT1_190\) $ (count(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(25),
	cin => \Add0~112\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\);

-- Location: LC_X17_Y4_N6
\count[25]\ : cyclone_lcell
-- Equation(s):
-- count(25) = DFFEAS(((\Add0~120_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~7\,
	datac => \Add0~120_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X17_Y4_N1
pulse : cyclone_lcell
-- Equation(s):
-- \pulse~regout\ = DFFEAS(\pulse~regout\ $ ((((\Equal0~7\ & \Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pulse~regout\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse~regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cyclone_io
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
	datain => \pulse~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);
END structure;


