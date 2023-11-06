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

-- DATE "11/08/2023 12:00:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mbr_div_freq_1b IS
    PORT (
	Q : OUT std_logic;
	RST : IN std_logic;
	CK : IN std_logic;
	D : OUT std_logic
	);
END mbr_div_freq_1b;

-- Design Ports Information
-- Q	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_div_freq_1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

Q <= ww_Q;
ww_RST <= RST;
ww_CK <= CK;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: IOOBUF_X10_Y0_N9
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\D~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X8_Y0_N8
\CK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: LCCOMB_X8_Y1_N20
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X8_Y1_N21
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \inst~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

ww_Q <= \Q~output_o\;

ww_D <= \D~output_o\;
END structure;


