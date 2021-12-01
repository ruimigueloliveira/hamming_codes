LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY parallel_decoder IS
  PORT( co_msg : IN STD_LOGIC_VECTOR(14 downto 0);
		  deco_msg: OUT STD_LOGIC_VECTOR(10 downto 0));
END parallel_decoder;

ARCHITECTURE structural OF parallel_decoder IS

SIGNAL s_pcheck : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL s_mask : STD_LOGIC_VECTOR(10 downto 0);

BEGIN

	hmt: work.HxMt PORT MAP(co_msg, s_pcheck);
	dec: work.custdecod4to11 PORT MAP (s_pcheck, s_mask);
	
	xor0: work.a_xor_b PORT MAP(co_msg(0 ),s_mask(0 ),deco_msg(0 ));
	xor1: work.a_xor_b PORT MAP(co_msg(1 ),s_mask(1 ),deco_msg(1 ));
	xor2: work.a_xor_b PORT MAP(co_msg(2 ),s_mask(2 ),deco_msg(2 ));
	xor3: work.a_xor_b PORT MAP(co_msg(3 ),s_mask(3 ),deco_msg(3 ));
	xor4: work.a_xor_b PORT MAP(co_msg(4 ),s_mask(4 ),deco_msg(4 ));
	xor5: work.a_xor_b PORT MAP(co_msg(5 ),s_mask(5 ),deco_msg(5 ));
	xor6: work.a_xor_b PORT MAP(co_msg(6 ),s_mask(6 ),deco_msg(6 ));
	xor7: work.a_xor_b PORT MAP(co_msg(7 ),s_mask(7 ),deco_msg(7 ));
	xor8: work.a_xor_b PORT MAP(co_msg(8 ),s_mask(8 ),deco_msg(8 ));
	xor9: work.a_xor_b PORT MAP(co_msg(9 ),s_mask(9 ),deco_msg(9 ));
	xor10:work.a_xor_b PORT MAP(co_msg(10),s_mask(10),deco_msg(10));
	
END structural;