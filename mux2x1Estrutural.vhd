------ inicio arquitetura estrutural do mux 2x1 ----------
architecture estrutural of mux2x1 is

	component and2
		port(E1, E2: in bit; S: out bit);
	end component;


	component or2
		port(E1, E2: in bit; S: out bit);
	end component;


	component inv
		port(E: in bit; S: out bit);
	end component;

	-- portas que conectam externamente na estrutura anteriormente declarada
	signal S1, S2, S3: bit;
	
	begin
		P1: and2 port map(B, C, S1);
		P2: inv port map(C, S2);
		P3: and2 port map(S2, A, S3);
		P4: or2 port map(S1, S3, S); --S eh a saida do MUX

end estrutural;
------ fim arquitetura estrutural do mux 2x1 ----------
