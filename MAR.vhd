-- REGISTRADOR MAR 16b
library ieee;
use ieee.std_logic_1164.all;

entity RegistradorMAR16b is
	 port(ENTRADA: in std_logic_vector(15 downto 0); CONTROLE: in std_logic; SAIDA: out std_logic_vector(15 downto 0));
end RegistradorMAR16b;

architecture algoritmica of RegistradorMAR16b is
	component RegistradorGenerico
		port(ENTRADA: in std_logic_vector(15 downto 0); CK, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, RST : in std_logic; SAIDA_A, SAIDA_B: out std_logic_vector(15 downto 0));
	end component;
	signal sigin: std_logic_vector(15 downto 0);
	signal sigout,sigout_B: std_logic_vector(15 downto 0);
	signal clock, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, sigRST: std_logic;
begin
	MAR: RegistradorGenerico port map(sigin, clock, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, sigRST, sigout, sigout_B);
	process (ENTRADA, CONTROLE)
	begin
		if (CONTROLE = '0') then
			SAIDA <= "ZZZZZZZZZZZZZZZZ";
		else
			ENABLE_IN <= CONTROLE; -- CONFERIR SE E CONTROLE OU '1'
			clock <= '1', '0' after 1 ns;
			sigin <= ENTRADA;
			ENABLE_OUT_A <= CONTROLE;
			ENABLE_OUT_B <= '0';
			sigRST <= '1';
			SAIDA <= sigout;
		end if;
	end process;
end algoritmica;