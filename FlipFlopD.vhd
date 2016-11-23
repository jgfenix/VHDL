-- REGISTRADOR TIPO D DE 1b
library ieee;
use ieee.std_logic_1164.all;

entity flipflopD is --descrição do hardware: entradas e saídas
	port(RST, CK, D: in std_logic; Q, NQ: out std_logic);
end flipflopD;

architecture algoritmica of flipflopD is

begin
	process(RST, CK, D)
	begin
		if (RST = '0') then Q <= '0'; NQ <= '1';
 
		elsif (CK = '1' and CK'event ) then--and ENABLE_IN = '1') then
			Q <= D;
			NQ <= not(D);
		end if;
	end process;
end algoritmica;

