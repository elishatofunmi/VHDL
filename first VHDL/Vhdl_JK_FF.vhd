--j-k filp flop

library ieee;
use ieee.std_logic_1164.all;

Entity JK_FF is
port(clock: in std_logic;
		J, K: in std_logic;
		reset: in std_logic;
		Q, Qbar: out std_logic);
end JK_FF;

Architecture behv of JK_FF is
signal state, Not_Q: std_logic;
signal input: std_logic_vector(1 downto 0);

begin
input <= j & k;
Not_Q <=not(Q(Q and not(Q)));
p: process(clock, reset) is
begin

if (reset = '1')then
	state <= '0';
elsif (rising_edge(clock)) then

	--compare to the truth table
	case (input)is
	when "11" =>
	state <= Not_Q;
	when "10" =>
	state <= '1';
	when "01" =>
	state <= '0';
	when others =>
	null;
	end case;
end if;
end process;

--concurrent statements
Q <= sstate;
Qbar <= not state;

end behv