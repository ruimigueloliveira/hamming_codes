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
	REG0 : WORK.FLIPFLOPD PORT MAP (CLK, S_CNT(0), '1', NRST, S_REG(0), OPEN);
	REG1 : WORK.FLIPFLOPD PORT MAP (CLK, S_CNT(1), '1', NRST, S_REG(1), OPEN);
	REG2 : WORK.FLIPFLOPD PORT MAP (CLK, S_CNT(2), '1', NRST, S_REG(2), OPEN);
	REG3 : WORK.FLIPFLOPD PORT MAP (CLK, S_CNT(3), '1', NRST, S_REG(3), OPEN);
	INC : WORK.INC4BIT PORT MAP (S_REG, S_CNT, OVERFLOW);
	CNT <= S_REG;
END STRUCTURAL;