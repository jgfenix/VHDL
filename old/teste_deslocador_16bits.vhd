--Testador de deslocador16bit:
library ieee;
use ieee.std_logic_1164.all;

entity Testedeslocador16bit is
end Testedeslocador16bit;

architecture teste of Testedeslocador16bit is
	component deslocador16bit
		port(A: in std_logic_vector (15 downto 0); S1,S0: in bit; SAIDA:out std_logic_vector (15 downto 0));
	end component;
	signal sigS1, sigS0: bit; -- sinais que são enviados para as portas de entrada
	signal sigA: std_logic_vector (15 downto 0);
	signal SAIDA: std_logic_vector (15 downto 0);
begin
	P: deslocador16bit port map(sigA, sigS1, sigS0, SAIDA); -- P é um componente do tipo deslocador16bit
	sigA <= "1111111111111111";
	sigS1 <= '0', '0' after 20 ns, '1' after 30 ns, '1' after 40 ns;
	sigS0 <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns;

end teste;
