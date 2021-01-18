--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:10:20 11/19/2020
-- Design Name:   
-- Module Name:   /home/ise/ISE/Arithmetic_Logic_Unit/FA_tb.vhd
-- Project Name:  Arithmetic_Logic_Unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladdervhdl
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
 
ENTITY FA_tb IS
END FA_tb;
 
ARCHITECTURE behavior OF FA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladdervhdl
    PORT(
         FA_In_A : IN  std_logic;
         FA_In_B : IN  std_logic;
         FA_In_Ci : IN  std_logic;
         FA_Out_S : OUT  std_logic;
         FA_Out_Co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal FA_In_A : std_logic := '0';
   signal FA_In_B : std_logic := '0';
   signal FA_In_Ci : std_logic := '0';

 	--Outputs
   signal FA_Out_S : std_logic;
   signal FA_Out_Co : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladdervhdl PORT MAP (
          FA_In_A => FA_In_A,
          FA_In_B => FA_In_B,
          FA_In_Ci => FA_In_Ci,
          FA_Out_S => FA_Out_S,
          FA_Out_Co => FA_Out_Co
        );

   -- Clock process definitions
   tb:process
	begin
		FA_In_A <= '0';
		FA_In_B <= '0';
		FA_In_Ci <= '0';
		wait for period;
	  
		FA_In_A <= '0';
		FA_In_B <= '0';
		FA_In_Ci <= '1';
		wait for period;
	  
		FA_In_A <= '0';
		FA_In_B <= '1';
		FA_In_Ci <= '0';
		wait for period;
	  
		FA_In_A <= '0';
		FA_In_B <= '1';
		FA_In_Ci <= '1';
		wait for period;
	  
		FA_In_A <= '1';
		FA_In_B <= '0';
		FA_In_Ci <= '0';
		wait for period;
	  
		FA_In_A <= '1';
		FA_In_B <= '0';
		FA_In_Ci <= '1';
		wait for period;
	  
		FA_In_A <= '1';
		FA_In_B <= '1';
		FA_In_Ci <= '0';
		wait for period;
	  
		FA_In_A <= '1';
		FA_In_B <= '1';
		FA_In_Ci <= '1';
		wait for period;
	  
		wait;
		END PROCESS tb;

END;
