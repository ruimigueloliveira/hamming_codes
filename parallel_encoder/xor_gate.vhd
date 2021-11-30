LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xor_gate IS
    PORT (
        a,b: in std_logic;
		  o: out std_logic
    );
END xor_gate;

ARCHITECTURE behavioral OF xor_gate IS
BEGIN
	o <= (not(a and b)) and (b or a);
END behavioral;