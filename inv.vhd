entity inv is
port(E: in bit; S: out bit);
end inv;

architecture algoritmica of inv is
begin
	process(E)
	begin
		if E = '0'
			then S <= '1';
			else S <= '0';
		end if;
	end process;
end algoritmica;

architecture fluxo_de_dados of inv is
begin
S <= not(E);
end fluxo_de_dados;
