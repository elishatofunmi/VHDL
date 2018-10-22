entity First_block is 
	port (A:in bit;
		B: in bit;
		C: in bit;
		D:out bit);
end First_block;

architecture First_archi of First_block is
	begin
	D <= A and B or C;
end architecture First_archi;