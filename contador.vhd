LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY counter_3bits IS
PORT (d: IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- data input
clk : IN BIT; -- clock
clrn: IN BIT; -- clear
ena : IN BIT; -- enable
load: IN BIT; -- load
forward: IN BIT; --forward (true) or backward (false) operation
q: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));-- data output
END counter_3bits;

ARCHITECTURE arch_1 OF counter_3bits IS
BEGIN
PROCESS(clk,clrn)
	BEGIN
		IF (clrn='0') THEN
			q <= (OTHERS => '0');
		ELSIF (clk'EVENT AND clk='1') THEN
		IF (ena='1') THEN
			IF (load='1') THEN
				q <= d;
			ELSIF (forward='1') THEN
				q <= q+1;
			ELSE
				q <= q-1;
			END IF;
		END IF;
	END IF;
END PROCESS;
END arch_1;