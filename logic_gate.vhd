library ieee;
use ieee.std_logic_116.all;

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
