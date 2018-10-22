	-- This is
-- case structures in vhdl, port mapping, signals...
entity my_device is
port(a,b,c: in bit;
	x,y: out bit);
end entity;

architecture bhvl of my_device is
signal mysig: bit_vector(2 downto 0);
begin

	mysig <= a&b&c;
	with a select
	y <= '0' when '0', 
		'1' when '1';
	with mysig select
	x <= '1' when "000";
	x <= '1' when "001";
	x <= '1' when "010";
	x <= '1' when "011";
	x <= '1' when "100";
	x <= '1' when "101";
	x <= '1' when "110";
	x <= '1' when "111";
	
end architecture;

architecture bhv2 of my_device is
signal mysig: bit_vector(2 downto 0);
begin

	mysig <= a&b&c;
	with a select
	y <= '0' when '0', 
		'1' when '1';
	process (mysig)
	begin 
		case mysig
			when "000"|"010"|"011" => x <= '1';
			when others => x<= '0';
		end case;
	end process
end architecture bhv2;