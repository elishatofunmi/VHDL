library ieee;
use ieee.std_logic_1164.all;


Entity jk_flip_flop is
port (j, k, clk: in  bit;
		q, qbar: out bit);
end Entity;

Architecture jk of jk_flip_flop is
begin
signal Answer: bit: = '0';
process(clk)
	begin
	if (clk = '1' and clk 'Event') then
	if (j = '1' and k = '1') then
	q <= not(Answer);
	q_bar <= not(q);
	elsif (j = '0' and k = '0') then
	q <= Answer;
	elsif (j = '1' and k = '0') then
	q <= '1';
	else
	q <= Answer;
	end if;
	end if;
end process;
End Architecture;

Entity Testbench is
port (clock: in: bit;
		output: out: bit_vector(4 downto 0));
end Entity;

Architecture My_test of Testbench is
component jk_flip_flop is
port (j, k, clk: in : bit;
		q, qbar: out : bit);
end component;

signal sj, sk,sclk, sq, sqbar;
output <= "00000";
map1: Entity jk_flip_flop.work(jk) port map(sj <= '1', sk <= '1',clk <= clock,sq <= output(0), sqbar <= not(output(0)));
map2: Entity jk_flip_flop.work(jk) port map(sj <= '1',sk <= '1', clk <= output(0), sq <= output(1), sqbar <= not(output(1)));
map3: Entity jk_flip_flop.work(jk) port map(sj <= '1', sk <= '1', clk <= output(1), sq <= output(2), sqbar <= not(output(2)));
map4: Entity jk_flip_flop.work(jk) port map(sj <= '1', sk <= '1', clk <= output(2), sq <= output(3), sqbar <= not(output(3)));
map5: Entity jk_flip_flop.work(jk) port map(sj <= '1', sk <= '1', clk <= output(3), sq <= output(4), sqbar <= not(output(4)));


begin
	process (clk)
	begin
	wait for 2 ns;
	clk = '1';
	wait for 2 ns;
	
End Architecture;