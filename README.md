# VHDL Reset Race Condition Bug
This repository demonstrates a subtle race condition bug in VHDL code related to handling a reset signal within a clocked process.

## Bug Description
The provided VHDL code implements a simple register. However, due to improper handling of the reset signal, the reset may be missed if it asserts during a clock cycle. This results in unpredictable behavior. A proper reset should handle all possible situations such as the signal asserting mid-clock cycle.

## Bug Solution
The solution addresses the issue by using a separate process for handling the reset signal.

## How to Reproduce
1. Compile and simulate the provided `bug.vhdl` file.
2. Observe that the reset signal is not always effective when asserted in the middle of the clock cycle. 
3. Compile and simulate the `bugSolution.vhdl` file for the solution. 