LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY display IS	-- entity declaration
	PORT (
		c:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		s: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END display;

ARCHITECTURE structural OF display IS	-- structural declaration
BEGIN

	-- Output equations for displays
	s(0) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND c(1) AND c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND c(1) AND c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND NOT c(0));
	s(1) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND c(1) AND c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND c(1) AND c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));
	s(2) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));
	s(3) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0));
	s(4) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));
	s(5) <= (NOT c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND c(1) AND c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));
	s(6) <= (NOT c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (NOT c(3) AND NOT c(2) AND c(1) AND c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (NOT c(3) AND c(2) AND NOT c(1) AND c(0)) OR (NOT c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));
	s(7) <= (c(3) AND NOT c(2) AND c(1) AND NOT c(0)) OR (c(3) AND NOT c(2) AND c(1) AND c(0)) OR (c(3) AND c(2) AND NOT c(1) AND NOT c(0)) OR (c(3) AND c(2) AND NOT c(1) AND c(0)) OR (c(3) AND c(2) AND c(1) AND NOT c(0)) OR (c(3) AND c(2) AND c(1) AND c(0));

END structural;
