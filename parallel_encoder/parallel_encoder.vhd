LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY parallel_encoder IS
    PORT (
        m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11: in std_logic;
        x01, x02, x03, x04, x05, x06, x07, x08, x09, x10, x11, x12, x13, x14, x15: out std_logic
    );
END parallel_encoder;

ARCHITECTURE behavioral OF parallel_encoder IS

COMPONENT xor_gate
    PORT (
        a,b: in std_logic;
		  o: out std_logic
    );
END COMPONENT;


-- level one
signal xor_m01_m07, xor_m08_m11, xor_m02_m03, xor_m04_m05, xor_m06_m09, xor_m10_m11, xor_m02_m04, xor_m03_m05: std_logic;

-- level two
signal xor_m01_m07_m08_m11, xor_m02_m03_m09, xor_m04_m05_m10, xor_m06_m09_m10_m11, xor_m02_m04_m07, xor_m03_m05_m08: std_logic;


BEGIN
	
	-- level one
	xor01: xor_gate PORT MAP (m01, m07, xor_m01_m07);
	xor02: xor_gate PORT MAP (m08, m11, xor_m08_m11);
	xor03: xor_gate PORT MAP (m02, m03, xor_m02_m03);
	xor04: xor_gate PORT MAP (m04, m05, xor_m04_m05);
	xor05: xor_gate PORT MAP (m06, m09, xor_m06_m09);
	xor06: xor_gate PORT MAP (m10, m11, xor_m10_m11);
	xor07: xor_gate PORT MAP (m02, m04, xor_m02_m04);
	xor08: xor_gate PORT MAP (m03, m05, xor_m03_m05);
	
	-- level two
	xor09: xor_gate PORT MAP (xor_m01_m07, xor_m08_m11, xor_m01_m07_m08_m11);
	xor10: xor_gate PORT MAP (xor_m02_m03, m09, xor_m02_m03_m09);
	xor11: xor_gate PORT MAP (xor_m04_m05, m10, xor_m04_m05_m10);
	xor12: xor_gate PORT MAP (xor_m06_m09, xor_m10_m11, xor_m06_m09_m10_m11);
	xor13: xor_gate PORT MAP (xor_m02_m04, m07, xor_m02_m04_m07);
	xor14: xor_gate PORT MAP (xor_m03_m05, m08, xor_m03_m05_m08);
	
	-- level three
	xor15: xor_gate PORT MAP (xor_m01_m07_m08_m11, xor_m02_m03_m09, x12);
	xor16: xor_gate PORT MAP (xor_m01_m07_m08_m11, xor_m04_m05_m10, x13);
	xor17: xor_gate PORT MAP (xor_m06_m09_m10_m11, xor_m02_m04_m07, x14);
	xor18: xor_gate PORT MAP (xor_m06_m09_m10_m11, xor_m03_m05_m08, x15);
	
	x01 <= m01;
	x02 <= m02;
	x03 <= m03;
	x04 <= m04;
	x05 <= m05;
	x06 <= m06;
	x07 <= m07;
	x08 <= m08;
	x09 <= m09;
	x10 <= m10;
	x11 <= m11;
	
END behavioral;