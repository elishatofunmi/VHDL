-- serial in - parallel out shift registers

library ieee;
use ieee.std_logic_1164.all;


Entity si_po is
port (clk, clear: in std_logic;
input_data: in std_logic;
Q: out std_logic_vector(4 downto 0));
End si_po;

Architecture si_po_arch of si_po is
begin 
process (clk)
if clear = '1' then
Q <= "0000";
elsif (clk = '1' and clk'Event) then
q(3 downto 1) <= q(2 down to 0);
q(0) <= input_data;
end if;
end process;
end si_po_arch;