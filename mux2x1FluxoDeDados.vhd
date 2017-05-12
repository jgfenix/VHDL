------ inicio fluxo de dados do mux 2x1 ----------
architecture fluxoDeDados of mux2x1 is

begin
	s <= (B and C) or (A and (not c));

end fluxoDeDados;
------ fim fluxo de dados do mux 2x1 ----------
