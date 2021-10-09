library ieee;
use ieee.std_logic_116.all; -- Though different standards are available, a common one is the IEEE std_logic_1164 that allows for the basic types we are using 

entity logic_gate is 
  port ( A, B, C: in std_logic;
        F: out std_logic);
end logic_gate;
  
architecture struct of logic_gate is 
  signal x,y: std_logic;
begin
  x <= C nor B;
  y <= A and not (B);
  F <= not (x xor y);
end struct;
