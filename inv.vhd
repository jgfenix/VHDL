------ inicio do inv ----------
entity inv is
	port(E: in bit; S: out bit);
end inv;

architecture algoritmica of inv is
begin
	process(E)	
	begin
		if E='0'
			then S <='1';	
			else  S <='0';
		end if;
	end process;
end algoritmica;

------ fim do inv ----------