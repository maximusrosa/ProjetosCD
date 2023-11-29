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

-- DATE "11/27/2023 21:17:00"

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

ENTITY 	mbr_cont_n_bits IS
    PORT (
	b : OUT std_logic_vector(3 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	C : IN std_logic_vector(1 DOWNTO 0)
	);
END mbr_cont_n_bits;

-- Design Ports Information
-- b[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mbr_cont_n_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_C : std_logic_vector(1 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b[3]~output_o\ : std_logic;
SIGNAL \b[2]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|inst~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \inst6|inst1|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst5|inst3~1_combout\ : std_logic;
SIGNAL \inst10|inst|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst|inst~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \inst7|inst1|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst5|inst3~1_combout\ : std_logic;
SIGNAL \inst7|inst|inst~q\ : std_logic;
SIGNAL \inst10|inst1|inst5|inst3~0_combout\ : std_logic;
SIGNAL \inst10|inst1|inst5|inst3~1_combout\ : std_logic;
SIGNAL \inst10|inst1|inst5|inst3~2_combout\ : std_logic;
SIGNAL \inst10|inst|inst~q\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

b <= ww_b;
ww_D <= D;
ww_CLK <= CLK;
ww_RST <= RST;
ww_C <= C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOOBUF_X22_Y0_N2
\b[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst|inst~q\,
	devoe => ww_devoe,
	o => \b[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\b[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst|inst~q\,
	devoe => ww_devoe,
	o => \b[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\b[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst~q\,
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\b[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~q\,
	devoe => ww_devoe,
	o => \b[0]~output_o\);

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

-- Location: IOIBUF_X12_Y0_N8
\C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\D[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X20_Y1_N26
\inst|inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst~0_combout\ = (\C[1]~input_o\ & ((\C[0]~input_o\ & (\D[0]~input_o\)) # (!\C[0]~input_o\ & ((\inst|inst|inst~q\))))) # (!\C[1]~input_o\ & (((\inst|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \D[0]~input_o\,
	datac => \inst|inst|inst~q\,
	datad => \C[0]~input_o\,
	combout => \inst|inst|inst~0_combout\);

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

-- Location: FF_X20_Y1_N27
\inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst~q\);

-- Location: IOIBUF_X20_Y0_N1
\D[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X20_Y1_N24
\inst6|inst1|inst5|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst5|inst3~0_combout\ = (\C[1]~input_o\ & (!\C[0]~input_o\ & (\inst|inst|inst~q\ $ (!\inst6|inst|inst~q\)))) # (!\C[1]~input_o\ & ((\inst|inst|inst~q\ $ (\inst6|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \inst|inst|inst~q\,
	datad => \inst6|inst|inst~q\,
	combout => \inst6|inst1|inst5|inst3~0_combout\);

-- Location: LCCOMB_X20_Y1_N8
\inst6|inst1|inst5|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst5|inst3~1_combout\ = (\inst6|inst1|inst5|inst3~0_combout\) # ((\D[1]~input_o\ & (\C[0]~input_o\ & \C[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \C[1]~input_o\,
	datad => \inst6|inst1|inst5|inst3~0_combout\,
	combout => \inst6|inst1|inst5|inst3~1_combout\);

-- Location: LCCOMB_X20_Y1_N4
\inst10|inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst|inst~0_combout\ = (\C[1]~input_o\) # (\C[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst10|inst|inst~0_combout\);

-- Location: FF_X20_Y1_N9
\inst6|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst1|inst5|inst3~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \inst10|inst|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst~q\);

-- Location: IOIBUF_X24_Y0_N1
\D[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X20_Y1_N18
\inst7|inst1|inst5|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst5|inst3~0_combout\ = \inst7|inst|inst~q\ $ (((\C[1]~input_o\ & (!\inst|inst|inst~q\ & !\inst6|inst|inst~q\)) # (!\C[1]~input_o\ & (\inst|inst|inst~q\ & \inst6|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst~q\,
	datab => \C[1]~input_o\,
	datac => \inst|inst|inst~q\,
	datad => \inst6|inst|inst~q\,
	combout => \inst7|inst1|inst5|inst3~0_combout\);

-- Location: LCCOMB_X20_Y1_N6
\inst7|inst1|inst5|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst5|inst3~1_combout\ = (\C[0]~input_o\ & ((\C[1]~input_o\ & (\D[2]~input_o\)) # (!\C[1]~input_o\ & ((\inst7|inst1|inst5|inst3~0_combout\))))) # (!\C[0]~input_o\ & (((\inst7|inst1|inst5|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \C[0]~input_o\,
	datac => \C[1]~input_o\,
	datad => \inst7|inst1|inst5|inst3~0_combout\,
	combout => \inst7|inst1|inst5|inst3~1_combout\);

-- Location: FF_X20_Y1_N7
\inst7|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|inst5|inst3~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \inst10|inst|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|inst~q\);

-- Location: LCCOMB_X20_Y1_N20
\inst10|inst1|inst5|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst1|inst5|inst3~0_combout\ = (\C[1]~input_o\ & ((\inst6|inst|inst~q\) # (\inst7|inst|inst~q\))) # (!\C[1]~input_o\ & (\inst6|inst|inst~q\ & \inst7|inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datac => \inst6|inst|inst~q\,
	datad => \inst7|inst|inst~q\,
	combout => \inst10|inst1|inst5|inst3~0_combout\);

-- Location: LCCOMB_X20_Y1_N10
\inst10|inst1|inst5|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst1|inst5|inst3~1_combout\ = \inst10|inst|inst~q\ $ (((\C[1]~input_o\ & ((\inst|inst|inst~q\) # (\inst10|inst1|inst5|inst3~0_combout\))) # (!\C[1]~input_o\ & (\inst|inst|inst~q\ & \inst10|inst1|inst5|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \inst10|inst|inst~q\,
	datac => \inst|inst|inst~q\,
	datad => \inst10|inst1|inst5|inst3~0_combout\,
	combout => \inst10|inst1|inst5|inst3~1_combout\);

-- Location: LCCOMB_X20_Y1_N28
\inst10|inst1|inst5|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst1|inst5|inst3~2_combout\ = (\C[1]~input_o\ & ((\C[0]~input_o\ & (\D[3]~input_o\)) # (!\C[0]~input_o\ & ((!\inst10|inst1|inst5|inst3~1_combout\))))) # (!\C[1]~input_o\ & (((\inst10|inst1|inst5|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \D[3]~input_o\,
	datad => \inst10|inst1|inst5|inst3~1_combout\,
	combout => \inst10|inst1|inst5|inst3~2_combout\);

-- Location: FF_X20_Y1_N29
\inst10|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst1|inst5|inst3~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \inst10|inst|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst~q\);

ww_b(3) <= \b[3]~output_o\;

ww_b(2) <= \b[2]~output_o\;

ww_b(1) <= \b[1]~output_o\;

ww_b(0) <= \b[0]~output_o\;
END structure;


