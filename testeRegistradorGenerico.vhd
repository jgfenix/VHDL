-- TESTE REGISTRADOR GENERICO DE 16b
library ieee;
use ieee.std_logic_1164.all;
entity TesteRegistradorGenerico is	
end TesteRegistradorGenerico;

architecture teste of TesteRegistradorGenerico is
	component RegistradorGenerico
		port(ENTRADA: in std_logic_vector(15 downto 0); CK, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, RST : in std_logic; SAIDA_A, SAIDA_B: out std_logic_vector(15 downto 0));
	end component;
	signal sigin: std_logic_vector(15 downto 0);
	signal sigout_A, sigout_B: std_logic_vector(15 downto 0);
	signal clock, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, sigRST: std_logic;
begin
	-- Registrador PC simbolizando todos os outros registradores(PC, AC, IR, TIR, A, B, C, D, E, F, LA, LB)
	PC: RegistradorGenerico port map(sigin, clock, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, sigRST, sigout_A, sigout_B);
	
	clock <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 20 ns, '0' after 25 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '1' after 70 ns;	
	sigin <= "0101010101010101", "0000000000111111" after 15 ns;
	ENABLE_IN <= '1', '0' after 15 ns;
	ENABLE_OUT_A <= '1';--, '0' after 20 ns;
	ENABLE_OUT_B <= '1';
	sigRST <= '1', '0' after 30 ns;
end teste;
