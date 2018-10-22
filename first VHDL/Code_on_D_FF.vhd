--write a code on D filp flop
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity D_FF is
port (D, clock: in std_logic;
q, q_bar: out std_logic);
End D_FF;

Architecture D_flp of D_FF is
begin
Process
begin

if(clock = '1' and clock'Event) then
if (D = '1') then
q <= '1';
q_bar <= '0';
else
q <= '0';
q_bar <= not(q);
end if;
end if;
end process;
End D_flp;

--Entity Test is
--Port 