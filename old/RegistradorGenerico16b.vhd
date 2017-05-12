-- REGISTRADOR GENERICO DE 16b
library ieee;
use ieee.std_logic_1164.all;

entity RegistradorGenerico is
	 port(ENTRADA: in std_logic_vector(15 downto 0); CK, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, RST : in std_logic; SAIDA_A, SAIDA_B: out std_logic_vector(15 downto 0));
end RegistradorGenerico;

architecture algoritmica of RegistradorGenerico is
	component flipflopD
		port(RST, ENABLE_IN, CK, D: in std_logic; Q, NQ: out std_logic);
	end component;
	signal sig_internalRST, sigENABLE_IN, sigCK: std_logic;
	signal sigENTRADA, sigQ, sigNQ: std_logic_vector(15 downto 0);
begin
	D0: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(0),  sigQ(0),  sigNQ(0));
	D1: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(1),  sigQ(1),  sigNQ(1));
	D2: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(2),  sigQ(2),  sigNQ(2));
	D3: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(3),  sigQ(3),  sigNQ(3));
	D4: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(4),  sigQ(4),  sigNQ(4));
	D5: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(5),  sigQ(5),  sigNQ(5));
	D6: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(6),  sigQ(6),  sigNQ(6));
	D7: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(7),  sigQ(7),  sigNQ(7));
	D8: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(8),  sigQ(8),  sigNQ(8));
	D9: flipflopD  port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(9),  sigQ(9),  sigNQ(9));
	D10: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(10), sigQ(10), sigNQ(10));
	D11: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(11), sigQ(11), sigNQ(11));
	D12: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(12), sigQ(12), sigNQ(12));
	D13: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(13), sigQ(13), sigNQ(13));
	D14: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(14), sigQ(14), sigNQ(14));
	D15: flipflopD port map(sig_internalRST, sigENABLE_IN,  sigCK, sigENTRADA(15), sigQ(15), sigNQ(15));

	process (CK, ENABLE_IN, ENABLE_OUT_A, ENABLE_OUT_B, RST)
	begin
		sigENABLE_IN <= ENABLE_IN;
		sigENTRADA <= ENTRADA;
		sigCK <= CK;
		sigENABLE_IN <= ENABLE_IN;
		sig_internalRST <= RST;

		if (ENABLE_OUT_A = '0' and ENABLE_OUT_B = '0') then
			SAIDA_A <= "ZZZZZZZZZZZZZZZZ"; --barramento A
			SAIDA_B <= "ZZZZZZZZZZZZZZZZ"; --barramento B
			
		elsif (ENABLE_OUT_A = '0' and ENABLE_OUT_B = '1') then
			SAIDA_A <= "ZZZZZZZZZZZZZZZZ"; --barramento A
			SAIDA_B <= sigQ; --barramento B
			
		elsif (ENABLE_OUT_A = '1' and ENABLE_OUT_B = '0') then
			SAIDA_A <= sigQ; --barramento A
			SAIDA_B <= "ZZZZZZZZZZZZZZZZ"; --barramento B
		elsif (ENABLE_OUT_A = '1' and ENABLE_OUT_B = '1') then
			SAIDA_A <= sigQ; --barramento A
			SAIDA_B <= sigQ; --barramento B
		end if;
	end process;
end algoritmica;