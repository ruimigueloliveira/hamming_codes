-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/30/2021 15:47:00"

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

ENTITY 	CombinatorialEncoder IS
    PORT (
	m1 : IN std_logic;
	m2 : IN std_logic;
	m3 : IN std_logic;
	m4 : IN std_logic;
	m5 : IN std_logic;
	m6 : IN std_logic;
	m7 : IN std_logic;
	m8 : IN std_logic;
	m9 : IN std_logic;
	m10 : IN std_logic;
	m11 : IN std_logic;
	x1 : BUFFER std_logic;
	x2 : BUFFER std_logic;
	x3 : BUFFER std_logic;
	x4 : BUFFER std_logic;
	x5 : BUFFER std_logic;
	x6 : BUFFER std_logic;
	x7 : BUFFER std_logic;
	x8 : BUFFER std_logic;
	x9 : BUFFER std_logic;
	x10 : BUFFER std_logic;
	x11 : BUFFER std_logic;
	x12 : BUFFER std_logic;
	x13 : BUFFER std_logic;
	x14 : BUFFER std_logic;
	x15 : BUFFER std_logic
	);
END CombinatorialEncoder;

ARCHITECTURE structure OF CombinatorialEncoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m1 : std_logic;
SIGNAL ww_m2 : std_logic;
SIGNAL ww_m3 : std_logic;
SIGNAL ww_m4 : std_logic;
SIGNAL ww_m5 : std_logic;
SIGNAL ww_m6 : std_logic;
SIGNAL ww_m7 : std_logic;
SIGNAL ww_m8 : std_logic;
SIGNAL ww_m9 : std_logic;
SIGNAL ww_m10 : std_logic;
SIGNAL ww_m11 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x4 : std_logic;
SIGNAL ww_x5 : std_logic;
SIGNAL ww_x6 : std_logic;
SIGNAL ww_x7 : std_logic;
SIGNAL ww_x8 : std_logic;
SIGNAL ww_x9 : std_logic;
SIGNAL ww_x10 : std_logic;
SIGNAL ww_x11 : std_logic;
SIGNAL ww_x12 : std_logic;
SIGNAL ww_x13 : std_logic;
SIGNAL ww_x14 : std_logic;
SIGNAL ww_x15 : std_logic;
SIGNAL \x1~output_o\ : std_logic;
SIGNAL \x2~output_o\ : std_logic;
SIGNAL \x3~output_o\ : std_logic;
SIGNAL \x4~output_o\ : std_logic;
SIGNAL \x5~output_o\ : std_logic;
SIGNAL \x6~output_o\ : std_logic;
SIGNAL \x7~output_o\ : std_logic;
SIGNAL \x8~output_o\ : std_logic;
SIGNAL \x9~output_o\ : std_logic;
SIGNAL \x10~output_o\ : std_logic;
SIGNAL \x11~output_o\ : std_logic;
SIGNAL \x12~output_o\ : std_logic;
SIGNAL \x13~output_o\ : std_logic;
SIGNAL \x14~output_o\ : std_logic;
SIGNAL \x15~output_o\ : std_logic;
SIGNAL \m1~input_o\ : std_logic;
SIGNAL \m2~input_o\ : std_logic;
SIGNAL \m3~input_o\ : std_logic;
SIGNAL \m4~input_o\ : std_logic;
SIGNAL \m5~input_o\ : std_logic;
SIGNAL \m6~input_o\ : std_logic;
SIGNAL \m7~input_o\ : std_logic;
SIGNAL \m8~input_o\ : std_logic;
SIGNAL \m9~input_o\ : std_logic;
SIGNAL \m10~input_o\ : std_logic;
SIGNAL \m11~input_o\ : std_logic;
SIGNAL \x13~0_combout\ : std_logic;
SIGNAL \x12~0_combout\ : std_logic;
SIGNAL \x13~1_combout\ : std_logic;
SIGNAL \x14~0_combout\ : std_logic;
SIGNAL \x14~1_combout\ : std_logic;
SIGNAL \x15~0_combout\ : std_logic;

BEGIN

ww_m1 <= m1;
ww_m2 <= m2;
ww_m3 <= m3;
ww_m4 <= m4;
ww_m5 <= m5;
ww_m6 <= m6;
ww_m7 <= m7;
ww_m8 <= m8;
ww_m9 <= m9;
ww_m10 <= m10;
ww_m11 <= m11;
x1 <= ww_x1;
x2 <= ww_x2;
x3 <= ww_x3;
x4 <= ww_x4;
x5 <= ww_x5;
x6 <= ww_x6;
x7 <= ww_x7;
x8 <= ww_x8;
x9 <= ww_x9;
x10 <= ww_x10;
x11 <= ww_x11;
x12 <= ww_x12;
x13 <= ww_x13;
x14 <= ww_x14;
x15 <= ww_x15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\x1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1~input_o\,
	devoe => ww_devoe,
	o => \x1~output_o\);

\x2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2~input_o\,
	devoe => ww_devoe,
	o => \x2~output_o\);

\x3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3~input_o\,
	devoe => ww_devoe,
	o => \x3~output_o\);

\x4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m4~input_o\,
	devoe => ww_devoe,
	o => \x4~output_o\);

\x5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m5~input_o\,
	devoe => ww_devoe,
	o => \x5~output_o\);

\x6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m6~input_o\,
	devoe => ww_devoe,
	o => \x6~output_o\);

\x7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7~input_o\,
	devoe => ww_devoe,
	o => \x7~output_o\);

\x8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8~input_o\,
	devoe => ww_devoe,
	o => \x8~output_o\);

\x9~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9~input_o\,
	devoe => ww_devoe,
	o => \x9~output_o\);

\x10~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10~input_o\,
	devoe => ww_devoe,
	o => \x10~output_o\);

\x11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11~input_o\,
	devoe => ww_devoe,
	o => \x11~output_o\);

\x12~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x12~0_combout\,
	devoe => ww_devoe,
	o => \x12~output_o\);

\x13~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x13~1_combout\,
	devoe => ww_devoe,
	o => \x13~output_o\);

\x14~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x14~1_combout\,
	devoe => ww_devoe,
	o => \x14~output_o\);

\x15~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x15~0_combout\,
	devoe => ww_devoe,
	o => \x15~output_o\);

\m1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1,
	o => \m1~input_o\);

\m2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2,
	o => \m2~input_o\);

\m3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m3,
	o => \m3~input_o\);

\m4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m4,
	o => \m4~input_o\);

\m5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m5,
	o => \m5~input_o\);

\m6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m6,
	o => \m6~input_o\);

\m7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m7,
	o => \m7~input_o\);

\m8~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m8,
	o => \m8~input_o\);

\m9~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m9,
	o => \m9~input_o\);

\m10~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m10,
	o => \m10~input_o\);

\m11~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m11,
	o => \m11~input_o\);

\x13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x13~0_combout\ = \m1~input_o\ $ (\m7~input_o\ $ (\m8~input_o\ $ (\m11~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1~input_o\,
	datab => \m7~input_o\,
	datac => \m8~input_o\,
	datad => \m11~input_o\,
	combout => \x13~0_combout\);

\x12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x12~0_combout\ = \m2~input_o\ $ (\m3~input_o\ $ (\m9~input_o\ $ (\x13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2~input_o\,
	datab => \m3~input_o\,
	datac => \m9~input_o\,
	datad => \x13~0_combout\,
	combout => \x12~0_combout\);

\x13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x13~1_combout\ = \m4~input_o\ $ (\m5~input_o\ $ (\m10~input_o\ $ (\x13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4~input_o\,
	datab => \m5~input_o\,
	datac => \m10~input_o\,
	datad => \x13~0_combout\,
	combout => \x13~1_combout\);

\x14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x14~0_combout\ = \m6~input_o\ $ (\m9~input_o\ $ (\m10~input_o\ $ (\m11~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6~input_o\,
	datab => \m9~input_o\,
	datac => \m10~input_o\,
	datad => \m11~input_o\,
	combout => \x14~0_combout\);

\x14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x14~1_combout\ = \m2~input_o\ $ (\m4~input_o\ $ (\m7~input_o\ $ (\x14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2~input_o\,
	datab => \m4~input_o\,
	datac => \m7~input_o\,
	datad => \x14~0_combout\,
	combout => \x14~1_combout\);

\x15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x15~0_combout\ = \m3~input_o\ $ (\m5~input_o\ $ (\m8~input_o\ $ (\x14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3~input_o\,
	datab => \m5~input_o\,
	datac => \m8~input_o\,
	datad => \x14~0_combout\,
	combout => \x15~0_combout\);

ww_x1 <= \x1~output_o\;

ww_x2 <= \x2~output_o\;

ww_x3 <= \x3~output_o\;

ww_x4 <= \x4~output_o\;

ww_x5 <= \x5~output_o\;

ww_x6 <= \x6~output_o\;

ww_x7 <= \x7~output_o\;

ww_x8 <= \x8~output_o\;

ww_x9 <= \x9~output_o\;

ww_x10 <= \x10~output_o\;

ww_x11 <= \x11~output_o\;

ww_x12 <= \x12~output_o\;

ww_x13 <= \x13~output_o\;

ww_x14 <= \x14~output_o\;

ww_x15 <= \x15~output_o\;
END structure;


