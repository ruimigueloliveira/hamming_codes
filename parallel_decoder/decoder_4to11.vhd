LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODER_4TO11 IS
  PORT( PARITY_BIT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  MASK : OUT STD_LOGIC_VECTOR(10 DOWNTO 0));
END DECODER_4TO11;

ARCHITECTURE BEHAVIORAL OF DECODER_4TO11 IS

BEGIN
	
	-- MASK BASED ON PARITY-CHECK MATRIX FOR [15,11]
	MASK(0) <=     PARITY_BIT(0) AND     PARITY_BIT(1) AND NOT PARITY_BIT(2) AND NOT PARITY_BIT(3);
	MASK(1) <=     PARITY_BIT(0) AND NOT PARITY_BIT(1) AND     PARITY_BIT(2) AND NOT PARITY_BIT(3);
	MASK(2) <=     PARITY_BIT(0) AND NOT PARITY_BIT(1) AND NOT PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(3) <= NOT PARITY_BIT(0) AND     PARITY_BIT(1) AND     PARITY_BIT(2) AND NOT PARITY_BIT(3);
	MASK(4) <= NOT PARITY_BIT(0) AND     PARITY_BIT(1) AND NOT PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(5) <= NOT PARITY_BIT(0) AND NOT PARITY_BIT(1) AND     PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(6) <=     PARITY_BIT(0) AND     PARITY_BIT(1) AND     PARITY_BIT(2) AND NOT PARITY_BIT(3);
	MASK(7) <=     PARITY_BIT(0) AND     PARITY_BIT(1) AND NOT PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(8) <=     PARITY_BIT(0) AND NOT PARITY_BIT(1) AND     PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(9) <= NOT PARITY_BIT(0) AND     PARITY_BIT(1) AND     PARITY_BIT(2) AND     PARITY_BIT(3);
	MASK(10) <=     PARITY_BIT(0) AND     PARITY_BIT(1) AND     PARITY_BIT(2) AND     PARITY_BIT(3);
	
END BEHAVIORAL;