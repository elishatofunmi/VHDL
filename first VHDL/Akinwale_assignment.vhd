entity j_k_filpflop is
port (j,k,clk :in  bit;
		q, qbar : out bit);
End entity j_k_filpflop;

Architecture JK_ff of j_k_filpflop is
begin
variable tm: 0
process (clk)
	begin 
	if clk = '1' and clk 'Event:
		`if j = '1' and k = '1':
			q <= not(tm)
			qbar <= not(q)
		elsif j = '0' and k = '1':
			q <= '0';
		qbar <= '1';
		elsif j = '1' and k = '0':
			q <= '1';
			qbar  <= '0';
		
		else: 
			q <= tm:
			qbar <= not(tm);
		end if;
	end if;
	end process
end architecture

entity testBench is
component  j_k_filpflop is
port (j,k,clk :in  bit;
		q, qbar : out bit);
end component

architecture test of testbench is

signal Ja, Kb, A, A_bar : bit := '0';
signal Jb, Kb, B, B_bar : bit := '0';
signal Jc, Kc, C, C_bar : bit := '0';
signal var_out: bit_vector(2 downto 0);
var_out <= A&B&C;
begin
	signal var_1 <= C_bar and B_bar;
	signal var_2 <=  A and C;
	signal var3 <= A and B_bar;
	map1: entity j_k_filpflop.work(JK_ff) port map(Ja = '1', Ka = var_1, A, A_bar);
	map2: entity j_k_filpflop.work(JK_ff) port map(Jb = var_2, Kb = 1, B, B_bar);
	map3: entity j_k_filpflop.work(JK_ff) port map(Jc = not(A), Kc = var3, C, C_bar);
	p1: process
	begin
		wait for 10 ns;
		Ja <= '0'; Jb <= '0'; Jc <= '0' wait for 10 ns;
		Ja <= '0'; Jb <= '0'; Jc <= '1' wait for 10 ns;
		Ja <= '0'; Jb <= '1'; Jc <= '0' wait for 10 ns;
		Ja <= '0'; Jb <= '1'; Jc <= '1' wait for 10 ns;
		Ja <= '1'; Jb <= '0'; Jc <= '0' wait for 10 ns;
		Ja <= '1'; Jb <= '0'; Jc <= '1' wait for 10 ns;
		Ja <= '1'; Jb <= '1'; Jc <= '0' wait for 10 ns;
		Ja <= '1'; Jb <= '1'; Jc <= '1' wait for 10 ns;
	end process;

end architecture