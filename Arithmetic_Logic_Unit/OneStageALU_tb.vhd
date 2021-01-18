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
 
    COMPONENT OneStageALU
    PORT(
         Ci_In : IN  std_logic;
         A_In : IN  std_logic;
         B_In : IN  std_logic;
         S0_In : IN  std_logic;
         S1_In : IN  std_logic;
         S2_In : IN  std_logic;
         Co_Out : OUT  std_logic;
         G_Out : OUT  std_logic
        );
    END COMPONENT;
 
 
   --Inputs
   signal Ci_In : std_logic := '0';
   signal A_In : std_logic := '0';
   signal B_In : std_logic := '0';
   signal S0_In : std_logic := '0';
   signal S1_In : std_logic := '0';
   signal S2_In : std_logic := '0';
 
 	--Outputs
   signal Co_Out : std_logic;
   signal G_Out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OneStageALU PORT MAP (
          Ci_In => Ci_In,
          A_In => A_In,
          B_In => B_In,
          S0_In => S0_In,
          S1_In => S1_In,
          S2_In => S2_In,
          Co_Out => Co_Out,
          G_Out => G_Out
        );
 
 
   -- Stimulus process
   tb: process
   begin		
		--0000 with different A
      S0_In <='0';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
		--0001 with different A
		S0_In <='0';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
		--0010 with different A and B
      S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='0';
		wait for period; 
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
		--0011 with different A and B
      S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
		--0100 with different A and B
      S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
		--0101 with different A and B
      S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		--0110 with different A and B
      S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '0';
		B_In<='1';
		wait for period;
		--0111 with different A and B
      S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='0';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		--100X with different A and B
      S0_In <='0';
		S1_In <='0';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='0';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='0';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='0';
		S1_In <='0';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		--101X with different A and B
      S0_In <='1';
		S1_In <='0';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='0';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		--110X with different A and B
      S0_In <='0';
		S1_In <='1';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='0';
		S1_In <='1';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		--111X with different A and B
      S0_In <='1';
		S1_In <='1';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='0';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='1';
		A_In <='0';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
 
		S0_In <='1';
		S1_In <='1';
		S2_In <='1';
		A_In <='1';
		Ci_In <= '1';
		B_In<='1';
		wait for period;
      wait;
 
   end process;
 
END;
 