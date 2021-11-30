LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CombinatorialEncoder IS
    PORT (
        m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11: in std_logic;
        x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: out std_logic
    );
END CombinatorialEncoder;

ARCHITECTURE behave OF CombinatorialEncoder IS
BEGIN
	x1 <= m1;
	x2 <= m2;
	x3 <= m3;
	x4 <= m4;
	x5 <= m5;
	x6 <= m6;
	x7 <= m7;
	x8 <= m8;
	x9 <= m9;
	x10 <= m10;
	x11 <= m11;
	x12 <= m1 xor m2 xor m3 xor m7 xor m8 xor m9 xor m11;
	x13 <= m1 xor m4 xor m5 xor m7 xor m8 xor m10 xor m11;
	x14 <= m2 xor m4 xor m6 xor m7 xor m9 xor m10 xor m11;
	x15 <= m3 xor m5 xor m6 xor m8 xor m9 xor m10 xor m11;
END behave;