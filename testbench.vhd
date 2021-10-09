library ieee;
use ieee.std_logic_1164.all; -- standard signal package

entity logic_gate_tb is -- the entity block has no input or output signals 
-- going into or out of the testbench.
end logic_gate_tb; 
  
architecture behavior of logic_gate_tb is -- inside the architecture I tell VHDL which components I will be going to use 
  component logic_gate
    port ( A, B, C: in std_logic; -- both signals have to match for logic_gate and logic_gate_tb
          F: out std_logic);
  end component;
  
-- Inputs 
signal A: std_logic := '0'; -- default value
signal B: std_logic := '0'; -- default value
signal C: std_logic := '0'; -- default value

--Output 
signal F: std_logic;

begin
  uut: logic_gate port map (A=>A, B=>B, C=>C, F=>F); -- connecting the "wire" to the unique input or output
  stim_proc: process -- Stimulus process
  begin 
    wait for 100 ns -- reset state
    -- Stimuli:
    A <= '0'; B <= '0'; C <= '0'; wait for 20 ns;
    A <= '1'; B <= '0'; C <= '1'; wait for 20 ns;
   
    assert false report "Reached end of test";      
    wait; -- wait forever effectively 
  end process;
end behavior;
