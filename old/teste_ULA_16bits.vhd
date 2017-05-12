--Testador de ULA_16bits:
library ieee;
use ieee.std_logic_1164.all;

entity TesteULA_16bits is
end TesteULA_16bits;

architecture teste of TesteULA_16bits is
	component ULA_16bits
	port(A,B: in std_logic_vector (15 downto 0); S1,S0: in bit; SAIDA: out std_logic_vector (15 downto 0); N,Z: out std_logic);
	end component;
	signal sigS1, sigS0: bit; -- sinais que são enviados para as portas de entrada
	signal sigA: std_logic_vector (15 downto 0);
	signal sigB: std_logic_vector (15 downto 0);
	signal SAIDA: std_logic_vector (15 downto 0);
	signal SN,SZ: std_logic;
begin
	P: ULA_16bits port map(sigA,sigB,sigS1,sigS0,SAIDA,SN,SZ); -- P é um componente do tipo ULA_16bits
	sigA <= "1111111111111111";
	sigB <= "0000000000000101";
	sigS1 <= '0', '0' after 20 ns, '1' after 30 ns, '1' after 40 ns;
	sigS0 <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns;

end teste;
