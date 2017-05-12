-- TESTE REGISTRADOR DE MICROINSTRUCOES DE 32b
library ieee;
use ieee.std_logic_1164.all;

entity TesteRegistradorMicroInstrucoes is	
end TesteRegistradorMicroInstrucoes;

architecture teste of TesteRegistradorMicroInstrucoes is
	component RegMicroInstrucoes
		port(ENTRADA: in std_logic_vector(31 downto 0); AMUX, MBR, MAR, RD, WR, ENC : out std_logic; 
		     COND, ALU, SH: out std_logic_vector(1 downto 0); REG_C, REG_B, REG_A: out std_logic_vector(3 downto 0);
		     ADDR: out std_logic_vector(7 downto 0));
	end component;

	signal sigIN: std_logic_vector(31 downto 0);
	signal sigAMUX, sigMBR,sigMAR, sigRD, sigWR, sigENC: std_logic;
	signal sigCOND, sigALU, sigSH: std_logic_vector(1 downto 0);
	signal sigREG_C, sigREG_B, sigREG_A: std_logic_vector(3 downto 0);
	signal sigADDR: std_logic_vector(7 downto 0);
begin
	MICROPROGRAM: RegMicroInstrucoes port map( sigIN, sigAMUX, sigMBR,sigMAR, sigRD, sigWR, sigENC, sigCOND,
						   sigALU, sigSH, sigREG_C, sigREG_B, sigREG_A, sigADDR);
	
	sigIN <= "01010101010101010000000000111111";
end teste;