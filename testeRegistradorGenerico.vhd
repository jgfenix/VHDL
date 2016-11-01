-- TESTE REGISTRADOR GENERICO DE 16b
library ieee;
use ieee.std_logic_1164.all;
entity TesteRegistradorGenerico is	
end TesteRegistradorGenerico;

architecture teste of TesteRegistradorGenerico is
	component RegistradorGenerico
		port(ENTRADA: in std_logic_vector(15 downto 0); ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
	end component;
	signal sigin, sigout: std_logic_vector(15 downto 0);
	signal enable, clock: std_logic;
begin
	PC: RegistradorGenerico port map(sigin, enable, clock, sigout);
	clock <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 20 ns, '0' after 25 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '1' after 70 ns;	
--	clock <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns;	
	sigin <= "0101010101010101", "0000000000111111" after 30 ns;
	enable <= '1'; --, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns;

end teste;
