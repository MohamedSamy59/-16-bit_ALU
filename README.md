# -16-bit_ALU
Description:
 The objective of this design problem is to create an Arithmetic Logic Unit (ALU) capable of performing various arithmetic and logical operations on two 16-bit inputs, based on a third input known as the "opcode." The ALU should produce a 32-bit output representing the result of the selected operation. An ALU is a fundamental digital circuit found in central processing units (CPUs) and microprocessors. Its primary function is to perform arithmetic (e.g., addition, subtraction) and logical (e.g., AND, OR, XOR) operations on binary data. In this design problem, we are tasked with developing a specific 16-bit ALU that supports a variety of operations, including addition, subtraction, bitwise AND, bitwise OR, bitwise XOR, and other logical operations based on the opcode provided.
 
 Submission:
 Submit the following items as part of your assignment: 
• The RTL code for the 16-bit ALU in Verilog. 
• The Verilog test bench code for the ALU, including multiple test cases. 
• Screenshots or logs of the simulation results showing the ALU's correct operation for all test cases.

 Inputs:
 • Two inputs (Inp1, Inp2) of 16-bit, these inputs hold the data on which the ALU will perform the designated operation. • Opcode (Operation Code) of 3-bit, the opcode input selects the operation that the ALU should perform on the two input operands. The opcode should be capable of representing different operations uniquely. 

Outputs: 
• The ALU should produce a 32-bit output (Result) that represents the result of the selected operation. The output width is determined by the maximum result size of the supported operations.
