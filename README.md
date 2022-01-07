# Logic Gates Project

### About:

For this project, I created a logic circuit and used VHDL code to implement the following circuit whose output is *F*.  

**Digital Design Simulation**

![Screen Shot 2021-10-09 at 5 23 23 PM](https://user-images.githubusercontent.com/89553126/136675114-1612804d-e56d-4b84-a379-2f0ba80d7eb1.png)

### Notes:

If you use MinGW 32 bit (like I did), you would also need to use GTKWave 32 bit and GHDL 32 bit for the code to work properly on Windows.

The circuit diagram was made in Simulink and the following simulation is provided in the files.

### Results:

In VHDL, *A*, *B*, and *C* are the inputs (**IN**), *F* is an output (**OUT**), and *x* and *y* are internal signals (**signal**) of my project.

**I/O's are specified here (the circuit is specified using a Hardware Description Language)**

```VHDL
library ieee;
use ieee.std_logic_1164.all; -- Though different standards are available, 
-- a common one is the IEEE std_logic_1164 that allows for the basic types we are using 

entity logic_gate is -- Provides a method to abstract the functionality of the circuit description to a higher level  
  port ( A, B, C: in std_logic; -- is an identifier used to differentiate the various signals.
        F: out std_logic);
end logic_gate;
```

**Internal description of the logic circuit is specified here**

```VHDL
architecture struct of logic_gate is -- The stuff that is inside the entity 
  signal x,y: std_logic;
begin
  x <= C nor B; -- establishing the boolean in the circuit
  y <= A and not (B);
  F <= not (x xor y);
end struct;
```

Afterwards, I worked on the behavioral (functional) simulation. Here, I will only verify the logical operation of the circuit. Stimuli is provided to the logic circuit, so I can verify the outputs behave as I expect. The VHDL file called '*logic_gate_tb*' is where I specified the stimuli to the logic circuit. 

```VHDL
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
    wait for 100 ns; -- reset state
    -- Stimuli:
    A <= '0'; B <= '0'; C <= '0'; wait for 20 ns;
    A <= '1'; B <= '0'; C <= '1'; wait for 20 ns;
   
    assert false report "Reached end of test";      
    wait; -- wait forever effectively 
  end process;
end behavior;
```

The entity block has no input or output singals going into or out of the '*testbench*', which makes sense since '*testbench*' is a complete unit. The '*testbench*' will go ahead and send the signals to the logic circuit in which it will read back those signals. Afterwards, I could check out whether these signals are correct. Therefore, I don't need anything going into or out of the testbench. Additionally, the process statement is a concurrent statement which is constituted of sequential statements exclusively.

Finally, I verified the unit outputted by using a waveform viewer. 

**Test where the variables started at 0**
![1](https://user-images.githubusercontent.com/89553126/136717353-3d1bf589-64d1-42f2-bb20-200de9efb4bf.PNG)

**Test where the variables started at *A* = 1 and *C* = 1**
![2](https://user-images.githubusercontent.com/89553126/136717355-7d821521-c8d4-4cd6-a93d-722b928b9d3e.PNG)

I also verified that the logic was correct with the digital design simulation.

![Screen Shot 2021-10-09 at 5 23 07 PM](https://user-images.githubusercontent.com/89553126/136717443-d619f866-dc08-473e-ab0a-d1346c685c07.png)

I should be expecting an output of 0 for these two conditions therefore, I know my logic gate code is logically correct.
