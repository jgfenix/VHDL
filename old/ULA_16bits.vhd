-- ULA 16 bits por entrada
-- Joao Gabriel Bispo da Silva
-- 11/10/2016
library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ULA_16bits is
	port(A,B: in std_logic_vector (15 downto 0); S1,S0: in bit; SAIDA: out std_logic_vector (15 downto 0); N,Z: out std_logic);
end ULA_16bits;

-- S1,S0: 00(A+B),01(A and B),10(A),11(A barrado)
-- N significa o sinal do resultado, negativo ou positivo, que é o bit mais significativo.
-- Z é a flag de zero: se o resultado for zero, Z=1, caso contrário, Z=0
architecture algoritmica of ULA_16bits is
begin
	process(A,B,S1,S0)
	variable SAIDA_TMP : std_logic_vector(15 downto 0);
	begin		
		if (S1='0') and (S0='0') then -- A+B(soma)
			SAIDA_TMP := std_logic_vector(unsigned(A) + unsigned(B));			
		elsif (S1='0') and (S0='1') then  -- A and B
			SAIDA_TMP := A and B;
			--Z <= SAIDA(15)
		elsif (S1='1') and (S0='0') then  -- A
			SAIDA_TMP := A;
			--Z <= SAIDA(15)
		elsif (S1='1') and (S0='1') then  -- A barrado
			SAIDA_TMP := not A;
		end if;
		SAIDA <= SAIDA_TMP;

		N <= SAIDA_TMP(15);
		if (SAIDA_TMP = "0000000000000000") then
			Z <= '1';
		else Z <= '0';
		end if;
	end process;
end algoritmica ;