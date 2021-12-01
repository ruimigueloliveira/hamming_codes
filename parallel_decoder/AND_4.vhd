LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND_4 IS
  PORT (A,B,C,D: IN STD_LOGIC;
        O: OUT STD_LOGIC);
END AND_4;

ARCHITECTURE structural OF AND_4 IS
BEGIN
	o <= A AND B AND C AND D ;
end structural;