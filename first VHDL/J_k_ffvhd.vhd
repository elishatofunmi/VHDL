Entity flip_flop is
port (init, clk: in bit;
	q, q_bar: out bit);
end entity flip_flop;

Entity j_k_flip_flop is
port (j, k, clk: in bit;
	q, q_bar: out bit);
end entity j_k_flip_flop;

Architecture Jk_ff of j_k_flip_flop is
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
end architecture jk_ff;


	