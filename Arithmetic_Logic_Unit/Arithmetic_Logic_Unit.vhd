----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:28:58 11/18/2020 
-- Design Name: 
-- Module Name:    HA_VHDL - Behavioral 
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

entity HA_VHDL is
    Port ( HA_In_A : in  STD_LOGIC;
           HA_In_B : in  STD_LOGIC;
           HA_Out_S : out  STD_LOGIC;
           HA_Out_Co : out  STD_LOGIC);
end HA_VHDL;

architecture Behavioral of HA_VHDL is
	
begin
	HA_Out_S <= HA_In_A xor HA_In_B;
	HA_Out_Co <= HA_In_A and HA_In_B;
end Behavioral;

