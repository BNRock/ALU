----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:36 11/19/2020 
-- Design Name: 
-- Module Name:    FA_Bin - Behavioral 
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

entity FA_Bin is
    Port ( A_in : in  STD_LOGIC;
           B_in : in  STD_LOGIC;
           S0_in : in  STD_LOGIC;
           S1_in : in  STD_LOGIC;
           Ci_in : in  STD_LOGIC;
           Cout_out : out  STD_LOGIC;
           G_out : out  STD_LOGIC);
end FA_Bin;

architecture Behavioral of FA_Bin is
component B_input
		port(B_in, S0_in, S1_in : in std_logic;
			Y_out: out std_logic);
	end component;
component fulladdervhdl
	port (FA_In_A, FA_In_B, FA_In_Ci : in std_logic;
			FA_Out_S, FA_Out_Co : out std_logic);
	end component;
	signal Y: std_logic;
begin
	B_input1: B_input
		port map(B_in, S0_in, S1_in, Y);
	FA: fulladdervhdl
		port map(A_in, Y, Ci_in, G_out, Cout_out);

end Behavioral;

