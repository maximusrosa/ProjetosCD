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

-- DATE "11/29/2023 12:16:20"

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

ENTITY 	teste_mux8x1 IS
    PORT (
	pin_name1 : OUT std_logic;
	e : IN std_logic_vector(7 DOWNTO 0);
	c : IN std_logic_vector(2 DOWNTO 0)
	);
END teste_mux8x1;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teste_mux8x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_e : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(2 DOWNTO 0);
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \e[3]~input_o\ : std_logic;
SIGNAL \e[2]~input_o\ : std_logic;
SIGNAL \e[0]~input_o\ : std_logic;
SIGNAL \e[1]~input_o\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst5|inst3~2_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst3~3_combout\ : std_logic;
SIGNAL \e[5]~input_o\ : std_logic;
SIGNAL \e[7]~input_o\ : std_logic;
SIGNAL \e[6]~input_o\ : std_logic;
SIGNAL \e[4]~input_o\ : std_logic;
SIGNAL \inst|inst|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst3~1_combout\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \inst|inst|inst5|inst3~4_combout\ : std_logic;

BEGIN

pin_name1 <= ww_pin_name1;
ww_e <= e;
ww_c <= c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y31_N2
\pin_name1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst5|inst3~4_combout\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\c[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\e[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(3),
	o => \e[3]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\e[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(2),
	o => \e[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\e[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(0),
	o => \e[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\e[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(1),
	o => \e[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\c[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: LCCOMB_X18_Y2_N12
\inst|inst|inst5|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst3~2_combout\ = (\c[1]~input_o\ & (((\c[0]~input_o\)))) # (!\c[1]~input_o\ & ((\c[0]~input_o\ & ((\e[1]~input_o\))) # (!\c[0]~input_o\ & (\e[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \e[0]~input_o\,
	datac => \e[1]~input_o\,
	datad => \c[0]~input_o\,
	combout => \inst|inst|inst5|inst3~2_combout\);

-- Location: LCCOMB_X18_Y2_N6
\inst|inst|inst5|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst3~3_combout\ = (\c[1]~input_o\ & ((\inst|inst|inst5|inst3~2_combout\ & (\e[3]~input_o\)) # (!\inst|inst|inst5|inst3~2_combout\ & ((\e[2]~input_o\))))) # (!\c[1]~input_o\ & (((\inst|inst|inst5|inst3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \e[3]~input_o\,
	datac => \e[2]~input_o\,
	datad => \inst|inst|inst5|inst3~2_combout\,
	combout => \inst|inst|inst5|inst3~3_combout\);

-- Location: IOIBUF_X12_Y0_N8
\e[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(5),
	o => \e[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\e[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(7),
	o => \e[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\e[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(6),
	o => \e[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\e[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(4),
	o => \e[4]~input_o\);

-- Location: LCCOMB_X18_Y2_N8
\inst|inst|inst5|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst3~0_combout\ = (\c[1]~input_o\ & ((\e[6]~input_o\) # ((\c[0]~input_o\)))) # (!\c[1]~input_o\ & (((\e[4]~input_o\ & !\c[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \e[6]~input_o\,
	datac => \e[4]~input_o\,
	datad => \c[0]~input_o\,
	combout => \inst|inst|inst5|inst3~0_combout\);

-- Location: LCCOMB_X18_Y2_N2
\inst|inst|inst5|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst3~1_combout\ = (\inst|inst|inst5|inst3~0_combout\ & (((\e[7]~input_o\) # (!\c[0]~input_o\)))) # (!\inst|inst|inst5|inst3~0_combout\ & (\e[5]~input_o\ & ((\c[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[5]~input_o\,
	datab => \e[7]~input_o\,
	datac => \inst|inst|inst5|inst3~0_combout\,
	datad => \c[0]~input_o\,
	combout => \inst|inst|inst5|inst3~1_combout\);

-- Location: IOIBUF_X33_Y16_N15
\c[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: LCCOMB_X18_Y2_N0
\inst|inst|inst5|inst3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst3~4_combout\ = (\c[2]~input_o\ & ((\inst|inst|inst5|inst3~1_combout\))) # (!\c[2]~input_o\ & (\inst|inst|inst5|inst3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst5|inst3~3_combout\,
	datab => \inst|inst|inst5|inst3~1_combout\,
	datad => \c[2]~input_o\,
	combout => \inst|inst|inst5|inst3~4_combout\);

ww_pin_name1 <= \pin_name1~output_o\;
END structure;


