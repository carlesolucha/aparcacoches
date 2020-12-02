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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/02/2020 17:30:09"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pract10 IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	entra_coche : IN std_logic;
	sale_coche : IN std_logic;
	max_coche : IN std_logic_vector(7 DOWNTO 0);
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0);
	luz_verde : OUT std_logic;
	luz_roja : OUT std_logic
	);
END pract10;

-- Design Ports Information
-- d_a[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_verde	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_roja	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entra_coche	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[7]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[6]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[5]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[4]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[3]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[2]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[1]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[0]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sale_coche	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pract10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_entra_coche : std_logic;
SIGNAL ww_sale_coche : std_logic;
SIGNAL ww_max_coche : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_luz_verde : std_logic;
SIGNAL ww_luz_roja : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \sale_coche~combout\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Esp1~feeder_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Esp1~regout\ : std_logic;
SIGNAL \i_detectorflanco2|Selector1~0_combout\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_contadorascdes|contador[0]~8_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[5]~19\ : std_logic;
SIGNAL \i_contadorascdes|contador[6]~21\ : std_logic;
SIGNAL \i_contadorascdes|contador[7]~22_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[4]~16_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[2]~12_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[1]~10_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[0]~9\ : std_logic;
SIGNAL \i_contadorascdes|contador[1]~11\ : std_logic;
SIGNAL \i_contadorascdes|contador[2]~13\ : std_logic;
SIGNAL \i_contadorascdes|contador[3]~15\ : std_logic;
SIGNAL \i_contadorascdes|contador[4]~17\ : std_logic;
SIGNAL \i_contadorascdes|contador[5]~18_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[6]~20_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[3]~14_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \max_coche~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i_2BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_entra_coche <= entra_coche;
ww_sale_coche <= sale_coche;
ww_max_coche <= max_coche;
d_a <= ww_d_a;
d_b <= ww_d_b;
luz_verde <= ww_luz_verde;
luz_roja <= ww_luz_roja;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\i_2BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i_2BinA7Seg|Mux6~0_combout\;
\i_1BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i_1BinA7Seg|Mux6~0_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[4]~I\ : cycloneii_io
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
	padio => ww_max_coche(4),
	combout => \max_coche~combout\(4));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[2]~I\ : cycloneii_io
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
	padio => ww_max_coche(2),
	combout => \max_coche~combout\(2));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[1]~I\ : cycloneii_io
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
	padio => ww_max_coche(1),
	combout => \max_coche~combout\(1));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[0]~I\ : cycloneii_io
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
	padio => ww_max_coche(0),
	combout => \max_coche~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sale_coche~I\ : cycloneii_io
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
	padio => ww_sale_coche,
	combout => \sale_coche~combout\);

-- Location: LCCOMB_X47_Y3_N2
\i_detectorflanco2|estado_act.Esp1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco2|estado_act.Esp1~feeder_combout\ = \sale_coche~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sale_coche~combout\,
	combout => \i_detectorflanco2|estado_act.Esp1~feeder_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X47_Y3_N3
\i_detectorflanco2|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco2|estado_act.Esp1~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco2|estado_act.Esp1~regout\);

-- Location: LCCOMB_X47_Y3_N16
\i_detectorflanco2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco2|Selector1~0_combout\ = (\sale_coche~combout\ & !\i_detectorflanco2|estado_act.Esp1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sale_coche~combout\,
	datad => \i_detectorflanco2|estado_act.Esp1~regout\,
	combout => \i_detectorflanco2|Selector1~0_combout\);

-- Location: LCFF_X47_Y3_N17
\i_detectorflanco2|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco2|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco2|estado_act.Pulso~regout\);

-- Location: LCCOMB_X48_Y3_N0
\i_contadorascdes|contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[0]~8_combout\ = \i_contadorascdes|contador\(0) $ (VCC)
-- \i_contadorascdes|contador[0]~9\ = CARRY(\i_contadorascdes|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_contadorascdes|contador\(0),
	datad => VCC,
	combout => \i_contadorascdes|contador[0]~8_combout\,
	cout => \i_contadorascdes|contador[0]~9\);

-- Location: LCCOMB_X48_Y3_N10
\i_contadorascdes|contador[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[5]~18_combout\ = (\i_contadorascdes|contador\(5) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[4]~17\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[4]~17\)))) # (!\i_contadorascdes|contador\(5) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[4]~17\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[4]~17\) # 
-- (GND)))))
-- \i_contadorascdes|contador[5]~19\ = CARRY((\i_contadorascdes|contador\(5) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[4]~17\)) # (!\i_contadorascdes|contador\(5) & ((!\i_contadorascdes|contador[4]~17\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[4]~17\,
	combout => \i_contadorascdes|contador[5]~18_combout\,
	cout => \i_contadorascdes|contador[5]~19\);

-- Location: LCCOMB_X48_Y3_N12
\i_contadorascdes|contador[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[6]~20_combout\ = ((\i_contadorascdes|contador\(6) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[5]~19\)))) # (GND)
-- \i_contadorascdes|contador[6]~21\ = CARRY((\i_contadorascdes|contador\(6) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[5]~19\))) # (!\i_contadorascdes|contador\(6) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(6),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[5]~19\,
	combout => \i_contadorascdes|contador[6]~20_combout\,
	cout => \i_contadorascdes|contador[6]~21\);

-- Location: LCCOMB_X48_Y3_N14
\i_contadorascdes|contador[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[7]~22_combout\ = \i_contadorascdes|contador\(7) $ (\i_contadorascdes|contador[6]~21\ $ (\i_detectorflanco2|estado_act.Pulso~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contadorascdes|contador\(7),
	datad => \i_detectorflanco2|estado_act.Pulso~regout\,
	cin => \i_contadorascdes|contador[6]~21\,
	combout => \i_contadorascdes|contador[7]~22_combout\);

-- Location: LCFF_X48_Y3_N15
\i_contadorascdes|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[7]~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(7));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[7]~I\ : cycloneii_io
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
	padio => ww_max_coche(7),
	combout => \max_coche~combout\(7));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[6]~I\ : cycloneii_io
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
	padio => ww_max_coche(6),
	combout => \max_coche~combout\(6));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[5]~I\ : cycloneii_io
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
	padio => ww_max_coche(5),
	combout => \max_coche~combout\(5));

-- Location: LCCOMB_X48_Y3_N8
\i_contadorascdes|contador[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[4]~16_combout\ = ((\i_contadorascdes|contador\(4) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[3]~15\)))) # (GND)
-- \i_contadorascdes|contador[4]~17\ = CARRY((\i_contadorascdes|contador\(4) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[3]~15\))) # (!\i_contadorascdes|contador\(4) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[3]~15\,
	combout => \i_contadorascdes|contador[4]~16_combout\,
	cout => \i_contadorascdes|contador[4]~17\);

-- Location: LCFF_X48_Y3_N9
\i_contadorascdes|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[4]~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(4));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[3]~I\ : cycloneii_io
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
	padio => ww_max_coche(3),
	combout => \max_coche~combout\(3));

-- Location: LCCOMB_X48_Y3_N4
\i_contadorascdes|contador[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[2]~12_combout\ = ((\i_contadorascdes|contador\(2) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[1]~11\)))) # (GND)
-- \i_contadorascdes|contador[2]~13\ = CARRY((\i_contadorascdes|contador\(2) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[1]~11\))) # (!\i_contadorascdes|contador\(2) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[1]~11\,
	combout => \i_contadorascdes|contador[2]~12_combout\,
	cout => \i_contadorascdes|contador[2]~13\);

-- Location: LCFF_X48_Y3_N5
\i_contadorascdes|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[2]~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(2));

-- Location: LCCOMB_X48_Y3_N2
\i_contadorascdes|contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[1]~10_combout\ = (\i_contadorascdes|contador\(1) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[0]~9\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[0]~9\)))) # (!\i_contadorascdes|contador\(1) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[0]~9\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[0]~9\) # 
-- (GND)))))
-- \i_contadorascdes|contador[1]~11\ = CARRY((\i_contadorascdes|contador\(1) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[0]~9\)) # (!\i_contadorascdes|contador\(1) & ((!\i_contadorascdes|contador[0]~9\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(1),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[0]~9\,
	combout => \i_contadorascdes|contador[1]~10_combout\,
	cout => \i_contadorascdes|contador[1]~11\);

-- Location: LCFF_X48_Y3_N3
\i_contadorascdes|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[1]~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(1));

-- Location: LCCOMB_X48_Y3_N16
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\max_coche~combout\(0) & !\i_contadorascdes|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(0),
	datab => \i_contadorascdes|contador\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y3_N18
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\max_coche~combout\(1) & (\i_contadorascdes|contador\(1) & !\LessThan0~1_cout\)) # (!\max_coche~combout\(1) & ((\i_contadorascdes|contador\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(1),
	datab => \i_contadorascdes|contador\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y3_N20
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\max_coche~combout\(2) & ((!\LessThan0~3_cout\) # (!\i_contadorascdes|contador\(2)))) # (!\max_coche~combout\(2) & (!\i_contadorascdes|contador\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(2),
	datab => \i_contadorascdes|contador\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y3_N22
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\i_contadorascdes|contador\(3) & ((!\LessThan0~5_cout\) # (!\max_coche~combout\(3)))) # (!\i_contadorascdes|contador\(3) & (!\max_coche~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(3),
	datab => \max_coche~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y3_N24
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\max_coche~combout\(4) & ((!\LessThan0~7_cout\) # (!\i_contadorascdes|contador\(4)))) # (!\max_coche~combout\(4) & (!\i_contadorascdes|contador\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(4),
	datab => \i_contadorascdes|contador\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y3_N26
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\i_contadorascdes|contador\(5) & ((!\LessThan0~9_cout\) # (!\max_coche~combout\(5)))) # (!\i_contadorascdes|contador\(5) & (!\max_coche~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \max_coche~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y3_N28
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\i_contadorascdes|contador\(6) & (\max_coche~combout\(6) & !\LessThan0~11_cout\)) # (!\i_contadorascdes|contador\(6) & ((\max_coche~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(6),
	datab => \max_coche~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y3_N30
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\i_contadorascdes|contador\(7) & (\LessThan0~13_cout\ & \max_coche~combout\(7))) # (!\i_contadorascdes|contador\(7) & ((\LessThan0~13_cout\) # (\max_coche~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contadorascdes|contador\(7),
	datad => \max_coche~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCFF_X48_Y3_N1
\i_contadorascdes|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[0]~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(0));

-- Location: LCCOMB_X48_Y3_N6
\i_contadorascdes|contador[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[3]~14_combout\ = (\i_contadorascdes|contador\(3) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[2]~13\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[2]~13\)))) # (!\i_contadorascdes|contador\(3) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[2]~13\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[2]~13\) # 
-- (GND)))))
-- \i_contadorascdes|contador[3]~15\ = CARRY((\i_contadorascdes|contador\(3) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[2]~13\)) # (!\i_contadorascdes|contador\(3) & ((!\i_contadorascdes|contador[2]~13\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(3),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[2]~13\,
	combout => \i_contadorascdes|contador[3]~14_combout\,
	cout => \i_contadorascdes|contador[3]~15\);

-- Location: LCFF_X48_Y3_N11
\i_contadorascdes|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[5]~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(5));

-- Location: LCFF_X48_Y3_N13
\i_contadorascdes|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[6]~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(6));

-- Location: LCCOMB_X44_Y3_N12
\i_1BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux6~0_combout\ = (\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(7)) # (\i_contadorascdes|contador\(5) $ (\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(5)) # 
-- (\i_contadorascdes|contador\(6) $ (\i_contadorascdes|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y3_N26
\i_1BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux5~0_combout\ = (\i_contadorascdes|contador\(5) & (!\i_contadorascdes|contador\(7) & ((\i_contadorascdes|contador\(4)) # (!\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(5) & (\i_contadorascdes|contador\(4) & 
-- (\i_contadorascdes|contador\(6) $ (!\i_contadorascdes|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y3_N16
\i_1BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux4~0_combout\ = (\i_contadorascdes|contador\(5) & (((!\i_contadorascdes|contador\(7) & \i_contadorascdes|contador\(4))))) # (!\i_contadorascdes|contador\(5) & ((\i_contadorascdes|contador\(6) & (!\i_contadorascdes|contador\(7))) # 
-- (!\i_contadorascdes|contador\(6) & ((\i_contadorascdes|contador\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y3_N10
\i_1BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux3~0_combout\ = (\i_contadorascdes|contador\(4) & (\i_contadorascdes|contador\(5) $ ((!\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(5) & (!\i_contadorascdes|contador\(6) & 
-- \i_contadorascdes|contador\(7))) # (!\i_contadorascdes|contador\(5) & (\i_contadorascdes|contador\(6) & !\i_contadorascdes|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y3_N8
\i_1BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux2~0_combout\ = (\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(7) & ((\i_contadorascdes|contador\(5)) # (!\i_contadorascdes|contador\(4))))) # (!\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(5) & 
-- (!\i_contadorascdes|contador\(7) & !\i_contadorascdes|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y3_N22
\i_1BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux1~0_combout\ = (\i_contadorascdes|contador\(5) & ((\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(7)))) # (!\i_contadorascdes|contador\(4) & (\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(5) & 
-- (\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(7) $ (\i_contadorascdes|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y3_N4
\i_1BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux0~0_combout\ = (\i_contadorascdes|contador\(6) & (!\i_contadorascdes|contador\(5) & (\i_contadorascdes|contador\(7) $ (!\i_contadorascdes|contador\(4))))) # (!\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(4) & 
-- (\i_contadorascdes|contador\(5) $ (!\i_contadorascdes|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux0~0_combout\);

-- Location: LCFF_X48_Y3_N7
\i_contadorascdes|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[3]~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(3));

-- Location: LCCOMB_X49_Y3_N16
\i_2BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux6~0_combout\ = (\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(3)) # (\i_contadorascdes|contador\(2) $ (\i_contadorascdes|contador\(1))))) # (!\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(1)) # 
-- (\i_contadorascdes|contador\(2) $ (\i_contadorascdes|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y3_N6
\i_2BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux5~0_combout\ = (\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(3) $ (((\i_contadorascdes|contador\(1)) # (!\i_contadorascdes|contador\(2)))))) # (!\i_contadorascdes|contador\(0) & (!\i_contadorascdes|contador\(2) & 
-- (!\i_contadorascdes|contador\(3) & \i_contadorascdes|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y3_N0
\i_2BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux4~0_combout\ = (\i_contadorascdes|contador\(1) & (\i_contadorascdes|contador\(0) & ((!\i_contadorascdes|contador\(3))))) # (!\i_contadorascdes|contador\(1) & ((\i_contadorascdes|contador\(2) & ((!\i_contadorascdes|contador\(3)))) # 
-- (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y3_N14
\i_2BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux3~0_combout\ = (\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(2) $ (((!\i_contadorascdes|contador\(1)))))) # (!\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(3) & 
-- !\i_contadorascdes|contador\(1))) # (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(3) & \i_contadorascdes|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y3_N12
\i_2BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux2~0_combout\ = (\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(3) & ((\i_contadorascdes|contador\(1)) # (!\i_contadorascdes|contador\(0))))) # (!\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(0) & 
-- (!\i_contadorascdes|contador\(3) & \i_contadorascdes|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y3_N10
\i_2BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux1~0_combout\ = (\i_contadorascdes|contador\(3) & ((\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(1)))) # (!\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(2))))) # (!\i_contadorascdes|contador\(3) & 
-- (\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0) $ (\i_contadorascdes|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y3_N4
\i_2BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux0~0_combout\ = (\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(1) & (\i_contadorascdes|contador\(0) $ (!\i_contadorascdes|contador\(3))))) # (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0) & 
-- (\i_contadorascdes|contador\(3) $ (!\i_contadorascdes|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(0),
	datab => \i_contadorascdes|contador\(2),
	datac => \i_contadorascdes|contador\(3),
	datad => \i_contadorascdes|contador\(1),
	combout => \i_2BinA7Seg|Mux0~0_combout\);

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[0]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[1]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[2]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[3]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[4]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[5]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[6]~I\ : cycloneii_io
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
	datain => \i_1BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[0]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[1]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[2]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[3]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[4]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[5]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[6]~I\ : cycloneii_io
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
	datain => \i_2BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_verde~I\ : cycloneii_io
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
	datain => \LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_verde);

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_roja~I\ : cycloneii_io
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
	datain => \ALT_INV_LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_roja);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entra_coche~I\ : cycloneii_io
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
	padio => ww_entra_coche);
END structure;


