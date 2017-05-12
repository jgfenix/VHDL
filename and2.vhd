------ inicio do and2 ----------
entity and2 is
	port(E1, E2: in bit; S: out bit);
end and2;

architecture algoritmica of and2 is
begin
	process(E1, E2)	
	begin
		if E1='1' and E2='1'
			then S <='1';	
			else  S <='0';
		end if;
	end process;
end algoritmica;

------ fim do and2 ----------