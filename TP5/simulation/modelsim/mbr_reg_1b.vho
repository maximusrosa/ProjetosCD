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

-- DATE "11/19/2023 14:49:48"

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

ENTITY 	mbr_reg_1b IS
    PORT (
	Q : OUT std_logic;
	EN : IN std_logic;
	D : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic
	);
END mbr_reg_1b;

-- Design Ports Information
-- Q	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_reg_1b IS
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
SIGNAL ww_EN : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

Q <= ww_Q;
ww_EN <= EN;
ww_D <= D;
ww_CLK <= CLK;
ww_RST <= RST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: IOOBUF_X8_Y0_N9
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\EN~input_o\ & ((\D~input_o\))) # (!\EN~input_o\ & (\inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \inst|inst~q\,
	datad => \D~input_o\,
	combout => \inst|inst~0_combout\);

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

-- Location: FF_X9_Y1_N25
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|inst~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

ww_Q <= \Q~output_o\;
END structure;


