entity and4 is
port (E1, E2, E3, E4: in bit; S: out bit);
end and4;

architecture algoritmica of and4 is
begin
	process(E1, E2, E3, E4)
	begin
		if E1 = '0' or E2 = '0' or E3 = '0' or E4 = '0'
			then S <= '0';
			else S <= '1';
		end if;
	end process;
end algoritmica;