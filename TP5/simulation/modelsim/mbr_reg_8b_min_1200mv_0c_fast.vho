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

-- DATE "11/19/2023 21:48:30"

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

ENTITY 	mbr_reg_8b IS
    PORT (
	Q : OUT std_logic_vector(0 TO 7);
	D : IN std_logic_vector(0 TO 7);
	EN : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic
	);
END mbr_reg_8b;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_reg_8b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic_vector(0 TO 7);
SIGNAL ww_D : std_logic_vector(0 TO 7);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \inst|inst|inst~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst|inst~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \inst6|inst|inst~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \inst7|inst|inst~q\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst8|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst~q\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \inst9|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst9|inst|inst~q\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \inst10|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst~q\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \inst11|inst|inst~q\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

Q <= ww_Q;
ww_D <= D;
ww_EN <= EN;
ww_CLK <= CLK;
ww_RST <= RST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOOBUF_X26_Y0_N9
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N8
\D[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X27_Y1_N8
\inst|inst|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst~feeder_combout\ = \D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[0]~input_o\,
	combout => \inst|inst|inst~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X27_Y1_N9
\inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst~q\);

-- Location: IOIBUF_X24_Y0_N1
\D[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X27_Y1_N26
\inst5|inst|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst~feeder_combout\ = \D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \inst5|inst|inst~feeder_combout\);

-- Location: FF_X27_Y1_N27
\inst5|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst~q\);

-- Location: IOIBUF_X24_Y0_N8
\D[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: FF_X27_Y1_N29
\inst6|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst~q\);

-- Location: IOIBUF_X33_Y22_N1
\D[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: FF_X27_Y1_N31
\inst7|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D[3]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|inst~q\);

-- Location: IOIBUF_X20_Y0_N1
\D[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X27_Y1_N16
\inst8|inst|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst|inst~feeder_combout\ = \D[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[4]~input_o\,
	combout => \inst8|inst|inst~feeder_combout\);

-- Location: FF_X27_Y1_N17
\inst8|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst~q\);

-- Location: IOIBUF_X26_Y0_N1
\D[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X27_Y1_N10
\inst9|inst|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst|inst~feeder_combout\ = \D[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[5]~input_o\,
	combout => \inst9|inst|inst~feeder_combout\);

-- Location: FF_X27_Y1_N11
\inst9|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst|inst~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst|inst~q\);

-- Location: IOIBUF_X33_Y15_N8
\D[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X27_Y1_N12
\inst10|inst|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst|inst~feeder_combout\ = \D[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[6]~input_o\,
	combout => \inst10|inst|inst~feeder_combout\);

-- Location: FF_X27_Y1_N13
\inst10|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst|inst~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst~q\);

-- Location: IOIBUF_X33_Y14_N8
\D[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: FF_X27_Y1_N23
\inst11|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst~q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;
END structure;


