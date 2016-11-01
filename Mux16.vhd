-- MUX2x1 16 bits por entrada:
-- Joao Gabriel Bispo da Silva
-- 05/12/2016
library ieee;
use ieee.std_logic_1164.all;

entity MUX16 is --descrição do hardware: entradas e saídas
	port(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15,
			B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15, C: in bit;
			O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15: out bit); 
end MUX16;

architecture algoritmica of MUX16 is  --descrição lógica do hardware
begin
	process(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15,
		   B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,C ) --portas que ativam e desativam o hardware(sem ';')
	begin
		if C = '0' then
			O0  <= A0;  O1 <= A1;   O2 <= A2;   O3 <= A3;
			O4  <= A4;  O5 <= A5;   O6 <= A6;   O7 <= A7;
			O8  <= A8;  O9 <= A9;   O10 <= A10; O11 <= A11;
			O12 <= A12; O13 <= A13; O14 <= A14; O15 <= A15; 
		else 
			O0  <= B0;  O1 <= B1;   O2 <= B2;   O3 <= B3;
			O4  <= B4;  O5 <= B5;   O6 <= B6;   O7 <= B7;
			O8  <= B8;  O9 <= B9;   O10 <= B10; O11 <= B11;
			O12 <= B12; O13 <= B13; O14 <= B14; O15 <= B15; 
		end if;
	end process;
end algoritmica ;

architecture fluxo_de_dados of MUX16 is
begin
	O0 <= (B0 and C)   or (A0 and (not(C)));
	O1 <= (B1 and C)   or (A1 and (not(C)));
	O2 <= (B2 and C)   or (A2 and (not(C)));
	O3 <= (B3 and C)   or (A3 and (not(C)));
	O4 <= (B4 and C)   or (A4 and (not(C)));
	O5 <= (B5 and C)   or (A5 and (not(C)));
	O6 <= (B6 and C)   or (A6 and (not(C)));
	O7 <= (B7 and C)   or (A7 and (not(C)));
	O8 <= (B8 and C)   or (A8 and (not(C)));
	O9 <= (B9 and C)   or (A9 and (not(C)));
	O10 <= (B10 and C) or (A10 and (not(C)));
	O11 <= (B11 and C) or (A11 and (not(C)));
	O12 <= (B12 and C) or (A12 and (not(C)));
	O13 <= (B13 and C) or (A13 and (not(C)));
	O14 <= (B14 and C) or (A14 and (not(C)));
	O15 <= (B15 and C) or (A15 and (not(C)));
end fluxo_de_dados;

architecture estrutural of MUX16 is
	component and2
		port(E1, E2: in bit; S:out bit);
	end component;

	component or2
		port(E1, E2: in bit; S: out bit);
	end component;

	component inv
		port(E: in bit; S: out bit);
	end component;

	signal S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19, S20, S21, S22, S23, S24, S25, S26, S27, S28, S29, S30, S31, S32, S33, S34, S35, S36, S37, S38, S39, S40, S41, S42, S43, S44, S45, S46, S47, S48, S49: bit;

begin
	-- 0
	P1: and2 port map(B0,C,S1);
	P2: inv port map (C, S2);
	P3: and2 port map(S2, A0, S3);
	P4: or2 port map(S1, S3, O0);
	-- 1	
	P5: and2 port map(B1,C,S4);
	P6: inv port map (C, S5);
	P7: and2 port map(S5, A1, S6);
	P8: or2 port map(S4, S6, O1);
	-- 2
	P9: and2 port map(B2,C,S7);
	P10: inv port map (C, S8);
	P11: and2 port map(S8, A2, S9);
	P12: or2 port map(S7, S9, O2);
	-- 3
	P13: and2 port map(B3,C,S10);
	P14: inv port map (C, S11);
	P15: and2 port map(S11, A3, S12);
	P16: or2 port map(S10, S12, O3);
	-- 4
	P17: and2 port map(B4,C,S13);
	P18: inv port map (C, S14);
	P19: and2 port map(S14, A4, S15);
	P20: or2 port map(S13, S15, O4);
	-- 5
	P21: and2 port map(B5,C,S16);
	P22: inv port map (C, S17);
	P23: and2 port map(S17, A5, S18);
	P24: or2 port map(S16, S18, O5);
	-- 6
	P25: and2 port map(B6,C,S19);
	P26: inv port map (C, S20);
	P27: and2 port map(S20, A6, S21);
	P28: or2 port map(S19, S21, O6);
	-- 7
	P29: and2 port map(B7,C,S22);
	P30: inv port map (C, S23);
	P31: and2 port map(S23, A7, S24);
	P32: or2 port map(S22, S24, O7);
	-- 8
	P33: and2 port map(B8,C,S25);
	P34: inv port map (C, S26);
	P35: and2 port map(S26, A8, S27);
	P36: or2 port map(S25, S27, O8);
	-- 9	
	P37: and2 port map(B9,C,S28);
	P38: inv port map (C, S29);
	P39: and2 port map(S29, A9, S30);
	P40: or2 port map(S28, S30, O9);
	-- 10
	P41: and2 port map(B10,C,S31);
	P42: inv port map (C, S32);
	P43: and2 port map(S32, A10, S33);
	P44: or2 port map(S31, S33, O10);
	-- 11
	P45: and2 port map(B11,C,S34);
	P46: inv port map (C, S35);
	P47: and2 port map(S35, A11, S36);
	P48: or2 port map(S34, S36, O11);
	-- 12
	P49: and2 port map(B12,C,S37);
	P50: inv port map (C, S38);
	P51: and2 port map(S38, A12, S39);
	P52: or2 port map(S37, S39, O12);
	-- 13
	P53: and2 port map(B13,C,S40);
	P54: inv port map (C, S41);
	P55: and2 port map(S41, A13, S42);
	P56: or2 port map(S40, S42, O13);
	-- 14
	P57: and2 port map(B14,C,S43);
	P58: inv port map (C, S44);
	P59: and2 port map(S44, A14, S45);
	P60: or2 port map(S43, S45, O14);
	-- 15
	P61: and2 port map(B15,C,S46);
	P62: inv port map (C, S47);
	P63: and2 port map(S47, A15, S48);
	P64: or2 port map(S46, S48, O15);

end estrutural;