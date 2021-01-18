--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:57:49 11/19/2020
-- Design Name:   
-- Module Name:   /home/ise/ISE/Arithmetic_Logic_Unit/B_Logic_tb.vhd
-- Project Name:  Arithmetic_Logic_Unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: B_input
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
 
ENTITY B_Logic_tb IS
END B_Logic_tb;
 
ARCHITECTURE behavior OF B_Logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT B_input
    PORT(
         B_in : IN  std_logic;
         S0_in : IN  std_logic;
         S1_in : IN  std_logic;
         Y_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal B_in : std_logic;
   signal S0_in : std_logic;
   signal S1_in : std_logic;

 	--Outputs
   signal Y_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: B_input PORT MAP (
          B_in => B_in,
          S0_in => S0_in,
          S1_in => S1_in,
          Y_out => Y_out
        );

   -- Clock process definitions
   tb : process
	   constant period : time := 100 ns;

	begin
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '0';
		wait for period;
		
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '1';
		wait for period;
		
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '0';
		wait for period;
		
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '1';
		wait for period;
		--B = 1
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '0';
		wait for period;
		
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '1';
		wait for period;
		
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '0';
		wait for period;
		
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '1';
		wait for period;
		
		wait;
	end process tb;
END;
