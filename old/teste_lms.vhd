--Testador de lms:
library ieee;
use ieee.std_logic_1164.all;

entity Testelms is
end Testelms;

architecture teste of Testelms is
	component lms
		port(N,Z,C1,C0: in std_logic; SAIDA: out std_logic);
	end component;

	signal sigN, sigZ, sigC1, sigC0: std_logic; -- sinais que são enviados para as portas de entrada
	signal SAIDA: std_logic;
begin
	P: lms port map(sigN, sigZ, sigC1, sigC0, SAIDA); -- P é um componente do tipo lms
	sigN <= '1';
	sigZ <= '1';
	sigC1 <= '0', '0' after 20 ns, '1' after 30 ns, '1' after 40 ns;
	sigC0 <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns;

end teste;