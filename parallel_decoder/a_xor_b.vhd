LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY a_xor_b IS
    PORT (
        a,b: in std_logic;
		  o: out std_logic
    );
END a_xor_b;

ARCHITECTURE behavioral OF a_xor_b IS
BEGIN
	o <= a xor b;
END behavioral;