LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SEQ_ENCODER IS
	PORT(MSG: IN STD_LOGIC;
		  CLK: IN STD_LOGIC;
		  NRST: IN STD_LOGIC;
		  ENC_MSG: OUT STD_LOGIC);
END SEQ_ENCODER;

ARCHITECTURE STRUCTURAL OF SEQ_ENCODER IS

--SAIDA DOS XORS
SIGNAL S_XOR0 : STD_LOGIC;
SIGNAL S_XOR1 : STD_LOGIC;
SIGNAL S_XOR2 : STD_LOGIC;
SIGNAL S_XOR3 : STD_LOGIC;

--SAIDA DOS REGISTOS
SIGNAL S_REG0 : STD_LOGIC;
SIGNAL S_REG1 : STD_LOGIC;
SIGNAL S_REG2 : STD_LOGIC;
SIGNAL S_REG3 : STD_LOGIC;

--SAIDA DOS ANDS
SIGNAL S_AND0 : STD_LOGIC;
SIGNAL S_AND1 : STD_LOGIC;
SIGNAL S_AND2 : STD_LOGIC;
SIGNAL S_AND3 : STD_LOGIC;

--SAIDA DO 4MUX1
SIGNAL S_MUX4 : STD_LOGIC;

--SAIDA DO 2MUX1
SIGNAL S_MUX2 : STD_LOGIC;

--SINAL CONTROLO DOS ANDS
SIGNAL S_ENP0 : STD_LOGIC;
SIGNAL S_ENP1 : STD_LOGIC;
SIGNAL S_ENP2 : STD_LOGIC;
SIGNAL S_ENP3 : STD_LOGIC;

--SINAL CONTROLO DO 4MUX1
SIGNAL S_CMUX4 : STD_LOGIC_VECTOR(1 DOWNTO 0);

--SINAL CONTROLO DO 2MUX1
SIGNAL S_CMUX2 : STD_LOGIC;

--SAIDA DO CNT4BIT
SIGNAL S_ADDR : STD_LOGIC_VECTOR(3 DOWNTO 0);

--SAIDA DA RAM
SIGNAL S_CTRLB : STD_LOGIC_VECTOR(6 DOWNTO 0); 

BEGIN

	REG0: WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_XOR0, '1', NRST, S_REG0, OPEN);
	REG1: WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_XOR1, '1', NRST, S_REG1, OPEN);
	REG2: WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_XOR2, '1', NRST, S_REG2, OPEN);
	REG3: WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_XOR3, '1', NRST, S_REG3, OPEN);
	
	S_AND0 <= MSG AND S_ENP0;
	S_AND1 <= MSG AND S_ENP1;
	S_AND2 <= MSG AND S_ENP2;
	S_AND3 <= MSG AND S_ENP3;

	S_XOR0 <= S_AND0 XOR S_REG0;
	S_XOR1 <= S_AND1 XOR S_REG1;
	S_XOR2 <= S_AND2 XOR S_REG2;
	S_XOR3 <= S_AND3 XOR S_REG3;
	
	MUX4TO1: WORK.MULT4TO1 PORT MAP (S_XOR0,S_XOR1,S_XOR2,S_XOR3,S_CMUX4,S_MUX4);
	
	MUX2TO1: WORK.MULT2TO1 PORT MAP (MSG,S_MUX4,S_CMUX2,ENC_MSG);
	
	CNT0: WORK.COUNTER4BIT PORT MAP (CLK,NRST,S_ADDR,OPEN);
	
	ROM0: WORK.CONTROL_UNIT PORT MAP (S_ADDR,S_CTRLB);
	
	S_ENP0 <= S_CTRLB(6);
	S_ENP1 <= S_CTRLB(5);
	S_ENP2 <= S_CTRLB(4);
	S_ENP3 <= S_CTRLB(3);
	S_CMUX2 <= S_CTRLB(2);
	S_CMUX4 <= S_CTRLB(1)&S_CTRLB(0);
	
END STRUCTURAL;
