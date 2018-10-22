library ieee;
use ieee.std_logic_1164.all;

entity jk_FF is
port (j,k,clk : in bit;
		q, qbar : in bit);
End entity;


Architecture jk of jk_FF is
begin
variables tm: bit:= '1';
	process (clk)
		begin
		if (clk = '1', clk'Event) then
		if (j = '1' and k = '1') then
		tm: q <= not(tm);
		elsif (j = '0' and k = '1') then
		tm: q <= '0';
		elsif (j = '1' and k = '0') then
		tm: q <= '1';
		else
		tm: q <= tm;
		end if;
		end if;
	end process;
End Architecture;


entity Testbench is
end entity;

Architecture Test of Testbench is
end architecture;