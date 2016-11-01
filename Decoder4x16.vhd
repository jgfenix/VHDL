-- DESCRIÇÃO DE DECODIFICADOR 4x16
entity Decoder4x16 is --descrição do hardware: entradas e saídas
	port(A, B, C, D: in bit; S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15: out bit); 
end Decoder4x16;

architecture algoritmica of Decoder4x16 is  --descrição lógica do hardware
begin
	process(A, B, C, D) --portas que ativam e desativam o hardware(sem ?;?)
	begin
		S0  <=  ( (not(A) and not(B)) and (not(C) and not(D)) );		
		S1  <=  ( (not(A) and not(B)) and (not(C) and D) );
		S2  <=  ( (not(A) and not(B)) and (C and not(D)) );
		S3  <=  ( (not(A) and not(B)) and (C and D) );
		S4  <=  ( (not(A) and B) 	  and (not(C) and not(D)) );
		S5  <=  ( (not(A) and B) 	  and (not(C) and D) );
		S6  <=  ( (not(A) and B) 	  and (C and not(D)) );
		S7  <=  ( (not(A) and B) 	  and (C and D) );
		S8  <=  (( A and not(B)) 	  and (not(C) and not(D)) );
		S9  <=  (( A and not(B)) 	  and (not(C) and D) );
		S10 <=  (( A and not(B)) 	  and (C and not(D)) );
		S11 <=  (( A and not(B)) 	  and (C and D) );
		S12 <=  (( A and B) 	 	  and (not(C) and not(D)) );
		S13 <=  (( A and B) 	 	  and (not(C) and D) );
		S14 <=  (( A and B) 	 	  and (C and not(D)) );
		S15 <=  (( A and B)			  and (C and D) );
	end process;
end algoritmica ;
