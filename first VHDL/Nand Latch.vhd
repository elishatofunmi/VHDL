-- must compile with multi-level synthesis for 7000 enabled
Entity fig5_63 is
port (sbar, rbar: in bit;
		q : buffer bit);
end fig5_63;

Architecture behaviour of fig5_63 is
begin
	PROCESS(sbar, rbar)
	begin
		if sbar = '0' then q <= '1';
		elsif rbar = '0' then q <= '0';
		else
		q <= q;
		End if;
	end process;
end behaviour;
