-- vhdl d latch
-- use of std_logic

entity dlatch_vhdl is
port (enable, din: in bit;
	q: out bit);
end dlatch_vhdl;

Architecture v of dlatch_vhdl is
begin 
	process (enable, din)
	begin
		if enable = '1' then q <= din;
		end if;
	end process;
	
end v;

-- case structure
entity control_stats is
port (sel: in bit_vector(0 to 1); a,b,c,d: in bit;
	m: out bit);
end control_stats;

Architecture example of control_stats is
begin
	process (sel, a,b,c,d)
	begin
		case sel is	
			when b "00" => m <= c;
			when b"01" => m <= d;
			when b"10" => m <= a;
			when others => m <= b;
		end case;
	end process;
end example;

-- the use of functions and procedures
entity func is
port (a: in bit_vector(0 to 2);
	m: out bit_vector (0 to 2));
end func;

architecture example of func is
	function simple (w, x, y: bit) return bit is
	begin
	return (w and x) or y;
	end;
	
	begin
		process (a)
		begin
			m(0) <= simple(a(0), a(1),a(2));
			m(1) <= simple(a(0), a(1),a(2));
			m(2) <= simple(a(1), a(2), a(0));
		end process;
end example;

-- a procedure differs from a function in that there is no
-- return value, and the argments of the procedure have mode0
-- (in, out, inout)

entity proc is
port (a: in bit_vector (0 to 2);
	m: out bit_vector(0 to 2));
end proc;

architecture example of subprograms is
procedure simple (w,x,y: in bit; z: out bit) is
	begin
		z <= (w and x) or y;
	end;
	
begin
	process (a)
	begin
		simple(a(0),a(1), a(2), m(0));
		simple(a(2), a(0),a(1),m(1));
		simple(a(1), a(2), a(0), m(2));
	end process;
end example;


	