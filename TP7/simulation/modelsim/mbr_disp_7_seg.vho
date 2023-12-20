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

-- DATE "12/13/2023 10:50:26"

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

ENTITY 	mbr_disp_7_seg IS
    PORT (
	s6 : OUT std_logic;
	e : IN std_logic_vector(3 DOWNTO 0)
	);
END mbr_disp_7_seg;

-- Design Ports Information
-- s6	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_disp_7_seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_e : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \e[2]~input_o\ : std_logic;
SIGNAL \e[0]~input_o\ : std_logic;
SIGNAL \e[3]~input_o\ : std_logic;
SIGNAL \e[1]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst3~0_combout\ : std_logic;

BEGIN

s6 <= ww_s6;
ww_e <= e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N2
\s6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst3~0_combout\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\e[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(2),
	o => \e[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\e[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(0),
	o => \e[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\e[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(3),
	o => \e[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\e[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(1),
	o => \e[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N16
\inst|inst2|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3~0_combout\ = (\e[0]~input_o\ & ((\e[3]~input_o\) # (\e[2]~input_o\ $ (\e[1]~input_o\)))) # (!\e[0]~input_o\ & ((\e[1]~input_o\) # (\e[2]~input_o\ $ (\e[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[2]~input_o\,
	datab => \e[0]~input_o\,
	datac => \e[3]~input_o\,
	datad => \e[1]~input_o\,
	combout => \inst|inst2|inst3~0_combout\);

ww_s6 <= \s6~output_o\;
END structure;


