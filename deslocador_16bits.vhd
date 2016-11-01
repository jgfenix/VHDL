-- Deslocador 16 bits por entrada
-- Joao Gabriel Bispo da Silva
-- 11/10/2016
library ieee;
use ieee.std_logic_1164.all;
--S1,S0: (00)não desloca; (01)desloca 1 bit à direita; (10)desloca 1 bit à esquerda;(11)=x
entity deslocador16bit is --descrição do hardware: entradas e saídas
	port(A: in std_logic_vector (15 downto 0); S1,S0: in bit; SAIDA:out std_logic_vector (15 downto 0));
end deslocador16bit;

architecture algoritmica of deslocador16bit is  --descrição lógica do hardware
begin
	process(A,S1,S0)
	begin
		if (S1='0') and (S0='0') 
			then --nao desloca			
				SAIDA <= A;

		elsif (S1='0') and (S0='1') 
			then --loop deslocando pra esquerda pra direita
			for i in 0 to 14 loop
				SAIDA(i) <= A(i+1);
			end loop;
			SAIDA(15) <= '0';

		elsif (S1='1') and (S0='0')
			then --loop deslocando da direita pra esquerda
			for i in 15 downto 1 loop
				SAIDA(i) <= A(i-1);
			end loop;
			SAIDA(0)<='0';

		elsif (S1='1') and (S0='1')
		then --loop deslocando pra esquerda pra direita
			SAIDA <= "XXXXXXXXXXXXXXXX";
		end if;
	end process;
end algoritmica ;