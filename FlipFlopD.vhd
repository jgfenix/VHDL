-- REGISTRADOR TIPO D DE 1b
library ieee;
use ieee.std_logic_1164.all;

entity flipflopD is --descrição do hardware: entradas e saídas
	port(RST, ENABLE_IN, CK, D: in std_logic; Q, NQ: out std_logic);
end flipflopD;

architecture algoritmica of flipflopD is
signal old_D: std_logic; --usado para persistir D anterior
-- para evitar que quando o clock passar por outro ciclo, nao carregue o valor da saida do
-- barramento em D
begin
	process(RST, CK, D, ENABLE_IN)
	begin
		if (ENABLE_IN = '1') then
			old_D <= D;
		end if;

		if (RST = '0') then Q <= '0'; NQ <= '1';
 
		elsif (CK = '1' and CK'event and ENABLE_IN = '1') then
			Q <= D;
			NQ <= not(D);
		elsif (CK = '1' and CK'event and ENABLE_IN = '0') then	--persistir um valor anterior da entrada D
			Q <= old_D;
			NQ <= not(old_D);
		end if;	
	end process;
end algoritmica;

