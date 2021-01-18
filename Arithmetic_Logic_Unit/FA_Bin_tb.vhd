--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:48 11/19/2020
-- Design Name:   
-- Module Name:   /home/ise/ISE/Arithmetic_Logic_Unit/FA_Bin_tb.vhd
-- Project Name:  Arithmetic_Logic_Unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FA_Bin
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
 
ENTITY FA_Bin_tb IS
END FA_Bin_tb;
 
ARCHITECTURE behavior OF FA_Bin_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_Bin
    PORT(
         A_in : IN  std_logic;
         B_in : IN  std_logic;
         S0_in : IN  std_logic;
         S1_in : IN  std_logic;
         Ci_in : IN  std_logic;
         Cout_out : OUT  std_logic;
         G_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_in : std_logic := '0';
   signal B_in : std_logic := '0';
   signal S0_in : std_logic := '0';
   signal S1_in : std_logic := '0';
   signal Ci_in : std_logic := '0';

 	--Outputs
   signal Cout_out : std_logic;
   signal G_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_Bin PORT MAP (
          A_in => A_in,
          B_in => B_in,
          S0_in => S0_in,
          S1_in => S1_in,
          Ci_in => Ci_in,
          Cout_out => Cout_out,
          G_out => G_out
        );

    tb:process
   begin
	--Cin = 0 B = 0 A = 0
		A_in <= '0';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		--Cin = 1 B = 0 A = 0
		A_in <= '0';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		--Cin = 0, B = 0 A = 1
		A_in <= '1';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		--Cin = 1, B = 0 A = 1
		A_in <= '1';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '0';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		--Cin = 0, B = 1 A = 0
		A_in <= '0';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		--Cin = 1, B = 1 A = 0
		A_in <= '0';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '0';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		--Cin = 0, B = 1 A = 1
		A_in <= '1';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '0';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '0';
		wait for period;
		
		--Cin = 1, B = 1 A = 1
		A_in <= '1';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '0';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '0';
		Ci_in <= '1';
		wait for period;
		
		A_in <= '1';
		B_in <= '1';
		S1_in <= '1';
		S0_in <= '1';
		Ci_in <= '1';
		wait for period;
		wait;
   end process;

END;
