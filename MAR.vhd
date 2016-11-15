-- REGISTRADOR MAR 16b
library ieee;
use ieee.std_logic_1164.all;

entity RegistradorMAR16b is
	 port(ENTRADA: in std_logic_vector(15 downto 0); CONTROLE: in std_logic; SAIDA: out std_logic_vector(15 downto 0));
end RegistradorMAR16b;

architecture algoritmica of RegistradorMAR16b is
signal DADO_ARMAZENADO: std_logic_vector(15 downto 0); --usado para persistir o dado
begin
	process(CONTROLE)
	begin
		if (CONTROLE = '1') then
			DADO_ARMAZENADO <= ENTRADA;
		end if;
		
	end process;
	SAIDA <= DADO_ARMAZENADO;
end algoritmica;
