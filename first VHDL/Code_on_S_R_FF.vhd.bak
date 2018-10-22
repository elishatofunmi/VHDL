library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.std_logic_arith.unsign.all;

Entity SR_FF is
port (s,r, clock: in std_logic;
		q, q_bar: out std_logic);
end SR_FF;

Architecture Behavioral of SR_FF is
begin
process(clock)
variable tmp: std_logic;
begin
if (clock = '1' and clock = 'EVENT') then
if (s = '0' and r = '0') then
	tmp: = tmp;
	elsif (s = '1' and r = '1') then
	tmp: = 'z';
	elsif (s = '0' and r = '1') then
	tmp: = '0';
	else
	tmp: = '1';
	end if;
	end if;
	q <= tmp;
	q_bar <= not(tmp);
	end process;
	
end Behavioral;

	