------ inicio do or2 ----------
entity or2 is
	port(E1, E2: in bit; S: out bit);
end or2;

architecture algoritmica of or2 is
begin
	process(E1, E2)	
	begin
		if E1='1' or E2='1'
			then S <='1';	
			else  S <='0';
		end if;
	end process;
end algoritmica;

------ fim do or2 ----------