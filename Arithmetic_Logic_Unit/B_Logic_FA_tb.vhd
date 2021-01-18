--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:00 11/19/2020
-- Design Name:   
-- Module Name:   /home/ise/ISE/Arithmetic_Logic_Unit/B_Logic_FA_tb.vhd
-- Project Name:  Arithmetic_Logic_Unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Arithmetic_Circuit
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
 
ENTITY B_Logic_FA_tb IS
END B_Logic_FA_tb;
 
ARCHITECTURE behavior OF B_Logic_FA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Arithmetic_Circuit
    PORT(
         Cin_in : IN  std_logic;
         A_input : IN  std_logic;
         B_input_signal : IN  std_logic;
         S0_input : IN  std_logic;
         S1_input : IN  std_logic;
         Cout_out : OUT  std_logic;
         G_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Cin_in : std_logic := '0';
   signal A_input : std_logic := '0';
   signal B_input_signal : std_logic := '0';
   signal S0_input : std_logic := '0';
   signal S1_input : std_logic := '0';

 	--Outputs
   signal Cout_out : std_logic;
   signal G_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Arithmetic_Circuit PORT MAP (
          Cin_in => Cin_in,
          A_input => A_input,
          B_input_signal => B_input_signal,
          S0_input => S0_input,
          S1_input => S1_input,
          Cout_out => Cout_out,
          G_out => G_out
        );

   tb: process
	begin
		--Go through B input logic
		A_input <= '0';
		B_input <= '0';
		S0_input <= '0';
		S1_input <= '0';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '1';
		S1_input <= '0';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '0';
		S1_input <= '1';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '1';
		S1_input <= '1';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '0';
		S1_input <= '0';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '1';
		S1_input <= '0';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '0';
		S1_input <= '1';
		Cin_in <= '0';
		wait for period;
		
		A_input <= '0';
		B_input <= '0';
		S0_input <= '1';
		S1_input <= '1';
		Cin_in <= '0';
		wait for period;
END;
