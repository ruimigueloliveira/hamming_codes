LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HALFADDER1BIT IS
  PORT (A,B : IN STD_LOGIC;
        S,COUT: OUT STD_LOGIC);
END HALFADDER1BIT;

ARCHITECTURE LOGICFUNCTION OF HALFADDER1BIT IS
BEGIN
	S <= A XOR B;
	COUT <= A AND B;
END LOGICFUNCTION;

-----------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY INC4BIT IS
  PORT (A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  OVERFLOW : OUT STD_LOGIC);
END INC4BIT;

ARCHITECTURE LOGICFUNCTION OF INC4BIT IS
SIGNAL S_COUT0 : STD_LOGIC;
SIGNAL S_COUT1 : STD_LOGIC;
SIGNAL S_COUT2 : STD_LOGIC;
BEGIN
	HA0: WORK.HALFADDER1BIT PORT MAP (A(0), '1', S(0), S_COUT0);
	HA1: WORK.HALFADDER1BIT PORT MAP (A(1), S_COUT0, S(1), S_COUT1);
	HA2: WORK.HALFADDER1BIT PORT MAP (A(2), S_COUT1, S(2), S_COUT2);
	HA3: WORK.HALFADDER1BIT PORT MAP (A(3), S_COUT2, S(3), OVERFLOW);
END LOGICFUNCTION;

-----------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY COUNTER4BIT IS
  PORT( CLK : IN STD_LOGIC;
		  NRST : IN STD_LOGIC;
		  CNT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  OVERFLOW : OUT STD_LOGIC);
END COUNTER4BIT;

ARCHITECTURE STRUCTURAL OF COUNTER4BIT IS
SIGNAL S_REG : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S_CNT : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	REG0 : WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_CNT(0), '1', NRST, S_REG(0), OPEN);
	REG1 : WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_CNT(1), '1', NRST, S_REG(1), OPEN);
	REG2 : WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_CNT(2), '1', NRST, S_REG(2), OPEN);
	REG3 : WORK.FLIPFLOPDSIMUL PORT MAP (CLK, S_CNT(3), '1', NRST, S_REG(3), OPEN);
	INC : WORK.INC4BIT PORT MAP (S_REG, S_CNT, OVERFLOW);
	CNT <= S_REG;
END STRUCTURAL;