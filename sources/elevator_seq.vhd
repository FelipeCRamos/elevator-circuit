LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY elevator_2 IS
	PORT (
		input:		IN STD_LOGIC_VECTOR(15 DOWNTO 0); 	-- desired floor
		clk : 		IN BIT; 							-- clock -- clk do sistema
		clrn: 		IN BIT; 							-- counter initializer
		close_door: OUT BIT; 							-- port state
		motor_on : 	OUT BIT; 							-- motor state
		disp: 		OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	-- actual floor display
	); 		
END elevator_2;

ARCHITECTURE structural OF elevator_2 IS

	COMPONENT counter_3bits IS
		PORT (
			d: 			IN STD_LOGIC_VECTOR(3 DOWNTO 0);		-- data input
			clk : 		IN BIT; 								-- clock
			clrn: 		IN BIT; 								-- clear
			ena : 		IN BIT; 								-- enable
			load: 		IN BIT; 								-- load
			forward: 	IN BIT; 								-- forward[1]/backward[0] operation
			q: 			BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)		-- data output
		);
	END COMPONENT;

	COMPONENT display IS	-- selected display
		PORT (
			c: 	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT codifier IS 	-- codifier input 
		PORT (
			n: 	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			s: 	OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL curr_floor: 	STD_LOGIC_VECTOR(3 DOWNTO 0); -- counter output, display input
	SIGNAL input_cod: 	STD_LOGIC_VECTOR(3 DOWNTO 0); -- codifier output
	SIGNAL forward:		BIT;
	SIGNAL enable:		BIT;

BEGIN

	cd: codifier PORT MAP(input, input_cod);

	forward <= '1' WHEN input_cod > curr_floor ELSE '0';
	enable <= '0' WHEN input_cod = curr_floor ELSE '1';

	ct: counter_3bits PORT MAP("0000", clk, clrn, enable, '0', forward, curr_floor);
	di: display PORT MAP(curr_floor, disp);

	close_door <= enable;
	motor_on <= enable;

END structural;
