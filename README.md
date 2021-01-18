# Arithmetic Logic Unit
* Name: Benjamin Rockman
* Language: VHDL
* Completed: November 2020

## Description
This is an n-bit Arithmetic Logic unit built in Xilinx ISE using VHDL. This project was done using modular design principles, so every component of the ALU was written separately, and the final ALU design combined all the components into one. Below is a functions table, showing the input of the select lines and carry in, and the corresponding output operation. Inputs to the ALU are A and B, as well as the select lines and carry in. Outputs are G and the carry out.

## Navigation
You can use Xilinx ISE Project Navigator to open the project and view the schematics, test benches, and components code.

## .vhd files
This project was done using modular design principles, so each part of the ALU is broken into separate components, thus separate files. 

* HA_VHDL.vhd: VHDL code for a half adder
* fulladdervhdl.vhd: VHDL code for full adder, made of two half adders
* Logic_Circuit.vhd: VHDL code for the logic circuit
* MUX_VHDL.vhd: VHDL code for 4 to 1 MUX
* two_to_one_MUX.vhd: VHDL code for 2 to 1 MUX
* Arithmetic Circuit.vhd: VHDL code for the arithmetic circuit
* B_input.vhd: VHDL code for the B input logic component
* FA_Bin.vhd: VHDL code for the full adder and B logic circuit combined
* OneStageALU.vhd: VHDL code for a 1 bit ALU
* Four_Bit_ALU.vhd: VHDL code for a 4 bit ALU, made from four 1-bit ALUs


## Functions Table

| S2 	| S1 	| S0 	| Cin 	| Operation   	|
|----	|----	|----	|-----	|-------------	|
| 0  	| 0  	| 0  	| 0   	| G = A       	|
| 0  	| 0  	| 0  	| 1   	| G = A+1     	|
| 0  	| 0  	| 1  	| 0   	| G = A+B     	|
| 0  	| 0  	| 1  	| 1   	| G = A+B+1   	|
| 1  	| 1  	| 0  	| 0   	| G = A+B'    	|
| 0  	| 1  	| 0  	| 1   	| G = A+B'+1  	|
| 0  	| 1  	| 1  	| 0   	| G = A-1     	|
| 0  	| 1  	| 1  	| 1   	| G = A       	|
| 1  	| 0  	| 0  	| X   	| G = A AND B 	|
| 1  	| 0  	| 1  	| X   	| G = A OR B  	|
| 1  	| 1  	| 0  	| X   	| G = A XOR B 	|
| 1  	| 1  	| 1  	| X   	| G = A'      	|

