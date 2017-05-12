------- inicio teste decodificador4x16 ----------
library ieee;
use ieee.std_logic_1164.all;

entity TesteDecodificador4x16 is	
end TesteDecodificador4x16 ;

architecture teste of TesteDecodificador4x16  is
	component  decodificador4x16 is
		port (ENABLE: in bit; ENTRADA: in bit_vector(3 downto 0); SAIDA: out bit_vector(15 downto 0));
	end component ;

	signal sigin: bit_vector(3 downto 0);
	signal sigout: bit_vector(15 downto 0);
	signal ENABLE_IN: bit;
begin
	teste_teste_decodificador: decodificador4x16 port map(ENABLE_IN, sigin, sigout);
	
	ENABLE_IN <='0', '1' after 16 ns;
	sigin <= x"0", x"1" after 1 ns, x"2" after 2 ns, x"3" after 3 ns, x"4" after 4 ns, x"5" after 5 ns, x"6" after 6 ns
			, x"7" after 7 ns, x"8" after 8 ns, x"9" after 9 ns, x"A" after 10 ns, x"B" after 11 ns, x"C" after 12 ns
			, x"D" after 13 ns, x"E" after 14 ns, x"F" after 15 ns, x"0" after 16 ns,x"1" after 17 ns, x"2" after 18 ns
			, x"3" after 19 ns, x"4" after 20 ns, x"5" after 21 ns, x"6" after 22 ns, x"7" after 23 ns, x"8" after 24 ns
			, x"9" after 25 ns, x"A" after 26 ns, x"B" after 27 ns, x"C" after 28 ns, x"D" after 29 ns, x"E" after 30 ns
			, x"F" after 31 ns;
end teste;

------- fim teste decodificador4x16 ----------