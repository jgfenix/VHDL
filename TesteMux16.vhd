--Testador do MUX2x1 16 bits por entrada:
-- Joao Gabriel Bispo da Silva
-- 05/12/2016

entity TesteMUX16 is
end TesteMUX16;

architecture teste of TesteMUX16 is
component MUX16 is
		port(   A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15,
			B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
			C: in bit;
			O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15: out bit);
end component;
	
signal  	sigA0, sigA1, sigA2, sigA3, sigA4, sigA5, sigA6, sigA7, sigA8,
		sigA9, sigA10, sigA11, sigA12, sigA13, sigA14, sigA15,
		
		sigB0, sigB1, sigB2, sigB3, sigB4, sigB5, sigB6, sigB7,sigB8,
		sigB9, sigB10, sigB11, sigB12, sigB13, sigB14, sigB15,
		sigC,
		O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15: bit; -- sinais que são enviados para as portas de entrada

begin
	componente: MUX16 port map( sigA0, sigA1, sigA2, sigA3, sigA4, sigA5, sigA6, sigA7, sigA8,
			   sigA9, sigA10, sigA11, sigA12, sigA13, sigA14, sigA15,
		
			   sigB0, sigB1, sigB2, sigB3, sigB4, sigB5, sigB6, sigB7,sigB8,
			   sigB9, sigB10, sigB11, sigB12, sigB13, sigB14, sigB15,
			   sigC, 
						
			   O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15); -- P é um componente do tipo MUX16

	sigC <= '0', '1' after 10 ns;

	sigA0  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA1  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA2  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA3  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA4  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA5  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA6  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA7  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA8  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA9  <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA10 <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA11 <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA12 <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA13 <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA14 <= '0', '1' after 20 ns, '0' after 30 ns;
	sigA15 <= '0', '1' after 20 ns, '0' after 30 ns;

	sigB0  <= '1', '0' after 20 ns;
	sigB1  <= '1', '0' after 20 ns;
	sigB2  <= '1', '0' after 20 ns;
	sigB3  <= '1', '0' after 20 ns;
	sigB4  <= '1', '0' after 20 ns;
	sigB5  <= '1', '0' after 20 ns;
	sigB6  <= '1', '0' after 20 ns;
	sigB7  <= '1', '0' after 20 ns;
	sigB8  <= '1', '0' after 20 ns;
	sigB9  <= '1', '0' after 20 ns;
	sigB10 <= '1', '0' after 20 ns;
	sigB11 <= '1', '0' after 20 ns;
	sigB12 <= '1', '0' after 20 ns;
	sigB13 <= '1', '0' after 20 ns;
	sigB14 <= '1', '0' after 20 ns;
	sigB15 <= '1', '0' after 20 ns;

end teste;
