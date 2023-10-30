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

-- DATE "10/28/2023 02:15:00"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mbr_circ1 IS
    PORT (
	f1 : OUT std_logic;
	p4 : OUT std_logic;
	p1 : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic;
	p2 : OUT std_logic;
	d : IN std_logic;
	c : IN std_logic;
	p5 : OUT std_logic;
	p3 : OUT std_logic;
	p6 : OUT std_logic;
	f2 : OUT std_logic
	);
END mbr_circ1;

-- Design Ports Information
-- f1	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p4	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p5	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p3	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p6	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_circ1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_p4 : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_p5 : std_logic;
SIGNAL ww_p3 : std_logic;
SIGNAL ww_p6 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \p4~output_o\ : std_logic;
SIGNAL \p1~output_o\ : std_logic;
SIGNAL \p2~output_o\ : std_logic;
SIGNAL \p5~output_o\ : std_logic;
SIGNAL \p3~output_o\ : std_logic;
SIGNAL \p6~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst9|1~combout\ : std_logic;
SIGNAL \inst9|ALT_INV_1~combout\ : std_logic;
SIGNAL \ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst5~0_combout\ : std_logic;

BEGIN

f1 <= ww_f1;
p4 <= ww_p4;
p1 <= ww_p1;
ww_a <= a;
ww_b <= b;
p2 <= ww_p2;
ww_d <= d;
ww_c <= c;
p5 <= ww_p5;
p3 <= ww_p3;
p6 <= ww_p6;
f2 <= ww_f2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst9|ALT_INV_1~combout\ <= NOT \inst9|1~combout\;
\ALT_INV_inst5~0_combout\ <= NOT \inst5~0_combout\;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;
\ALT_INV_inst3~0_combout\ <= NOT \inst3~0_combout\;
\ALT_INV_inst1~combout\ <= NOT \inst1~combout\;
\inst7|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst5~0_combout\;

-- Location: IOOBUF_X24_Y0_N9
\f1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst5~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\p4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \p4~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\p1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \p1~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\p2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst3~0_combout\,
	devoe => ww_devoe,
	o => \p2~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\p5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \p5~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\p3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst2~combout\,
	devoe => ww_devoe,
	o => \p3~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\p6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst5~0_combout\,
	devoe => ww_devoe,
	o => \p6~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\f2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_1~combout\,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\d~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\inst7|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst5~0_combout\ = (\c~input_o\) # ((\d~input_o\) # ((!\a~input_o\) # (!\b~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \inst7|inst5~0_combout\);

-- Location: LCCOMB_X22_Y1_N2
inst1 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\c~input_o\ & (((!\a~input_o\) # (!\b~input_o\)))) # (!\c~input_o\ & (\d~input_o\ $ (((\b~input_o\ & \a~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X22_Y1_N4
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\a~input_o\ & \b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \inst~combout\);

-- Location: LCCOMB_X22_Y1_N22
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (!\c~input_o\ & !\d~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datad => \d~input_o\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
inst2 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\c~input_o\) # (\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datad => \a~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X22_Y1_N10
\inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (!\c~input_o\ & (!\d~input_o\ & \a~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datac => \d~input_o\,
	datad => \a~input_o\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X22_Y1_N20
\inst9|1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|1~combout\ = (\a~input_o\ & (((\b~input_o\)))) # (!\a~input_o\ & (!\c~input_o\ & (!\d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \inst9|1~combout\);

ww_f1 <= \f1~output_o\;

ww_p4 <= \p4~output_o\;

ww_p1 <= \p1~output_o\;

ww_p2 <= \p2~output_o\;

ww_p5 <= \p5~output_o\;

ww_p3 <= \p3~output_o\;

ww_p6 <= \p6~output_o\;

ww_f2 <= \f2~output_o\;
END structure;


