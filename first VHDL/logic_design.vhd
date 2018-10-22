entity logic_design is
port (a,b: in bit_vector(0 to 1))
	c: out bit_vector(0 to 3);
end logic_design;

Architecture design of logic_design is
begin
	c => a and b;
end design;

entity testbench is
component (a,b: in bit_vector(0 to 1)
	c: out bit_vector(0 to 3);
end testbench;

Architecture test of testbench is
process
	begin
		wait for 10ns;
		a => "00"; b => "00" wait for 10ns;
		a => "00"; b => "01" wait for 10ns;
		a => "00"; b => "10" wait for 10ns;
		a => "00"; b => "11" wait for 10ns;
		a => "01"; b => "00" wait for 10ns;
		a => "01"; b => "01" wait for 10ns;
		a => "01"; b => "10" wait for 10ns;
		a => "01"; b => "11" wait for 10ns;
		a => "10"; b => "00" wait for 10ns;
		a => "10"; b => "01" wait for 10ns;
		a => "10"; b => "10" wait for 10ns;
		a => "10"; b => "11" wait for 10ns;
		a => "11"; b => "00" wait for 10ns;
		a => "11"; b => "01" wait for 10ns;
		a => "11"; b => "10" wait for 10ns;
		a => "11"; b => "11" wait for 10ns;
		
end test;