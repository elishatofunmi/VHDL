--must compile with multi-level synthesis for 7000 enabled

entity Nand_latch is
port (sbar, rbar: in bit;
	q , qbar: out bit);
end Nand_latch;

Architecture behaviour of Nand_latch is
begin
	process (sbar,rbar)
		begin
			if sbar = '0' Then q <= '1'; --set or illegal command
			Elsif rbar = '0' Then q <= '0';
			end if;
	end process;
end behaviour;

entity Nor_gate_latch is
port (set, reset: in bit;
	q, qbar: out bit);
end Nor_gate_latch;

Architecture nor_gate of Nor_gate_latch is
signal q <= '0'
begin
	process (set, reset)
	begin
		if set = '0' and reset = '0' then q <= q, qbar <= not(q);
		elsif set = '1' and reset  = '0' then q <= '1', qbar <= '0';
		elsif set = '0' and reset = '1' then q <= '0', qbar <= '1';
		else -- equvalent of pass in python?
end nor_gate;