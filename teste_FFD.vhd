--Testador de FFD:
library ieee;
use ieee.std_logic_1164.all;

entity testeflipflopD is
end testeflipflopD;

architecture teste of testeflipflopD is
	component flipflopD
		port(RST, ENABLE_IN, CK, D: in std_logic; Q, NQ: out std_logic);
	end component;
	signal sigRST, sigEnableIn, sigCK, sigD, sigQ, sigNQ: std_logic; -- sinais que são enviados para as portas de entrada
begin
	P: flipflopD port map(sigRST, sigEnableIn, sigCK, sigD, sigQ, sigNQ); -- P é um componente do tipo flipflopD
	sigEnableIn <= '1', '0' after 18 ns, '1' after 30ns ;--usado para controlar o carregamento do bit no flipflop
	sigRST <= '1', '1' after 10 ns, '1' after 20 ns;
	sigCK <= '0', '1' after 5 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns;
	sigD <= '1', '1' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns;

end teste;