library ieee;
use ieee.std_logic_1164.all;

entity tb_logic_gate is
end tb_logic_gate;
  
architecture behavior of tb_logic_gate is 
  component logic_gate
    port ( A, B, C: in std_logic;
          F: out std_logic);
  end component;
  
-- Inputs 
signal A: std_logic := '0'; -- default value
signal B: std_logic := '0'; -- default value
signal C: std_logic := '0'; -- default value

--Output 
signal F: std_logic;

begin
  uut: logic_gate port map (A=>A, B=>B, C=>C, F=>F);
  stim_proc: process -- Stimulus process
  begin 
    wait for 100 ns -- reset state
    -- Stimuli:
    A <= '0'; B <= '0'; C <= '0'; wait for 20 ns;
    A <= '1'; B <= '0'; C <= '1'; wait for 20 ns;
    wait
  end process;
end;
