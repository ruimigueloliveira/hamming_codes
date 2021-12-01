LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY custdecod4to11 IS
  PORT( co : IN STD_LOGIC_VECTOR(3 downto 0);
		  deco: OUT STD_LOGIC_VECTOR(10 downto 0));
END custdecod4to11;

ARCHITECTURE logicFunction OF custdecod4to11 IS

BEGIN
	deco(0) <=     co(0) and     co(1) and not co(2) and not co(3);
	deco(1) <=     co(0) and not co(1) and     co(2) and not co(3);
	deco(2) <=     co(0) and not co(1) and not co(2) and     co(3);
	deco(3) <= not co(0) and     co(1) and     co(2) and not co(3);
	deco(4) <= not co(0) and     co(1) and not co(2) and     co(3);
	deco(5) <= not co(0) and not co(1) and     co(2) and     co(3);
	deco(6) <=     co(0) and     co(1) and     co(2) and not co(3);
	deco(7) <=     co(0) and     co(1) and not co(2) and     co(3);
	deco(8) <=     co(0) and not co(1) and     co(2) and     co(3);
	deco(9) <= not co(0) and     co(1) and     co(2) and     co(3);
	deco(10)<=     co(0) and     co(1) and     co(2) and     co(3);
	
END logicFunction;