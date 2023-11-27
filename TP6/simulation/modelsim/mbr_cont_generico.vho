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

-- DATE "11/26/2023 12:44:31"

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

ENTITY 	mbr_cont_generico IS
    PORT (
	Q : OUT std_logic;
	EAND : IN std_logic;
	QANT : IN std_logic;
	EOR : IN std_logic;
	D : IN std_logic;
	C : IN std_logic_vector(1 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	SAND : OUT std_logic;
	SOR : OUT std_logic
	);
END mbr_cont_generico;

-- Design Ports Information
-- Q	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAND	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOR	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EAND	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QANT	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOR	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_cont_generico IS
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
SIGNAL ww_EAND : std_logic;
SIGNAL ww_QANT : std_logic;
SIGNAL ww_EOR : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_SAND : std_logic;
SIGNAL ww_SOR : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \SAND~output_o\ : std_logic;
SIGNAL \SOR~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \QANT~input_o\ : std_logic;
SIGNAL \EOR~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \EAND~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst3~1_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

Q <= ww_Q;
ww_EAND <= EAND;
ww_QANT <= QANT;
ww_EOR <= EOR;
ww_D <= D;
ww_C <= C;
ww_CLK <= CLK;
ww_RST <= RST;
SAND <= ww_SAND;
SOR <= ww_SOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: IOOBUF_X33_Y15_N9
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

-- Location: IOOBUF_X33_Y11_N2
\SAND~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \SAND~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\SOR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \SOR~output_o\);

-- Location: IOIBUF_X33_Y10_N1
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\QANT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_QANT,
	o => \QANT~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\EOR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EOR,
	o => \EOR~input_o\);

-- Location: LCCOMB_X32_Y10_N4
inst5 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~combout\ = \inst|inst~q\ $ (((\QANT~input_o\) # (\EOR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QANT~input_o\,
	datac => \EOR~input_o\,
	datad => \inst|inst~q\,
	combout => \inst5~combout\);

-- Location: IOIBUF_X33_Y14_N1
\C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\EAND~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EAND,
	o => \EAND~input_o\);

-- Location: LCCOMB_X32_Y11_N20
inst3 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\QANT~input_o\ & \EAND~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \QANT~input_o\,
	datad => \EAND~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X32_Y10_N18
\inst1|inst5|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst3~0_combout\ = (\C[1]~input_o\ & (\C[0]~input_o\)) # (!\C[1]~input_o\ & (\inst|inst~q\ $ (((\C[0]~input_o\ & \inst3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \inst3~combout\,
	datac => \C[1]~input_o\,
	datad => \inst|inst~q\,
	combout => \inst1|inst5|inst3~0_combout\);

-- Location: LCCOMB_X32_Y10_N20
\inst1|inst5|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst3~1_combout\ = (\C[1]~input_o\ & ((\inst1|inst5|inst3~0_combout\ & (\D~input_o\)) # (!\inst1|inst5|inst3~0_combout\ & ((!\inst5~combout\))))) # (!\C[1]~input_o\ & (((\inst1|inst5|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \D~input_o\,
	datac => \inst5~combout\,
	datad => \inst1|inst5|inst3~0_combout\,
	combout => \inst1|inst5|inst3~1_combout\);

-- Location: IOIBUF_X33_Y14_N8
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X32_Y10_N21
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst5|inst3~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X32_Y10_N22
inst4 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\EOR~input_o\) # (\QANT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EOR~input_o\,
	datad => \QANT~input_o\,
	combout => \inst4~combout\);

ww_Q <= \Q~output_o\;

ww_SAND <= \SAND~output_o\;

ww_SOR <= \SOR~output_o\;
END structure;


