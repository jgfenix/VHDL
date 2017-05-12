-- REGISTRADOR MAR 16b
library ieee;
use ieee.std_logic_1164.all;

entity TesteMAR is	
end TesteMAR;

architecture teste of TesteMAR is
	component RegistradorMAR16b
		port(ENTRADA: in std_logic_vector(15 downto 0); CONTROLE: in std_logic; SAIDA: out std_logic_vector(15 downto 0));
	end component;
	signal sigin: std_logic_vector(15 downto 0);
	signal sigout: std_logic_vector(15 downto 0);
	signal ENABLE_IN: std_logic;
begin
	teste_teste_MAR: RegistradorMAR16b port map(sigin, ENABLE_IN, sigout);
	
	sigin <= "0101010101010101";
	ENABLE_IN <= '0', '1' after 10 ns, '0' after 20 ns;
end teste;