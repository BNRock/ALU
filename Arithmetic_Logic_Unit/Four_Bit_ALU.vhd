----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:42 11/26/2020 
-- Design Name: 
-- Module Name:    Four_Bit_ALU - Behavioral 
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

entity Four_Bit_ALU is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           G0 : out  STD_LOGIC;
           G1 : out  STD_LOGIC;
			  G2 : out  STD_LOGIC;
           G3 : out  STD_LOGIC);
end Four_Bit_ALU;

architecture Behavioral of Four_Bit_ALU is
signal A_sig, B_sig, C_sig, D_sig, E_sig, F_sig, G_sig, H_sig: std_logic;


component OneStageALU
		port(Ci_In, A_In, B_In, S0_In, S1_In, S2_In : in std_logic;
			Co_Out, G_Out: out std_logic);
end component;

begin

OneStageALU1: OneStageALU
	port map(Cin, A0, B0, S0, S1, S2, A_sig, B_sig);
OneStageALU2: OneStageALU
	port map(A_sig, A1, B1, S0, S1, S2, C_sig, D_sig);
OneStageALU3: OneStageALU
	port map(C_sig, A2, B2, S0, S1, S2, E_sig, F_sig);
OneStageALU4: OneStageALU
	port map(E_sig, A3, B3, S0, S1, S2, G_sig, H_sig);

Cout <= G_sig;
G0 <= B_sig;
G1 <= D_sig;
G2 <= F_sig;
G3 <= H_sig;

end Behavioral;

