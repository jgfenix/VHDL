-- MBR DE 16b
library ieee;
use ieee.std_logic_1164.all;

entity RegistradorMBR is
	 port(	SAIDA_DE_DADOS: in std_logic_vector(15 downto 0); CONTROLE, RD, WR : in std_logic; 
		ENTRADA_DE_DADOS: out std_logic_vector(15 downto 0);--dados que vao para CPU
		BARRAMENTO_DE_DADOS: inout std_logic_vector(15 downto 0)); -- barramento bidirecional
end RegistradorMBR;

architecture algoritmica of RegistradorMBR is
	--signal sig_internalRST, sigENABLE_IN, sigCK: std_logic;
	signal DADO_ARMAZENADO, DADO_CPU: std_logic_vector(15 downto 0);
begin
	DADO_CPU <= SAIDA_DE_DADOS;
	process (SAIDA_DE_DADOS, CONTROLE, RD, WR, BARRAMENTO_DE_DADOS)
	begin	
		--DADO_ARMAZENADO <= "ZZZZZZZZZZZZZZZZ";--seguranca para caso comece enviando 'nada' para o barramento de dados
		if (RD = '1' and CONTROLE = '0' and WR = '0') then
			DADO_ARMAZENADO <= BARRAMENTO_DE_DADOS; --armazena do barramento
		--end if;
		
		elsif(RD = '0' and CONTROLE = '1' and WR = '0') then
			DADO_ARMAZENADO <= DADO_CPU; --dado vindo da CPU
			BARRAMENTO_DE_DADOS <= "ZZZZZZZZZZZZZZZZ";
		--end if;
		
		elsif (RD = '0' and CONTROLE = '0' and WR = '1') then--poe o dado no barramento
			BARRAMENTO_DE_DADOS <= DADO_ARMAZENADO ;
		--end if;
		
		--DUVIDA: NAO SEI PRECISAR SE ISTO REALMENTE ACONTECE
		--if (RD = '0' and CONTROLE = '0' and RD = '0') then
		--	ENTRADA_DE_DADOS <= DADO_ARMAZENADO ;--enviando o dado para a CPU
		--	BARRAMENTO_DE_DADOS <= "ZZZZZZZZZZZZZZZZ";
		end if;
	end process;
end algoritmica;