LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY a_and_b IS
  PORT (a,b: IN STD_LOGIC;
        aAb: OUT STD_LOGIC);
END a_and_b;

ARCHITECTURE structural OF a_and_b IS
BEGIN
	aAb<=a AND b;
end structural;