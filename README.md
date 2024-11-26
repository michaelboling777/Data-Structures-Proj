[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=7828245&assignment_repo_type=AssignmentRepo)
# Final Exam - Group Project

Your final "exam" is a group effort to develop a solution that simulates a bank line.

## Bank Simulation

An event-driven bank line simulation is presented to us in Chapter 13 of our textbook.

## Programming Problem 13.6

Implement the event-driven simulation of a bank that this chapter described. A queue of arrival events will represent the line of customers in the bank. Maintain the arrival events and departure events in a priority queue, sorted by the time of the event. Use a link-based implementation for the event list.

The input is a text file of arrival and transaction times. Each line of the file contains the arrival time and required transaction time for a customer. The arrival times are ordered by increasing time.

Your program must count customers and keep track of their cumulative waiting time. These statistics are sufficient to compute the average waiting time after the last event has been processed. Display a trace of the events executed and a summary of the computed statistics (the total number of arrivals and average time spent waiting in line). For example, the input file shown below should produce the output shown in the figure below it.

### Sample Input

```text
1     5
2     5
4     5
20    5
22    5
24    5
26    5
28    5
30    5
88    3
```

An example of how to open and read a text file is found in [Demo.cpp](src/Demo.cpp). When tackling this problem, invoke your simulation from the given [Main.cpp](src/Main.cpp). That is, given the grader will be running the `bankSimulation` target, your program should read event data from the `mainData.txt` file, to which the `bankSimulation` target has direct access (in the same way the `bankSimulationDemo` target has direct access to the `demoData.txt` file).

### Sample Output

In processing the above sample input, your simulation would generate the following output:

```text
Simulation Begins
Processing an arrival event at time:    1
Processing an arrival event at time:    2 
Processing an arrival event at time:    4
Processing a departure event at time:   6
Processing a departure event at time:  11
Processing a departure event at time:  16 
Processing an arrival event at time:   20
Processing an arrival event at time:   22
Processing an arrival event at time:   24
Processing a departure event at time:  25
Processing an arrival event at time:   26
Processing an arrival event at time:   28
Processing an arrival event at time:   30
Processing a departure event at time:  30
Processing a departure event at time:  35
Processing a departure event at time:  40
Processing a departure event at time:  45
Processing a departure event at time:  50
Processing an arrival event at time:   88
Processing a departure event at time:  91
Simulation Ends

Final Statistics:
   Total number of people processed: 10
   Average amount of time spent waiting: 5.6
```

Note how the data lines up (right alignment). This can be accomplished with the appropriate use of stream manipulators (examples of which are also shown in [Demo.cpp](src/Demo.cpp)).

## Grading Rubric

This assignment will be based, in part, upon the following grading rubric:

| Category            | Points (max) |
|---------------------|--------------|
| Pull Request        | 1            |
| Coding Style        | 1            |
| Program Design      | 1            |
| Program Correctness | 2            |
| Total               | 5            |

You are responsible for the design, declaration and implementation of any and all files/classes/functions needed to solve this problem. The easiest approach that will not require any modification to the [CMakeLists.txt](CMakeLists.txt) would be to declare/define any such classes/functions directly in the [csc232.h](include/csc232.h) file. However, if you'd rather focus on good programming practices by placing such code fragments in their own files, you may have to update the [CMakeLists.txt](CMakeLists.txt) accordingly so that the prescribed targets build correctly.

### Additional Requirements

As stated, this is a _group_ assignment. As such, this requires a _group_ effort. In addition to program correctness, the group's grade will also be based on the extent to which the group works as such.

Group collaboration will be assessed on two fronts:

1. **Contribution to source code**: `git blame` will be used to see who did what in this project. It is expected that each member of the group contribute roughly equal amounts to the final solution.
2. **Contribution to final presentation**: Each group will present their design and implementation to the class during our scheduled exam period. Each member of the group is expected to participate in some way, shape or form, in the final presentation to the class.

Remember: The grader will execute the `bankSimulationTest` target when grading assignment (possibly with different input data placed in the [testData.txt](resource/testData.txt)) so you must make sure the simulation runs in this target by reading that particular data file.

### Strategies for Group Collaboration

The book walks through a great deal of the design process for this simulation. In particular, a number of functions are outlined in pseudocode:

```text
simulate() : void
processArrival(arrivalEvent: Event, eventPriorityQueue: PriorityQueue, bankLine: Queue) : void
processDeparture(departureEvent: Event, eventPriorityQueue: PriorityQueue, bankLine: Queue) : void
```

NOTE: these are merely suggestions. Part of your grade is related to your own program design. The only real _hard_ requirement is that your simulation is run from a function with the following signature:

```c++
void Simulate(const std::string &fileName);
```

where `fileName` is the name of the simulation input data (e.g., in the Google test runner, this is `testData.txt`, the same file found in the [resource](resource) folder of this repository). Note too, this function name begins with an uppercase `S`; the test target will not compile if this is not the case. Further, for the test target to actually test your simulation, you must toggle the `SIMULATE_FUNCTION_IMPLEMENTED` definition from `FALSE` to `TRUE`.

The easiest way to split up this work without having to modify the `CMakeLists.txt` file would be to create separate header files that are included in the `csc232.h` file. For example, one strategy could do the following:

1. One member creates a new file named `loader.h` in the `include` folder that defines a function which loads the data from a given file into the appropriate structure for subsequent processing. Once this file is created, add a `#include "loader.h"` line to the `csc232.h` file.
2. Another member creates a new file named `processor.h` in the `include` folder that defines one or more functions for processing arrival and departure events. Once this file is created, add a similar `#include` line to the `csc232.h` file
3. The third member implements the `Simulate` function already included for you in `csc232.h`

Again, the above strategy is just a suggestion; one that doesn't require any changes to the definitions of the existing targets prescribed by the `CMakeLists.txt` file and guarantees a nice division of labor.

## Due Date

Our final exam period is scheduled for **Wednesday, May 18, 2022, from 11:00 am to 1:00 pm**. The group assignment must be submitted to Blackboard anytime _before_ 11:00 am, Wednesday, May 18, 2022.

### Late Penalties

Submissions that are submitted

* (0, 24] hours late can only earn a maximum of 80% of project grade
* (24, 48] hours late can only receive a maximum of 60% of project grade
* 48+ hours late will receive no credit.
