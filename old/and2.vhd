
entity and2 is
port (E1, E2: in bit; S: out bit);
end and2;

architecture algoritmica of and2 is
begin
	process(E1, E2)
	begin
		if E1 = '0' or E2 = '0'
			then S <= '0';
			else S <= '1';
		end if;
	end process;
end algoritmica;

architecture fluxo_de_dados of and2 is
begin
	S <= E1 and E2;
end fluxo_de_dados;