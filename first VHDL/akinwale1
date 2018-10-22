Entity multiplier is
port(A,B : in bit_vector(1 downto 0);
		C: out bit_vector(3 downto 0));
end Entity multiplier;

Architecture my_multiplier of multiplier is
begin
end Architecture my_multiplier;

Entity nand_latch is
port(A, B : in bit;
	 Q, Q_bar : out bit);
end entity nand_latch;
Architecture latch of nand_latch is
signal sq, sq_bar : bit;
begin
	Q <= sq;
	sq <= A nand sQ_bar;
	sQ_bar <= B nand sQ;
	Q_bar <= sq_bar;
end architecture latch;



entity nand_latch_with_pd is
port(A, B : in bit;
	 Q, Q_bar : out bit);
end entity nand_latch_with_pd;
architecture latch of nand_latch_with_pd is
signal sq, sq_bar : bit;
begin
	--process
	--begin
		sq <= A nand sQ_bar;
		sQ_bar <= B nand sQ;
		Q <= sq after 10 ns;
		Q_bar <= sq_bar after 11 ns;
	--end process;
end architecture latch;



entity testbench is
end entity testbench;

architecture test_nand_latch of testbench is
component nand_latch_with_pd is
port(A, B : in bit;
	 Q, Q_bar : out bit);
end component nand_latch_with_pd;
signal sA, sB, sQ, sQ_bar : bit := '0';
begin
	map1: nand_latch_with_pd port map(sA, sB, sQ, sQ_bar);
	p1: process
	begin
		wait for 10 ns;
		sA <= '1'; sB <= '0'; wait for 10 ns;
		sA <= '1'; sB <= '1'; wait for 10 ns;
		sA <= '0'; sB <= '1'; wait for 10 ns;
		sA <= '1'; sB <= '1'; wait for 25 ns;
	end process;
end architecture test_nand_latch;