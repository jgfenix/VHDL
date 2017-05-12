-- LMS 16 bits por entrada
-- Joao Gabriel Bispo da Silva
-- 11/10/2016

--C1,C0: (00) nao salte; (01) desvie para ADDR se N=1; (10) desvie para ADDR se Z=1,(11) desvie incondicionalmente para ADDR
library ieee;
use ieee.std_logic_1164.all;

entity LMS is
	port(N,Z,C1,C0: in std_logic; SAIDA: out std_logic);
end LMS;

architecture algoritmica of LMS is  --descrição lógica do hardware
begin
	process(N,Z,C1,C0)
	begin
		if (C1='0') and (C0='0') then
			SAIDA <= '0';

		elsif (C1='0') and (C0='1') then
			if (N='1') then
				SAIDA <= '1';
			end if;
		elsif (C1='1') and (C0='0') then
			if (Z='1') then
				SAIDA <= '1';
			end if;
		else
			SAIDA <= '1';
		end if;
	end process;
end algoritmica ;
