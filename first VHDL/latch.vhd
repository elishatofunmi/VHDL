library ieee;
use ieee.std_logic_1164.all;
--entity block

entity latch is
--interface signal declarations
	port(s,r: in std_logic;
	q, nq: out std_logic);
end latch;


--arhitecture block
Architecture flipflop of latch is
begin
--assignment statements

	q <= r nor nq;
	nq <= s nor q;
end flipflop;

