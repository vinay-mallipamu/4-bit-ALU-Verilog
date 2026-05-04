# 4-bit Arithmetic Logic Unit (ALU) – Verilog HDL

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs both arithmetic and logical operations based on control inputs.

## Features

* 4-bit input operands A and B
* Arithmetic operations:

  * Addition (A + B)
  * Subtraction (A - B using 2's complement)
* Logical operations:

  * AND
  * OR
* Carry/Borrow output

## Operation Table

| Sel | Operation |
| --- | --------- |
| 00  | ADD       |
| 01  | SUB       |
| 10  | AND       |
| 11  | OR        |

## Design Details

* Implemented using combinational logic with an `always @(*)` block

* Subtraction is implemented using:

  A - B = A + (~B + 1)

* A `case` statement is used to select operations (acts as a multiplexer)

## Simulation

* Testbench written in Verilog
* Simulated using ModelSim
* Outputs verified using waveform analysis

## Files

* `ALU_4bit.v` : ALU design module
* `ALU_tb.v`   : Testbench

## Future Improvements

* Extend to 8-bit ALU
* Add more operations such as XOR and NOT
* Add Zero and Overflow flags
* Implement on FPGA

## Author

Vinay Mallipamu
