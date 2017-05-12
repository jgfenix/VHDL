--Testador de Decoder4x16:

entity TesteDecoder4x16 is
end TesteDecoder4x16;

architecture teste of TesteDecoder4x16 is
	component Decoder4x16
		port(A, B, C, D: in bit; S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15: out bit); 
	end component;
	signal sigA, sigB, sigC, sigD: bit; -- sinais que são enviados para as portas de entrada
begin
	P: Decoder4x16 port map(sigA, sigB, sigC, sigD); -- P é um componente do tipo Decoder4x16

	sigA <= '0', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '0' after 70 ns, '1' after 80 ns, '1' after 90 ns, '1' after 100 ns, '1' after 110 ns, '1' after 120 ns, '1' after 130 ns, '1' after 140 ns, '1' after 150 ns;
	sigB <= '0', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '1' after 40 ns, '1' after 50 ns, '1' after 60 ns, '1' after 70 ns, '0' after 80 ns, '0' after 90 ns, '0' after 100 ns, '0' after 110 ns, '1' after 120 ns, '1' after 130 ns, '1' after 140 ns, '1' after 150 ns;
	sigC <= '0', '0' after 10 ns, '1' after 20 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '1' after 60 ns, '1' after 70 ns, '0' after 80 ns, '0' after 90 ns, '1' after 100 ns, '1' after 110 ns, '0' after 120 ns, '0' after 130 ns, '1' after 140 ns, '1' after 150 ns;
	sigD <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns, '0' after 80 ns, '1' after 90 ns, '0' after 100 ns, '1' after 110 ns, '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, '1' after 150 ns;

end teste;
