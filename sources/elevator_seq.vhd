LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY elevator_2 IS
PORT (	input: IN STD_LOGIC_VECTOR(15 DOWNTO 0);-- o andar desejado
	clk : IN BIT; -- clock -- clk do sistema
	clrn: IN BIT; -- inicializador do counter
	close_door: OUT BIT; -- indicadno estado da porta
	motor_on : OUT BIT; -- indicando se motor esta ligado
	disp: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --display do andar atual
END elevator_2;

ARCHITECTURE structural OF elevator_2 IS

COMPONENT counter_3bits IS
PORT (	d: IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- data input
	clk : IN BIT; -- clock
	clrn: IN BIT; -- clear
	ena : IN BIT; -- enable
	load: IN BIT; -- load
	forward: IN BIT; --forward (true) or backward (false) operation
	q: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));-- data output
END COMPONENT;

COMPONENT display IS -- display que sera utilizado
PORT (c: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT codifier IS -- codificador de entrada
PORT (n: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

SIGNAL curr_floor : STD_LOGIC_VECTOR(3 DOWNTO 0); -- saida do contador e entrada do display
SIGNAL input_cod : STD_LOGIC_VECTOR(3 DOWNTO 0); -- saida do codifier
SIGNAL forward: BIT;
SIGNAL enable: BIT;

BEGIN

cd: codifier PORT MAP(input, input_cod);

forward <= '1' WHEN input_cod > curr_floor ELSE '0';
enable <= '0' WHEN input_cod = curr_floor ELSE '1';

ct: counter_3bits PORT MAP("0000", clk, clrn, enable, '0', forward, curr_floor);
di: display PORT MAP(curr_floor, disp);

close_door <= enable;
motor_on <= enable;

END structural;
