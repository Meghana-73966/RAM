# RAM. v
RAM Design Using Verilog

 Project Description

This project implements a simple Random Access Memory (RAM) using Verilog HDL.

RAM is a memory device used to store and retrieve data. In this project, the RAM has 8 memory locations, and each location can store 8-bit data.

 Specifications

- Memory size: 8 × 8
- Address width: 3 bits
- Data width: 8 bits
- Read operation: Synchronous
- Write operation: Synchronous
- HDL: Verilog

Inputs

- "clk" – Clock signal
- "we" – Write enable
- "addr" – Memory address
- "din" – Data input
 Output

- "dout" – Data output

 Working

When "we = 1", the input data is written into the selected memory address at the rising edge of the clock.

When "we = 0", the data stored at the selected address is read and provided at the output.

Files

- "ram.v" – RAM Verilog design
- "ram_tb.v" – Testbench for simulation
- "simulation/waveform.png" – Simulation waveform

 Simulation

The testbench performs:

1. Write "10101010" to address "000"
2. Write "11001100" to address "001"
3. Read data from address "000"
4. Read data from address "001"

The simulation waveform verifies the RAM read and write operations.

Applications

- Computer memory
- Microprocessors
- FPGA-based systems
- Digital systems
- Embedded systems

 Conclusion

The RAM was successfully designed and simulated using Verilog HDL. The simulation confirms that data can be correctly written to and read from different memory locations.
 Author 
meghana 
