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

-- DATE "10/25/2023 11:35:14"

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

ENTITY 	mbr_mux4x1_1b IS
    PORT (
	s : OUT std_logic;
	a : IN std_logic;
	c0 : IN std_logic;
	b : IN std_logic;
	c1 : IN std_logic;
	c : IN std_logic;
	d : IN std_logic
	);
END mbr_mux4x1_1b;

-- Design Ports Information
-- s	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_mux4x1_1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \inst2|inst3~0_combout\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \inst2|inst3~1_combout\ : std_logic;

BEGIN

s <= ww_s;
ww_a <= a;
ww_c0 <= c0;
ww_b <= b;
ww_c1 <= c1;
ww_c <= c;
ww_d <= d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\s~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3~1_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\d~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\c0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\c1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\inst2|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3~0_combout\ = (\c0~input_o\ & ((\c1~input_o\) # ((\b~input_o\)))) # (!\c0~input_o\ & (!\c1~input_o\ & ((\a~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~input_o\,
	datab => \c1~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \inst2|inst3~0_combout\);

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

-- Location: LCCOMB_X11_Y1_N2
\inst2|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3~1_combout\ = (\inst2|inst3~0_combout\ & ((\d~input_o\) # ((!\c1~input_o\)))) # (!\inst2|inst3~0_combout\ & (((\c~input_o\ & \c1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \inst2|inst3~0_combout\,
	datac => \c~input_o\,
	datad => \c1~input_o\,
	combout => \inst2|inst3~1_combout\);

ww_s <= \s~output_o\;
END structure;


