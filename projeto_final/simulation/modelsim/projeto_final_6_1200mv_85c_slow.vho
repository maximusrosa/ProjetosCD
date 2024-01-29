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

-- DATE "01/27/2024 19:28:52"

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

ENTITY 	projeto_final IS
    PORT (
	c_out : OUT std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	c_in : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END projeto_final;

-- Design Ports Information
-- c_out	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto_final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c_in : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_out~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \inst|inst1|inst5~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst5~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst5~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst3|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst|1~combout\ : std_logic;
SIGNAL \inst1|inst|1~0_combout\ : std_logic;
SIGNAL \inst2|inst|1~combout\ : std_logic;
SIGNAL \inst|inst|1~0_combout\ : std_logic;

BEGIN

c_out <= ww_c_out;
ww_A <= A;
ww_B <= B;
ww_c_in <= c_in;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y0_N9
\c_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst1|inst5~0_combout\,
	devoe => ww_devoe,
	o => \c_out~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|1~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|1~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|1~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|1~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X8_Y0_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\c_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: LCCOMB_X15_Y1_N10
\inst|inst1|inst5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~1_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\c_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \c_in~input_o\,
	combout => \inst|inst1|inst5~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\inst|inst1|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~0_combout\ = (\A[0]~input_o\ & \c_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \c_in~input_o\,
	combout => \inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X15_Y1_N12
\inst2|inst1|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst5~0_combout\ = (\B[1]~input_o\ & ((\inst|inst1|inst5~1_combout\) # ((\A[1]~input_o\) # (\inst|inst1|inst5~0_combout\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\inst|inst1|inst5~1_combout\) # (\inst|inst1|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst5~1_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|inst1|inst5~0_combout\,
	combout => \inst2|inst1|inst5~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\inst1|inst1|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst5~0_combout\ = (\A[2]~input_o\ & \inst2|inst1|inst5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \inst2|inst1|inst5~0_combout\,
	combout => \inst1|inst1|inst5~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\inst1|inst1|inst5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst5~1_combout\ = (\B[2]~input_o\ & ((\inst2|inst1|inst5~0_combout\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst5~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst1|inst1|inst5~1_combout\);

-- Location: IOIBUF_X12_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\inst3|inst1|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst5~0_combout\ = (\B[3]~input_o\ & ((\inst1|inst1|inst5~0_combout\) # ((\inst1|inst1|inst5~1_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\inst1|inst1|inst5~0_combout\) # (\inst1|inst1|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst5~0_combout\,
	datab => \inst1|inst1|inst5~1_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst1|inst5~0_combout\);

-- Location: LCCOMB_X15_Y1_N20
\inst3|inst|1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|1~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\inst1|inst1|inst5~0_combout\) # (\inst1|inst1|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst5~0_combout\,
	datab => \inst1|inst1|inst5~1_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst|1~combout\);

-- Location: LCCOMB_X15_Y1_N6
\inst1|inst|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst|1~0_combout\ = \inst2|inst1|inst5~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst5~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst1|inst|1~0_combout\);

-- Location: LCCOMB_X15_Y1_N0
\inst2|inst|1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|1~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\inst|inst1|inst5~1_combout\) # (\inst|inst1|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst5~1_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|inst1|inst5~0_combout\,
	combout => \inst2|inst|1~combout\);

-- Location: LCCOMB_X15_Y1_N26
\inst|inst|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|1~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\c_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \c_in~input_o\,
	combout => \inst|inst|1~0_combout\);

ww_c_out <= \c_out~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


