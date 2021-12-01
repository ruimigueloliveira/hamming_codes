LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HxMt IS
  PORT( co_msg : IN STD_LOGIC_VECTOR(14 downto 0);
		  pcheck : OUT STD_LOGIC_VECTOR(3 downto 0)
		 );
END HxMt;

ARCHITECTURE structural OF HxMt IS

SIGNAL s1,s2,s3,s4,s5,s6: STD_LOGIC; --For parity bit 0
SIGNAL s7,s8,s9,s10,s11,s12: STD_LOGIC; --For parity bit 1
SIGNAL s13,s14,s15,s16,s17,s18: STD_LOGIC; --For parity bit 2
SIGNAL s19,s20,s21,s22,s23,s24: STD_LOGIC; --For parity bit 3

BEGIN
	
	xor01: work.a_xor_b PORT MAP(co_msg(1-1),co_msg(2-1),s1);
	xor02: work.a_xor_b PORT MAP(co_msg(3-1),co_msg(7-1),s2);
	xor03: work.a_xor_b PORT MAP(co_msg(8-1),co_msg(9-1),s3);
	xor04: work.a_xor_b PORT MAP(co_msg(11-1),co_msg(12-1),s4);
	xor05: work.a_xor_b PORT MAP(s1,s2,s5);
	xor06: work.a_xor_b PORT MAP(s3,s4,s6);
	xor07: work.a_xor_b PORT MAP(s5,s6,pcheck(0));
	
	xor08: work.a_xor_b PORT MAP(co_msg(1-1),co_msg(4-1),s7);
	xor09: work.a_xor_b PORT MAP(co_msg(5-1),co_msg(7-1),s8);
	xor10: work.a_xor_b PORT MAP(co_msg(8-1),co_msg(10-1),s9);
	xor11: work.a_xor_b PORT MAP(co_msg(11-1),co_msg(13-1),s10);
	xor12: work.a_xor_b PORT MAP(s7,s8,s11);
	xor13: work.a_xor_b PORT MAP(s9,s10,s12);
	xor14: work.a_xor_b PORT MAP(s11,s12,pcheck(1));
	
	xor15: work.a_xor_b PORT MAP(co_msg(2-1),co_msg(4-1),s13);
	xor16: work.a_xor_b PORT MAP(co_msg(6-1),co_msg(7-1),s14);
	xor17: work.a_xor_b PORT MAP(co_msg(9-1),co_msg(10-1),s15);
	xor18: work.a_xor_b PORT MAP(co_msg(11-1),co_msg(14-1),s16);
	xor19: work.a_xor_b PORT MAP(s13,s14,s17);
	xor20: work.a_xor_b PORT MAP(s15,s16,s18);
	xor21: work.a_xor_b PORT MAP(s17,s18,pcheck(2));
	
	xor22: work.a_xor_b PORT MAP(co_msg(3-1),co_msg(5-1),s19);
	xor23: work.a_xor_b PORT MAP(co_msg(6-1),co_msg(8-1),s20);
	xor24: work.a_xor_b PORT MAP(co_msg(9-1),co_msg(10-1),s21);
	xor25: work.a_xor_b PORT MAP(co_msg(11-1),co_msg(15-1),s22);
	xor26: work.a_xor_b PORT MAP(s19,s20,s23);
	xor27: work.a_xor_b PORT MAP(s21,s22,s24);
	xor28: work.a_xor_b PORT MAP(s23,s24,pcheck(3));
	
END structural;
