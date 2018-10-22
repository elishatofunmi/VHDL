-- serial data transfer
-- shift register
-- 4 jk filp flop

libarary ieee;
use ieee.std_logic_1164.all;
Entity Shift_register is generic(out_width: interger:= 4);
port (Data_in: in bit;
		out_1, out_2, out_3, out_4: out std_logic_vector(out_width down to 0));
End shift_register


Entity J_k_flip_flop_1 is
port (j1, K1: in bit;
		Q1, Q1_bar: out bit);
end J_k_flip_flop_1;

Architecture JK_FF_1 of J_k_flip_flop_1 is


Entity J_k_flip_flop_2 is
port (j2, K2: in bit;
		Q2, Q2_bar: out bit);
end J_k_flip_flop_1;

Entity J_k_flip_flop_3 is
port (j3, K3: in bit;
		Q3, Q3_bar: out bit);
end J_k_flip_flop_1;

Entity J_k_flip_flop_4 is
port (j4, K4: in bit;
		Q4, Q4_bar: out bit);
end J_k_flip_flop_1;


