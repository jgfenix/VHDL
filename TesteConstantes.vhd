library ieee;
use ieee.std_logic_1164.all;
-- TESTE PARA VALIDAR TODAS AS CONSTANTES

entity TesteConstantes is
end TesteConstantes;

architecture teste of TesteConstantes is
	component ConstanteZero
		port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
	end component;

	component ConstanteUm
		port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
	end component;

	component ConstanteMenosUm
		port(ENABLE, CK : in std_logic; SAIDA: out std_logic_vector(15 downto 0));
	end component;

	signal ENABLE, CLK: std_logic; -- sinais que são enviados para as portas de entrada
	signal SaidaZero, SaidaUm, SaidaMenosUm: std_logic_vector (15 downto 0);

begin
	Zero: ConstanteZero port map(ENABLE, CLK, SaidaZero);
	Um: ConstanteUm port map(ENABLE, CLK, SaidaUm);
	MenosUm: ConstanteMenosUm port map(ENABLE, CLK, SaidaMenosUm);

	ENABLE <= '1';
	CLK <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 20 ns, '0' after 25 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '1' after 70 ns;

end teste;
