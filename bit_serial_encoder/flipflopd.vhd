LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FLIPFLOPDSIMUL IS
  PORT (CLK, D: IN STD_LOGIC;
        NSET, NRST: IN STD_LOGIC;
        Q, NQ: OUT STD_LOGIC);
END FLIPFLOPDSIMUL;

ARCHITECTURE BEHAVIOR OF FLIPFLOPDSIMUL IS
BEGIN
  PROCESS (CLK, NSET, NRST)
  BEGIN
    IF (NRST = '0')
        THEN Q <= '0';
             NQ <= '1';
        ELSIF (NSET = '0')
              THEN Q <= '1';
                   NQ <= '0';
              ELSIF (CLK = '1') AND (CLK'EVENT)
                    THEN Q <= D;
                         NQ <= NOT D;
    END IF;
  END PROCESS;
END BEHAVIOR;
