# Logic Gates Project

### Notes:
If you use MinGW 32 bit (like I did), you would also need to use GTKWave 32 bit and GHDL 32 bit for the code to work on Windows.

### About:

For this project, I created a logic circuit and used VHDL code to implement the following circuit whose output is *F*.  

![Screen Shot 2021-10-09 at 5 23 23 PM](https://user-images.githubusercontent.com/89553126/136675114-1612804d-e56d-4b84-a379-2f0ba80d7eb1.png)

### Notes:

The circuit diagram was made in Simulink and the following simulation is provided in the files.

### Results:

In VHDL, *A*, *B*, and *C* are the inputs (**IN**), *F* is an output (**OUT**), and *x* and *y* are internal signals (**signal**) of my project.

**I/O's are specified here (the circuit is specified using a Hardware Description Language)**

![1](https://user-images.githubusercontent.com/89553126/136717067-f39b3dd2-5d78-4117-972e-d609f563d255.PNG)

**Internal description of the logic circuit is specified here**

![Screen Shot 2021-10-09 at 6 08 20 PM](https://user-images.githubusercontent.com/89553126/136675895-71543808-930c-4de5-af4d-97bd8f279e69.png)

Afterwards, I worked on the behavioral (functional) simulation. Here, I will only verify the logical operation of the circuit. Stimuli is provided to the logic circuit, so I can verify the outputs behave as I expect. The VHDL file called '*testbench*' is where I specified the stimuli to the logic circuit 

![1](https://user-images.githubusercontent.com/89553126/136717228-938fd731-41b7-4604-9a3d-55f34b71d4d7.PNG)

The entity block has no input or output singals going into or out of the '*testbench*', which makes sense since '*testbench*' is a complete unit. The '*testbench*' will go ahead and send the signals to the logic circuit in which it will read back those signals. Afterwards, I could check out whether these signals are correct. Therefore, I don't need anything going into or out of the testbench. Additionally, a process was created so that I could deliver signals sequentially and not concurrenlty.

Finally, I verified the unit outputted by using a waveform viewer. 

**Test where the variables started at 0**
![1](https://user-images.githubusercontent.com/89553126/136717353-3d1bf589-64d1-42f2-bb20-200de9efb4bf.PNG)

**Test where the variables started at a=1 and c=1**
![2](https://user-images.githubusercontent.com/89553126/136717355-7d821521-c8d4-4cd6-a93d-722b928b9d3e.PNG)

**I also verified logic was correct with Simulink**

![Screen Shot 2021-10-09 at 5 23 07 PM](https://user-images.githubusercontent.com/89553126/136717443-d619f866-dc08-473e-ab0a-d1346c685c07.png)

Therefore, I know that my logic gate code is logically correct.
