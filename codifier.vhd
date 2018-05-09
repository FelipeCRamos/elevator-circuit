LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

--Declaracao da Entidade
ENTITY codifier IS
PORT (n: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END codifier;

--Descricao do structural da entidade
ARCHITECTURE structural OF codifier IS

BEGIN
--Atribuicao das equacoes as portas de saida
	s(3) <= n(8) OR n(9) OR n(10) OR n(11) OR n(12) OR n(13) OR n(14) OR n(15);
	s(2) <= n(4) OR n(5) OR n(6) OR n(7) OR n(12) OR n(13) OR n(14) OR n(15);
	s(1) <= n(2) OR n(3) OR n(6) OR n(7) OR n(10) OR n(11) OR n(14) OR n(15);
	s(0) <= n(1) OR n(3) OR n(5) OR n(7) OR n(9) OR n(11) OR n(13) OR n(15);
END structural;
