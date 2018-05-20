ENTITY mux_2x1 IS
PORT (
	a, b	: IN BIT;
	sel		: IN BIT;
	s		: OUT BIT);
END mux_2x1;

ARCHITECTURE structural OF mux_2x1 IS
BEGIN
	s <= (a AND NOT sel) OR (b AND sel);
END structural;
