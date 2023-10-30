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

-- DATE "10/25/2023 11:15:04"

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

ENTITY 	mbr_mux2x1_1b IS
    PORT (
	s : OUT std_logic;
	c : IN std_logic;
	e1 : IN std_logic;
	e0 : IN std_logic
	);
END mbr_mux2x1_1b;

-- Design Ports Information
-- s	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_mux2x1_1b IS
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
SIGNAL ww_c : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_e0 : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \e1~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \e0~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;

BEGIN

s <= ww_s;
ww_c <= c;
ww_e1 <= e1;
ww_e0 <= e0;
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
	i => \inst3~0_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\e1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1,
	o => \e1~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\e0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0,
	o => \e0~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\c~input_o\ & (\e1~input_o\)) # (!\c~input_o\ & ((\e0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e1~input_o\,
	datac => \c~input_o\,
	datad => \e0~input_o\,
	combout => \inst3~0_combout\);

ww_s <= \s~output_o\;
END structure;


