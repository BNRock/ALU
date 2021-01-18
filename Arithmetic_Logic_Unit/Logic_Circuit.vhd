----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:33 11/19/2020 
-- Design Name: 
-- Module Name:    Logic_Circuit - Behavioral 
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

entity Logic_Circuit is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           G : out  STD_LOGIC);
end Logic_Circuit;

architecture Behavioral of Logic_Circuit is
	
	signal A_in, B_in, C_in, D_in: std_logic;

	component MUX_VHDL
		port(a_in_mux, b_in_mux, c_in_mux, d_in_mux, s0_in_mux, s1_in_mux: in std_logic;
			g_out_mux: out std_logic);
	end component;
begin
 
	A_in <= A and B;
	B_in <= A or B;
	C_in <= A xor B;
	D_in <= (not A);

	Logic_Mux: MUX_VHDL
		port map(A_in, B_in, C_in, D_in, S0, S1, G);

end Behavioral;

