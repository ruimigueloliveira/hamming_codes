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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/30/2021 15:46:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CombinatorialEncoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CombinatorialEncoder_vhd_vec_tst IS
END CombinatorialEncoder_vhd_vec_tst;
ARCHITECTURE CombinatorialEncoder_arch OF CombinatorialEncoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m1 : STD_LOGIC;
SIGNAL m2 : STD_LOGIC;
SIGNAL m3 : STD_LOGIC;
SIGNAL m4 : STD_LOGIC;
SIGNAL m5 : STD_LOGIC;
SIGNAL m6 : STD_LOGIC;
SIGNAL m7 : STD_LOGIC;
SIGNAL m8 : STD_LOGIC;
SIGNAL m9 : STD_LOGIC;
SIGNAL m10 : STD_LOGIC;
SIGNAL m11 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL x3 : STD_LOGIC;
SIGNAL x4 : STD_LOGIC;
SIGNAL x5 : STD_LOGIC;
SIGNAL x6 : STD_LOGIC;
SIGNAL x7 : STD_LOGIC;
SIGNAL x8 : STD_LOGIC;
SIGNAL x9 : STD_LOGIC;
SIGNAL x10 : STD_LOGIC;
SIGNAL x11 : STD_LOGIC;
SIGNAL x12 : STD_LOGIC;
SIGNAL x13 : STD_LOGIC;
SIGNAL x14 : STD_LOGIC;
SIGNAL x15 : STD_LOGIC;
COMPONENT CombinatorialEncoder
	PORT (
	m1 : IN STD_LOGIC;
	m2 : IN STD_LOGIC;
	m3 : IN STD_LOGIC;
	m4 : IN STD_LOGIC;
	m5 : IN STD_LOGIC;
	m6 : IN STD_LOGIC;
	m7 : IN STD_LOGIC;
	m8 : IN STD_LOGIC;
	m9 : IN STD_LOGIC;
	m10 : IN STD_LOGIC;
	m11 : IN STD_LOGIC;
	x1 : BUFFER STD_LOGIC;
	x2 : BUFFER STD_LOGIC;
	x3 : BUFFER STD_LOGIC;
	x4 : BUFFER STD_LOGIC;
	x5 : BUFFER STD_LOGIC;
	x6 : BUFFER STD_LOGIC;
	x7 : BUFFER STD_LOGIC;
	x8 : BUFFER STD_LOGIC;
	x9 : BUFFER STD_LOGIC;
	x10 : BUFFER STD_LOGIC;
	x11 : BUFFER STD_LOGIC;
	x12 : BUFFER STD_LOGIC;
	x13 : BUFFER STD_LOGIC;
	x14 : BUFFER STD_LOGIC;
	x15 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CombinatorialEncoder
	PORT MAP (
-- list connections between master ports and signals
	m1 => m1,
	m2 => m2,
	m3 => m3,
	m4 => m4,
	m5 => m5,
	m6 => m6,
	m7 => m7,
	m8 => m8,
	m9 => m9,
	m10 => m10,
	m11 => m11,
	x1 => x1,
	x2 => x2,
	x3 => x3,
	x4 => x4,
	x5 => x5,
	x6 => x6,
	x7 => x7,
	x8 => x8,
	x9 => x9,
	x10 => x10,
	x11 => x11,
	x12 => x12,
	x13 => x13,
	x14 => x14,
	x15 => x15
	);

-- m1
t_prcs_m1: PROCESS
BEGIN
	m1 <= '0';
	WAIT FOR 10000 ps;
	m1 <= '1';
	WAIT FOR 40000 ps;
	m1 <= '0';
WAIT;
END PROCESS t_prcs_m1;

-- m2
t_prcs_m2: PROCESS
BEGIN
	m2 <= '0';
	WAIT FOR 50000 ps;
	m2 <= '1';
	WAIT FOR 30000 ps;
	m2 <= '0';
WAIT;
END PROCESS t_prcs_m2;

-- m3
t_prcs_m3: PROCESS
BEGIN
	m3 <= '0';
	WAIT FOR 80000 ps;
	m3 <= '1';
	WAIT FOR 30000 ps;
	m3 <= '0';
WAIT;
END PROCESS t_prcs_m3;

-- m4
t_prcs_m4: PROCESS
BEGIN
	m4 <= '0';
	WAIT FOR 120000 ps;
	m4 <= '1';
	WAIT FOR 20000 ps;
	m4 <= '0';
WAIT;
END PROCESS t_prcs_m4;

-- m5
t_prcs_m5: PROCESS
BEGIN
	m5 <= '0';
	WAIT FOR 150000 ps;
	m5 <= '1';
	WAIT FOR 20000 ps;
	m5 <= '0';
WAIT;
END PROCESS t_prcs_m5;

-- m6
t_prcs_m6: PROCESS
BEGIN
	m6 <= '0';
	WAIT FOR 180000 ps;
	m6 <= '1';
	WAIT FOR 20000 ps;
	m6 <= '0';
WAIT;
END PROCESS t_prcs_m6;

-- m7
t_prcs_m7: PROCESS
BEGIN
	m7 <= '0';
	WAIT FOR 220000 ps;
	m7 <= '1';
	WAIT FOR 20000 ps;
	m7 <= '0';
WAIT;
END PROCESS t_prcs_m7;

-- m8
t_prcs_m8: PROCESS
BEGIN
	m8 <= '0';
	WAIT FOR 260000 ps;
	m8 <= '1';
	WAIT FOR 20000 ps;
	m8 <= '0';
WAIT;
END PROCESS t_prcs_m8;

-- m9
t_prcs_m9: PROCESS
BEGIN
	m9 <= '0';
	WAIT FOR 290000 ps;
	m9 <= '1';
	WAIT FOR 20000 ps;
	m9 <= '0';
WAIT;
END PROCESS t_prcs_m9;

-- m10
t_prcs_m10: PROCESS
BEGIN
	m10 <= '0';
	WAIT FOR 320000 ps;
	m10 <= '1';
	WAIT FOR 30000 ps;
	m10 <= '0';
WAIT;
END PROCESS t_prcs_m10;

-- m11
t_prcs_m11: PROCESS
BEGIN
	m11 <= '0';
	WAIT FOR 360000 ps;
	m11 <= '1';
	WAIT FOR 30000 ps;
	m11 <= '0';
WAIT;
END PROCESS t_prcs_m11;
END CombinatorialEncoder_arch;
