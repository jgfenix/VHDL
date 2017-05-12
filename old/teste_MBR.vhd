-- TESTE MBR DE 16b
library ieee;
use ieee.std_logic_1164.all;

entity TesteRegistradorMBR is	
end TesteRegistradorMBR;

architecture teste of TesteRegistradorMBR is
	component RegistradorMBR is
	 port(	SAIDA_DE_DADOS: in std_logic_vector(15 downto 0); CONTROLE, RD, WR : in std_logic; 
		ENTRADA_DE_DADOS: out std_logic_vector(15 downto 0);--dados que vao para CPU
		BARRAMENTO_DE_DADOS: inout std_logic_vector(15 downto 0)); -- barramento bidirecional
	end component;

	signal siOUT_DATA, sigIN_DATA, sigBUS_DATA: std_logic_vector(15 downto 0);
	signal sigCONTROLE, sigRD, sigWR: std_logic;
begin

	MBR: RegistradorMBR port map(siOUT_DATA, sigCONTROLE, sigRD, sigWR, sigIN_DATA, sigBUS_DATA);
	
	siOUT_DATA	<= "0101010101010101";--dado vindo da CPU
	sigBUS_DATA	<= "0000000000111111", "ZZZZZZZZZZZZZZZZ" after 20 ns;--dado vindo do barramento
	sigCONTROLE	<= '0', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns;
	sigRD		<= '1', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns;
	sigWR		<= '0', '0' after 10 ns, '1' after 20 ns, '1' after 30 ns;
end teste;