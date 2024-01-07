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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/07/2024 16:33:13"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mbr_fsm IS
    PORT (
	LEDS : OUT std_logic_vector(6 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	inicio : IN std_logic;
	CK : IN std_logic;
	y : IN std_logic;
	x : IN std_logic;
	R : OUT std_logic_vector(2 DOWNTO 0)
	);
END mbr_fsm;

-- Design Ports Information
-- LEDS[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inicio : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_R : std_logic_vector(2 DOWNTO 0);
SIGNAL \CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inicio~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDS[6]~output_o\ : std_logic;
SIGNAL \LEDS[5]~output_o\ : std_logic;
SIGNAL \LEDS[4]~output_o\ : std_logic;
SIGNAL \LEDS[3]~output_o\ : std_logic;
SIGNAL \LEDS[2]~output_o\ : std_logic;
SIGNAL \LEDS[1]~output_o\ : std_logic;
SIGNAL \LEDS[0]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst~0_combout\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \inicio~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst142~0_combout\ : std_logic;
SIGNAL \inst142~q\ : std_logic;
SIGNAL \inst40~feeder_combout\ : std_logic;
SIGNAL \inst40~q\ : std_logic;
SIGNAL \inst141~feeder_combout\ : std_logic;
SIGNAL \inst141~q\ : std_logic;
SIGNAL \inst19|inst|inst4|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst19|inst23|inst4|inst5|inst3~combout\ : std_logic;
SIGNAL \inst19|inst21|inst4|inst5|inst3~combout\ : std_logic;
SIGNAL \inst19|inst16|inst4|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst19|inst13|inst4|inst5|inst3~combout\ : std_logic;
SIGNAL \inst19|inst5|inst4|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst19|inst4|inst4|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst6|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst8|inst2|inst3~combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst10|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst19|inst5|inst4|inst5|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst19|inst13|inst4|inst5|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst19|inst21|inst4|inst5|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst19|inst23|inst4|inst5|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst19|inst|inst4|inst5|ALT_INV_inst3~0_combout\ : std_logic;

BEGIN

LEDS <= ww_LEDS;
S <= ww_S;
ww_inicio <= inicio;
ww_CK <= CK;
ww_y <= y;
ww_x <= x;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK~input_o\);

\inicio~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inicio~input_o\);
\inst19|inst5|inst4|inst5|ALT_INV_inst3~0_combout\ <= NOT \inst19|inst5|inst4|inst5|inst3~0_combout\;
\inst19|inst13|inst4|inst5|ALT_INV_inst3~combout\ <= NOT \inst19|inst13|inst4|inst5|inst3~combout\;
\inst19|inst21|inst4|inst5|ALT_INV_inst3~combout\ <= NOT \inst19|inst21|inst4|inst5|inst3~combout\;
\inst19|inst23|inst4|inst5|ALT_INV_inst3~combout\ <= NOT \inst19|inst23|inst4|inst5|inst3~combout\;
\inst19|inst|inst4|inst5|ALT_INV_inst3~0_combout\ <= NOT \inst19|inst|inst4|inst5|inst3~0_combout\;

-- Location: IOOBUF_X0_Y7_N16
\LEDS[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst|inst4|inst5|ALT_INV_inst3~0_combout\,
	devoe => ww_devoe,
	o => \LEDS[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\LEDS[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst23|inst4|inst5|ALT_INV_inst3~combout\,
	devoe => ww_devoe,
	o => \LEDS[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\LEDS[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst21|inst4|inst5|ALT_INV_inst3~combout\,
	devoe => ww_devoe,
	o => \LEDS[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\LEDS[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst16|inst4|inst5|inst3~0_combout\,
	devoe => ww_devoe,
	o => \LEDS[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\LEDS[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst13|inst4|inst5|ALT_INV_inst3~combout\,
	devoe => ww_devoe,
	o => \LEDS[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\LEDS[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst5|inst4|inst5|ALT_INV_inst3~0_combout\,
	devoe => ww_devoe,
	o => \LEDS[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\LEDS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|inst4|inst4|inst5|inst3~0_combout\,
	devoe => ww_devoe,
	o => \LEDS[0]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst141~q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst142~q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40~q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: CLKCTRL_G4
\CK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: LCCOMB_X1_Y6_N4
\inst4|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst~0_combout\ = (!\inst~q\ & ((\y~input_o\ $ (!\x~input_o\)) # (!\inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \inst1~q\,
	datad => \inst~q\,
	combout => \inst4|inst2|inst~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\inicio~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: CLKCTRL_G2
\inicio~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inicio~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inicio~inputclkctrl_outclk\);

-- Location: FF_X1_Y6_N5
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst4|inst2|inst~0_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X1_Y6_N14
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\inst1~q\ & (\x~input_o\)) # (!\inst1~q\ & ((\inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \inst~q\,
	datad => \inst1~q\,
	combout => \inst~0_combout\);

-- Location: FF_X1_Y6_N15
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst~0_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y6_N0
\inst142~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst142~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	combout => \inst142~0_combout\);

-- Location: FF_X1_Y6_N1
inst142 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst142~0_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142~q\);

-- Location: LCCOMB_X1_Y6_N10
\inst40~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst40~feeder_combout\ = \inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1~q\,
	combout => \inst40~feeder_combout\);

-- Location: FF_X1_Y6_N11
inst40 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst40~feeder_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40~q\);

-- Location: LCCOMB_X1_Y6_N24
\inst141~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst141~feeder_combout\ = \inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	combout => \inst141~feeder_combout\);

-- Location: FF_X1_Y6_N25
inst141 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst141~feeder_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141~q\);

-- Location: LCCOMB_X1_Y6_N22
\inst19|inst|inst4|inst5|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst|inst4|inst5|inst3~0_combout\ = (\inst142~q\) # ((\inst40~q\) # (!\inst141~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst|inst4|inst5|inst3~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\inst19|inst23|inst4|inst5|inst3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst23|inst4|inst5|inst3~combout\ = (\inst142~q\) # ((!\inst141~q\) # (!\inst40~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst23|inst4|inst5|inst3~combout\);

-- Location: LCCOMB_X1_Y6_N26
\inst19|inst21|inst4|inst5|inst3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst21|inst4|inst5|inst3~combout\ = (\inst142~q\) # ((\inst141~q\) # (!\inst40~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst21|inst4|inst5|inst3~combout\);

-- Location: LCCOMB_X1_Y6_N12
\inst19|inst16|inst4|inst5|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst16|inst4|inst5|inst3~0_combout\ = (\inst142~q\ & (\inst40~q\ $ (!\inst141~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst16|inst4|inst5|inst3~0_combout\);

-- Location: LCCOMB_X1_Y6_N6
\inst19|inst13|inst4|inst5|inst3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst13|inst4|inst5|inst3~combout\ = ((!\inst142~q\ & \inst40~q\)) # (!\inst141~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst13|inst4|inst5|inst3~combout\);

-- Location: LCCOMB_X1_Y6_N28
\inst19|inst5|inst4|inst5|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst5|inst4|inst5|inst3~0_combout\ = (\inst40~q\ & (!\inst142~q\)) # (!\inst40~q\ & ((!\inst141~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst5|inst4|inst5|inst3~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\inst19|inst4|inst4|inst5|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|inst4|inst4|inst5|inst3~0_combout\ = (\inst40~q\ & (\inst142~q\ $ (\inst141~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142~q\,
	datab => \inst40~q\,
	datac => \inst141~q\,
	combout => \inst19|inst4|inst4|inst5|inst3~0_combout\);

-- Location: LCCOMB_X1_Y6_N20
\inst6|inst2|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst2|inst3~0_combout\ = \inst~q\ $ (((!\inst1~q\) # (!\x~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \inst~q\,
	datad => \inst1~q\,
	combout => \inst6|inst2|inst3~0_combout\);

-- Location: FF_X1_Y6_N21
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst6|inst2|inst3~0_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X1_Y6_N18
\inst8|inst2|inst3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst3~combout\ = (\x~input_o\) # ((!\inst~q\) # (!\inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \inst1~q\,
	datad => \inst~q\,
	combout => \inst8|inst2|inst3~combout\);

-- Location: FF_X1_Y6_N19
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst8|inst2|inst3~combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X1_Y6_N16
\inst10|inst2|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst3~0_combout\ = (\inst1~q\ & (\x~input_o\ $ (((\inst~q\) # (!\y~input_o\))))) # (!\inst1~q\ & (((!\inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \inst~q\,
	datad => \inst1~q\,
	combout => \inst10|inst2|inst3~0_combout\);

-- Location: FF_X1_Y6_N17
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst10|inst2|inst3~0_combout\,
	clrn => \inicio~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

ww_LEDS(6) <= \LEDS[6]~output_o\;

ww_LEDS(5) <= \LEDS[5]~output_o\;

ww_LEDS(4) <= \LEDS[4]~output_o\;

ww_LEDS(3) <= \LEDS[3]~output_o\;

ww_LEDS(2) <= \LEDS[2]~output_o\;

ww_LEDS(1) <= \LEDS[1]~output_o\;

ww_LEDS(0) <= \LEDS[0]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(0) <= \R[0]~output_o\;
END structure;


