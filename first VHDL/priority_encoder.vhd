Entity priority_encoder is
port (i: in std_logic_vector(7 downto 0)
	y: out std_logic_vector(2 downto 0));
end priority_encoder;

Architecture check_prior of priority_encoder is
begin 
	process (i)
	if i <= "10000000" then y <= "000";
	elsif i <= "-1000000" then y <= "001";
	elsif i <= "--000000" then y <= "010";
	elsif i <= "---00000" then y <= "011";
	elsif i <= "----0000" then y <= "100";
	elsif i <= "-----000" then y <= "101";
	elsif i <= "------00" then y <= "110";
	else i <= "-------0" then y <= "111";
	end process;
end check_prior;



Entity test is
component priority_encoder is 
port (i: in std_logic_vector(7 downto 0)
	y: out std_logic_vector(2 downto 0));
end component;

Architecture testbench of test is

end testbench;
