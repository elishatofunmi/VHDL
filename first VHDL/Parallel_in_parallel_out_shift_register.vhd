-- shift register 
-- parallel in parallel out

library ieee;
use ieee.std_logic_1164.all;

Entity parallel_in_out is
port (clk: in std_logic;
D: in std_logic_vector(4 downto 0);
q: out std_logic_vector(4 downto 0));
End parallel_in_out;

Architecture Pin_pout of parallel_in_out is
begin
process (clk)
begin 
if (clk = '1' and clk'Event) then
Q <= D;
end if;
end process;

end Pin_pout;
