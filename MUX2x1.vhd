library ieee;
use ieee.std_logic_1164.all;

entity MUX2x1 is
	port(A: in bit; B: in bit; C: in bit; S: out bit);
end MUX2x1;

architecture algoritmica of MUX2x1 is

Begin
	process (A, B, C)
	begin
		if C = '0'
		then S <= A;
		else S <= B;
		end if;
	end process;
end algoritmica;
