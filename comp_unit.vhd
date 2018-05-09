--Declaracao da Entidade
ENTITY comp_unit IS
PORT (a, b: IN BIT;
  in_amqb, in_aib, in_alqb: IN BIT;
  out_amqb, out_aib, out_alqb: OUT BIT);
END comp_unit;

--Descricao do structural da entidade
ARCHITECTURE structural OF comp_unit IS

BEGIN
--Atribuicao das equacoes as portas de saida
  out_amqb <= in_amqb OR (in_aib AND (a AND NOT b));
  out_aib <= in_aib AND NOT (a XOR b);
  out_alqb <= in_alqb OR (in_aib AND (NOT a AND b));
END structural;