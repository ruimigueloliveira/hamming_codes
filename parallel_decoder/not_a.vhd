LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY not_a IS
  PORT (a: IN STD_LOGIC;
        Na: OUT STD_LOGIC);
END not_a;

ARCHITECTURE structural OF not_a IS
BEGIN
	Na<=NOT a;
end structural;