-- REGISTRADOR GENERICO DE 16b
library ieee;
use ieee.std_logic_1164.all;

entity RegistradorGenerico is
	 port(ENTRADA: in std_logic_vector(15 downto 0); CK, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B : in std_logic; SAIDA: out std_logic_vector(31 downto 0));
end RegistradorGenerico;

architecture algoritmica of RegistradorGenerico is
	component flipflopD
		port(RST, ENABLE_IN, CK, D: in std_logic; Q, NQ: out std_logic);
	end component;
	signal RST, ENABLE_IN_REGISTRADOR: std_logic;
	signal Q, NQ: std_logic_vector(15 downto 0);
begin
	D0: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(0),  Q(0),  NQ(0));
	D1: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(1),  Q(1),  NQ(1));
	D2: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(2),  Q(2),  NQ(2));
	D3: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(3),  Q(3),  NQ(3));
	D4: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(4),  Q(4),  NQ(4));
	D5: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(5),  Q(5),  NQ(5));
	D6: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(6),  Q(6),  NQ(6));
	D7: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(7),  Q(7),  NQ(7));
	D8: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(8),  Q(8),  NQ(8));
	D9: flipflopD  port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(9),  Q(9),  NQ(9));
	D10: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(10), Q(10), NQ(10));
	D11: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(11), Q(11), NQ(11));
	D12: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(12), Q(12), NQ(12));
	D13: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(13), Q(13), NQ(13));
	D14: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(14), Q(14), NQ(14));
	D15: flipflopD port map(RST, ENABLE_IN_REGISTRADOR,  CK, ENTRADA(15), Q(15), NQ(15));

	process (ENTRADA, CK, ENABLE_OUT_A, ENABLE_OUT_B, Q)
	begin
		if (ENABLE_OUT_A = '0' and ENABLE_OUT_B = '0') then
			for i in 0 to 15 loop
				SAIDA(i) <= 'Z'; --barramento A
				SAIDA(16 + i) <= 'Z'; --barramento B
			end loop;
		elsif (ENABLE_OUT_A = '0' and ENABLE_OUT_B = '1') then
			for i in 0 to 15 loop
				SAIDA(i) <= 'Z'; --barramento A
				SAIDA(16 + i) <= Q(i); --barramento B
			end loop;
		elsif (ENABLE_OUT_A = '1' and ENABLE_OUT_B = '0') then
			for i in 0 to 15 loop
				SAIDA(i) <= Q(i); --barramento A
				SAIDA(16 + i) <= 'Z'; --barramento B
			end loop;
		elsif (ENABLE_OUT_A = '1' and ENABLE_OUT_B = '1') then
			for i in 0 to 15 loop
				SAIDA(i) <= Q(i); --barramento A
				SAIDA(16 + i) <= Q(i); --barramento B
			end loop;
		end if;
	end process;
end algoritmica;