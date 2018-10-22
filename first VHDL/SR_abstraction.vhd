-- define entity latch
-- new model

entity s_r_Latch_model is
port(s,r: in bit;
	q, q_bar: out bit);
end s_r_Latch_model

Architecture SR_abstraction of s_r_Latch_model is
	begin
	-- rename q and q_bar as new wires internally
	q_wire <= q;
	q_bar_wire <= z;
	
	q <= s Nand q_wire;
	q_bar <= q_bar_wire;
end SR_abstraction


Entity MyNand is
port (a : in bit;
	b : in bit;
	c: in bit;
	d: in bit;
	e : out bit);
end entity MyNand

Architecture MyNandAbstraction of MyNand is
	declarations;
	begin
	e <= not(a and b and c and d);
end MyNandAbstraction

