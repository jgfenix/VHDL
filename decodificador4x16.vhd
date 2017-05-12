------- inicio do componente decodificador4x16 ----------
library ieee;
use ieee.std_logic_1164.all;

entity decodificador4x16 is
	port (ENABLE: in bit; ENTRADA: in bit_vector(3 downto 0); SAIDA: out bit_vector(15 downto 0));
end decodificador4x16;
------- fim do componente decodificador4x16 ----------


------- inicio da descricao algoritmica decodificador4x16 ----------
architecture algoritmica of decodificador4x16 is
begin
	process(ENABLE, ENTRADA)
	begin
		if ENABLE = '1' then

			if ENTRADA = "0000" -- 0
				then SAIDA <= "0000000000000001" ;
			elsif ENTRADA = "0001" --1
				then SAIDA <= "0000000000000010" ;
			elsif ENTRADA = "0010" --2
				then SAIDA <= "0000000000000100" ;
			elsif ENTRADA = "0011" --3
				then SAIDA <= "0000000000001000" ;
			elsif ENTRADA = "0100" --4
				then SAIDA <= "0000000000010000" ;
			elsif ENTRADA = "0101" --5
				then SAIDA <= "0000000000100000" ;
			elsif ENTRADA = "0110" --6
				then SAIDA <= "0000000001000000" ;
			elsif ENTRADA = "0111" --7
				then SAIDA <= "0000000010000000" ;
			elsif ENTRADA = "1000" --8
				then SAIDA <= "0000000100000000" ;
			elsif ENTRADA = "1001" --9
				then SAIDA <= "0000001000000000" ;
			elsif ENTRADA = "1010" --10
				then SAIDA <= "0000010000000000" ;
			elsif ENTRADA = "1011" --11
				then SAIDA <= "0000100000000000" ;
			elsif ENTRADA = "1100" --12
				then SAIDA <= "0001000000000000" ;
			elsif ENTRADA = "1101" --13
				then SAIDA <= "0010000000000000" ;
			elsif ENTRADA = "1110" --14
				then SAIDA <= "0100000000000000" ;
			elsif ENTRADA = "1111" --15
				then SAIDA <= "1000000000000000" ;
			end if;
		else
			SAIDA <= "0000000000000000";
		end if;
	end process;
end algoritmica;
------- fim da descricao algoritmica decodificador4x16 ----------

