entity multiplier is
port(A, B:in bit_vector(1 downto 0);
		c: out bit_vector(3 downto 0));
end entity mulitiplier;

architecture my_multiplier of mulitiplier is
begin 
end architecture my_mulitiplier;

entity nand_latch is
port (A, B: in bit;
	Q , Q_bar: out bit);
end entity nand_latch;
architecture latch of nand_latch is
begin

end architecture latch;