----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:33 11/19/2020 
-- Design Name: 
-- Module Name:    OneStageALU - Behavioral 
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

entity OneStageALU is
    Port ( Ci_In : in  STD_LOGIC;
           A_In : in  STD_LOGIC;
           B_In : in  STD_LOGIC;
           S0_In : in  STD_LOGIC;
           S1_In : in  STD_LOGIC;
           S2_In : in  STD_LOGIC;
           Co_Out : out  STD_LOGIC;
           G_Out : out  STD_LOGIC);
end OneStageALU;

architecture Behavioral of OneStageALU is

component FA_Bin
		port(A_in, B_in, S0_in, S1_in, Ci_in : in std_logic;
			Cout_out, G_out: out std_logic);
	end component;
component Logic_Circuit
	port (S0, S1, A, B : in std_logic;
			G : out std_logic);
	end component;
	signal Arith_Out, Logic_Out : std_logic;
	
component two_to_one_MUX
	port (a, b, s: in std_logic;
			g : out std_logic);
	end component;
	
begin
	FA_Bin1: FA_Bin
		port map(A_In, B_In, S0_In, S1_In, Ci_In, Co_Out, Arith_Out);
	Logic_Circuit1: Logic_Circuit
		port map(S0_In, S1_In, A_In, B_In, Logic_Out);
	MUX1: two_to_one_MUX
		port map(Arith_Out, Logic_Out, S2_In, G_Out);
end Behavioral;

