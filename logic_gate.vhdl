library ieee;
use ieee.std_logic_1164.all; -- Though different standards are available, 
-- a common one is the IEEE std_logic_1164 that allows for the basic types we are using 

entity logic_gate is -- Provides a method to abstract the functionality of the circuit description to a higher level  
  port ( A, B, C: in std_logic; -- is an identifier used to differentiate the various signals.
        F: out std_logic);
end logic_gate;
  
architecture struct of logic_gate is -- The stuff that is inside the entity 
  signal x,y: std_logic;
begin
  x <= C nor B; -- establishing the boolean in the circuit
  y <= A and not (B);
  F <= not (x xor y);
end struct;
