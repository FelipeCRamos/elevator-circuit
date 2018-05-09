LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY elevator IS
PORT (
	d		: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- data input
	clk 	: IN BIT; -- clock
	clrn	: IN BIT; -- clear
	ena 	: IN BIT; -- enable
	load	: IN BIT; -- load
	forward	: IN BIT;
	disp	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
); --forward (true) or backward (false) operation
END elevator;

ARCHITECTURE structural OF elevator IS

COMPONENT counter_3bits IS
PORT (	
	d		: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- data input
	clk 	: IN BIT; -- clock
	clrn	: IN BIT; -- clear
	ena 	: IN BIT; -- enable
	load	: IN BIT; -- load
	forward	: IN BIT; --forward (true) or backward (false) operation
	q		: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)); -- data output
END COMPONENT;

COMPONENT display IS
PORT (
	c	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT;

SIGNAL ocid : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	ct	: counter_3bits PORT MAP(d, clk, clrn, ena, load, forward, ocid);
	di	: display PORT MAP(ocid, disp);
END structural;
