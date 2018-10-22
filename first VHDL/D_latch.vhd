--D latch
entity dlatch_vhdl is
port (enable , din: in bit;
		q : out bit);
end dlatch_vhdl;

Architecture v of dlatch_vhdl is
begin 
	process (enable, din)
	begin
	if enable = '1' then 
	q <= din;
	end if;
	end process;
end v;
