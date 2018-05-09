LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

--Declaracao da Entidade
ENTITY display IS
PORT (c: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END display;

--Descricao do structural da entidade
ARCHITECTURE structural OF display IS
BEGIN
--Atribuicao das equacoes as portas de saida (displays)
 s(0) <= (c(2) AND c(3) AND NOT c(0)) OR (c(2) AND NOT c(1) AND NOT c(0)) OR ( NOT c(2) AND NOT c(3) AND c(1)) OR ( NOT c(2) AND c(0)) OR (c(3) AND NOT c(1)) OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3));
 s(1) <= (c(2) AND NOT c(3)) OR (c(2) AND c(1)) OR ( NOT c(2) AND c(3) AND NOT c(1)) OR c(0)  OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3));
 s(2) <= (c(2) AND c(3) AND c(2)) OR (c(2) AND NOT c(1) AND c(0)) OR ( NOT c(2) AND NOT c(3) AND c(1)) OR (c(3) AND NOT c(1)) OR ( NOT c(3) AND c(1) AND NOT c(0))  OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3));
 s(3) <= (c(3) AND NOT c(1) AND NOT c(0)) OR ( NOT c(3) AND c(1) AND NOT c(0))  OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3));
 s(4) <= (c(2) AND c(3) AND c(1)) OR (c(2) AND NOT c(3) AND NOT c(1)) OR (c(2) AND c(1) AND NOT c(0)) OR ( NOT c(2) AND c(3) AND NOT c(1)) OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3)); 
 s(5) <= (c(2) AND c(0)) OR (c(3) AND NOT c(1)) OR ( NOT c(3) AND c(1))  OR ( NOT c(3) AND c(1) AND c(0)) OR (NOT c(0) and NOT c(1) and NOT c(3) and NOT c(3));
 s(6) <= (c(2) AND c(3)) OR (c(2) AND NOT c(1)) OR (c(2) AND NOT c(0)) OR ( NOT c(2) AND NOT c(3) AND c(1)) OR (c(3) AND NOT c(1));
 s(7) <= (c(2) AND c(3)) OR (c(3) AND c(1));
END structural;