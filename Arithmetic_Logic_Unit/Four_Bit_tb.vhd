--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:25 11/26/2020
-- Design Name:   
-- Module Name:   /home/ise/ISE/Arithmetic_Logic_Unit/OneStageALU_tb.vhd
-- Project Name:  Arithmetic_Logic_Unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OneStageALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY OneStageALU_tb IS
END OneStageALU_tb;
 
ARCHITECTURE behavior OF OneStageALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FOUR_BIT_ALU
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
	 A2 : IN  std_logic;
         A3 : IN  std_logic;
	 B0 : IN  std_logic;
         B1 : IN  std_logic;
	 B2 : IN  std_logic;
         B3 : IN  std_logic;
         Cin : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2_In : IN  std_logic;
         Cout : OUT  std_logic;
         G0 : OUT  std_logic;
	 G1 : OUT  std_logic;
	 G2 : OUT  std_logic;
	 G3 : OUT  std_logic
        );
    END COMPONENT;
 
 
   --Inputs
   signal Ci_In : std_logic := '0';
   signal A0 : std_logic := '0';
	signal A1 : std_logic := '0';
	signal A2 : std_logic := '0';
	signal A3 : std_logic := '0';
   signal B0 : std_logic := '0';
	signal B1 : std_logic := '0';
	signal B2 : std_logic := '0';
	signal B3 : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
 
 	--Outputs
   signal Cout : std_logic;
   signal G0 : std_logic;
signal G1 : std_logic;
signal G2 : std_logic;
signal G3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FOUR_BIT_ALU PORT MAP (
          Cin => Cin,
          A0 => A0,
			 A1 => A1,
			 A1 => A1,
			 A2 => A2,
			 A3 => A3,
          B0 => B0,
			 B1 => B1,
			 B2 => B2,
			 B3 => B3,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          Cout => Cout,
          G0 => G0,
			 G1 => G1,
			 G2 => G2,
			 G3 => G3
        );
 
 
   -- Stimulus process
   tb: process
   begin		
	


A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '0';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '0';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '0';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '0';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '1';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '1';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '1';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '0';
S0 <= '1';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '0';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '0';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '0';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '0';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '1';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '1';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '1';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '0';
Cin <= '1';
S0 <= '1';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '0';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '0';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '0';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '0';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '1';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '1';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '1';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '0';
S0 <= '1';
S1 <= '1';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '1';
S0 <= '0';
S1 <= '0';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '1';
S0 <= '0';
S1 <= '0';
S2 <= '1';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '1';
S0 <= '0';
S1 <= '1';
S2 <= '0';
wait for period;

A0 <= '0';
A1 <= '0';
A2 <= '0';
A3 <= '0';
B0 <= '0';
B1 <= '0';
B2 <= '0';
B3 <= '1';
Cin <= '1';
S0 <= '0';
S1 <= '1';
S2 <= '1';
wait for period;

end process tb;

end;