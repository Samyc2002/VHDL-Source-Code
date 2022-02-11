library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity HA is 
 port(A,B:in STD_LOGIC; Sum, Carry:out STD_LOGIC); 
end HA; 
 
architecture struct of HA is 
 component myXOR 
  port(in1,in2:in STD_LOGIC; out1:out STD_LOGIC); 
 end component; 
 begin 
  X1: myXOR port map(A,B,Sum); 
  Carry<=A and B; 
end struct;
 
entity Lab7 is 
 port(x,y,cin:in std_logic; s, cout:out std_logic); 
end Lab7; 
 
architecture struct of Lab7 is 
 signal s1,c1,c2 :std_logic; 
 component HA 
  port(A,B:in STD_LOGIC; sum, Carry:out STD_LOGIC); 
 end component; 
 begin 
  HA1: HA port map(x,y, s1,c1); 
  HA2: HA port map(s1,cin, s,c2); 
  cout<=c1 or c2; 
end struct;