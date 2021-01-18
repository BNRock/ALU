----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:32:38 11/18/2020 
-- Design Name: 
-- Module Name:    fulladdervhdl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladdervhdl is
    Port ( FA_In_A : in  STD_LOGIC;
           FA_In_B : in  STD_LOGIC;
           FA_In_Ci : in  STD_LOGIC;
           FA_Out_S : out  STD_LOGIC;
           FA_Out_Co : out  STD_LOGIC);
end fulladdervhdl;

architecture struc_fulladder of fulladdervhdl is
	component HA_VHDL
		port(HA_In_A, HA_In_B : in std_logic;
			HA_Out_S, HA_Out_Co: out std_logic);
	end component;
	signal sig_sum_1, sig_co_1, sig_co_2: std_logic;
begin
	HA1: HA_VHDL
		port map(FA_In_A, FA_In_B, sig_sum_1, sig_co_1);
	HA2: HA_VHDL
		port map(sig_sum_1, FA_In_Ci, FA_Out_S, sig_co_2);
		
	FA_Out_Co <= sig_co_1 or sig_co_2;
	
end struc_fulladder;

