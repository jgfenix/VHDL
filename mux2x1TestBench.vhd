------- inicio da descricao comportamental mux 2x1 ----------
library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testemux2x1 of testbench is
	component mux2x1 --importando o mux2x1 da biblioteca interna
port (A: in bit; B: in bit; C: in bit; S: out bit); --precisa ser na ordem das portas
end component;
signal sigA, sigB, sigC, sigS: bit; --conexoes para conectar nas portas do mux
begin
	P: mux2x1 port map (sigA, sigB, sigC, sigS); --cria uma instancia de mux2x1 e conecta
	sigA <= '0', '1' after 2 ns, '0' after 10 ns; --10ns apos o inicio da simulacao, nao apos 2ns
	sigB <= '0', '1' after 5 ns, '0' after 12 ns ;
	sigC <= '0', '1' after 9 ns, '0' after 11 ns ;
end testemux2x1;
------ fim testbench do mux 2x1 ----------
