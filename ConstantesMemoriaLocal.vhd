library ieee;
use ieee.std_logic_1164.all;
-- INICIO CONSTANTE 0 DE 16b
entity ConstanteZero is
	port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
end ConstanteZero;

architecture algoritmica of ConstanteZero is
begin
	process(ENABLE, CK) --considerei o clock e a porta tristate para os registradores que possuem constantes
	begin	
		if (ENABLE = '0') then SAIDA <= "ZZZZZZZZZZZZZZZZ";
		elsif (CK = '1' and CK'event) then
			SAIDA <= "0000000000000000";
		end if;
	end process;
end algoritmica;
-- FIM CONSTANTE 0 DE 16b
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-- INICIO CONSTANTE +1 DE 16b
entity ConstanteUm is
	port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
end ConstanteUm;

architecture algoritmica of ConstanteUm is
begin
	process(ENABLE, CK) --considerei o clock e a porta tristate para os registradores que possuem constantes
	begin	
		if (ENABLE = '0') then SAIDA <= "ZZZZZZZZZZZZZZZZ";
		elsif (CK = '1' and CK'event) then
			SAIDA <= "0000000000000001";
		end if;
	end process;
end algoritmica;
-- FIM CONSTANTE +1 DE 16b
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-- INICIO CONSTANTE -1 DE 16b
entity ConstanteMenosUm is
	port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
end ConstanteMenosUm;

architecture algoritmica of ConstanteMenosUm is
begin
	process(ENABLE, CK) --considerei o clock e a porta tristate para os registradores que possuem constantes
	begin	
		if (ENABLE = '0') then SAIDA <= "ZZZZZZZZZZZZZZZZ";
		elsif (CK = '1' and CK'event) then
			SAIDA <= "1111111111111111";
		end if;
	end process;
end algoritmica;
-- FIM CONSTANTE -1 DE 16b
