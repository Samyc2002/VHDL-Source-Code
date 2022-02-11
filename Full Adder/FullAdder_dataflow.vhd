library ieee;
use ieee.std_logic_1164.all;

-- Defining entities
entity Lab7 is
	port (
		A, B, C: in std_logic;
		Sum, Carry: out std_logic
	);
end Lab7;

architecture dataflow of Lab7 is
	begin 
		Sum <= A xor B xor C;
		Carry <= (A and B) or ((A xor B) and C);
end dataflow;