--Declaracao da Entidade
ENTITY comparator IS
PORT 	(a0,a1,a2,a3,b0,b1,b2,b3 : IN BIT;
 	a_mq_b, a_i_b, a_lq_b: OUT BIT);
END comparator;

--Descricao do structural da entidade
ARCHITECTURE structural OF comparator IS

--Declaracao da componente comp_unit
COMPONENT comp_unit IS
PORT (a, b: IN BIT;
	in_amqb, in_aib, in_alqb: IN BIT;
	out_amqb, out_aib, out_alqb: OUT BIT);
END COMPONENT;

--Declaracao dos sinais internos auxiliares
SIGNAL mq1, mq2, mq3 : BIT;
SIGNAL lq1, lq2, lq3 : BIT;
SIGNAL i1, i2, i3 : BIT;

BEGIN
--Instaciacao das componentes e mapeamento de portas
	cu3: comp_unit PORT MAP(a3,b3,'0','1','0',mq3,i3,lq3);
	cu2: comp_unit PORT MAP(a2,b2,mq3,i3,lq3,mq2,i2,lq2);
	cu1: comp_unit PORT MAP(a1,b1,mq2,i2,lq2,mq1,i1,lq1);
	cu0: comp_unit PORT MAP(a0,b0,mq1,i1,lq1,a_mq_b, a_i_b, a_lq_b);
END structural;
