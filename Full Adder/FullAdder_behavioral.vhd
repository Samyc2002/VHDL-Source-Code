library ieee;
use ieee.std_logic_1164.all;

-- Defining entities
entity Lab7 is
	port (
		A, B, C: in std_logic;
		Sum, Carry: out std_logic
	);
end Lab7;

architecture behaviour of Lab7 is
	begin
		prs1: process(A, B, C)
		begin
			if A = '1' then
				Sum <= not (B xor C);
				Carry <= B or C;
			else
				Sum <=  B xor C;
				Carry <= B and C;
			end if;
		end process prs1;
	end behaviour;