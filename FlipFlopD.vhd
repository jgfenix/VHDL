-- REGISTRADOR TIPO D DE 1b
library ieee;
use ieee.std_logic_1164.all;

entity flipflopD is --descrição do hardware: entradas e saídas
	port(RST, CK, D: in std_logic; Q, NQ: out std_logic);
end flipflopD;

architecture algoritmica of flipflopD is
begin
	process(RST, CK)
	begin
		if (RST = '0') then Q <= '0'; NQ <= '1';
		elsif (CK = '1' and CK'event) then
			if D = '1' then	
				Q <= '1';
				NQ <= '0';
			else		
				Q <= '0';
				NQ <= '1';
			end if;		
		end if;		
	end process;
end algoritmica;

