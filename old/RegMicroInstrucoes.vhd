-- REGISTRADOR DE MICROINSTRUCOES DE 32b
library ieee;
use ieee.std_logic_1164.all;

entity RegMicroInstrucoes is --descrição do hardware: entradas e saídas
	port(ENTRADA: in std_logic_vector(31 downto 0); AMUX, MBR, MAR, RD, WR, ENC : out std_logic; 
	     COND, ALU, SH: out std_logic_vector(1 downto 0); REG_C, REG_B, REG_A: out std_logic_vector(3 downto 0);
	     ADDR: out std_logic_vector(7 downto 0));
end RegMicroInstrucoes;

architecture algoritmica of RegMicroInstrucoes is
	--signal	COND0, COND1,
	--	ALU0, ALU1,
	--	SH0, SH1,
	--	MBR, MAR, RD, WR, ENC,
	--	REG_C0, REG_C1, REG_C2, REG_C3,
	--	REG_B0, REG_B1, REG_B2, REG_B3,
	--	REG_A0, REG_A1, REG_A2, REG_A3,
	--	ADDR0, ADDR1, ADDR2, ADDR3, ADDR4, ADDR5, ADDR6, ADDR7: std_logic;
begin
	process (ENTRADA)
	begin
		AMUX <= ENTRADA(31);

		COND(1)<= ENTRADA(30); COND(0) <= ENTRADA(29);

		ALU(1) <= ENTRADA(28); ALU(0) <= ENTRADA(27);

		SH(1) <= ENTRADA(26); SH(0) <= ENTRADA(25);	

		MBR <= ENTRADA(24);
		MAR <= ENTRADA(23);	

		RD <= ENTRADA(22); 
		WR <= ENTRADA(21);

		ENC <= ENTRADA(20);

		REG_C(3) <= ENTRADA(19);  REG_C(2) <= ENTRADA(18);  REG_C(1) <= ENTRADA(17);  REG_C(0) <= ENTRADA(16);
		REG_B(3) <= ENTRADA(15);  REG_B(2) <= ENTRADA(14);  REG_B(1) <= ENTRADA(13);  REG_B(0) <= ENTRADA(12);
		REG_A(3) <= ENTRADA(11);  REG_A(2) <= ENTRADA(10);  REG_A(1) <= ENTRADA(9);   REG_A(0) <= ENTRADA(8);

		ADDR(7) <= ENTRADA(7);   ADDR(6) <= ENTRADA(6);     ADDR(5) <= ENTRADA(5);    ADDR(4) <= ENTRADA(4);
		ADDR(3) <= ENTRADA(3);   ADDR(2) <= ENTRADA(2);     ADDR(1) <= ENTRADA(1);    ADDR(0) <= ENTRADA(0);
	end process;
end algoritmica;