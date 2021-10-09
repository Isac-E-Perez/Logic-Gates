# Logic Gates Project

### About:

For this project, I created a logic circuit and used VHDL code to implement the following circuit whose output is *F*.  

![Screen Shot 2021-10-09 at 5 23 23 PM](https://user-images.githubusercontent.com/89553126/136675114-1612804d-e56d-4b84-a379-2f0ba80d7eb1.png)

### Notes:

The circuit diagram was made in Simulink and the following simulation is provided in the files.

### Results:

In VHDL, *A*, *B*, and *C* are the inputs (**IN**), *F* is an output (**OUT**), and *x* and *y* are internal signals (**signal**) of my project.

**I/O's are specified here (the circuit is specified using a Hardware Description Language)**

![Screen Shot 2021-10-09 at 6 08 05 PM](https://user-images.githubusercontent.com/89553126/136675890-fe55b54a-6bb7-4d94-8720-ff9d8da27a6f.png)

**Internal description of the logic circuit is specified here**

![Screen Shot 2021-10-09 at 6 08 20 PM](https://user-images.githubusercontent.com/89553126/136675895-71543808-930c-4de5-af4d-97bd8f279e69.png)

Afterwards, I worked on the behavioral (functional) simulation. Here, I will only verify the logical operation of the circuit. Stimuli is provided to the logic circuit, so I can verify the outputs behave as I expect. The VHDL file called '*testbench*' is where I specified the stimuli to the logic circuit 

![Screen Shot 2021-10-09 at 6 54 14 PM](https://user-images.githubusercontent.com/89553126/136676633-999f5733-002c-4930-a12b-9dde6eb0dbd1.png)

The entity block has no input or output singals going into or out of the '*testbench*' which makes sense is a complete unit. It will go ahead and send signals to a half adder and then it's going to read back those signals. Afterwards, we could check out whether these signals are correct. Therefore, I don't need anything going into or out of the testbench. Additionally, a process was created so that I could deliver signals sequentially and not concurrenlty.
 
