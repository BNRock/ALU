----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:36 11/18/2020 
-- Design Name: 
-- Module Name:    Arithmetic_Circuit - Behavioral 
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

entity Arithmetic_Circuit is
    Port ( Cin_in : in  STD_LOGIC;
           A_input : in  STD_LOGIC;
           B_input_signal : in  STD_LOGIC;
			  S0_input : in  STD_LOGIC;
           S1_input : in  STD_LOGIC;
           Cout_out : out  STD_LOGIC;
           G_out : out  STD_LOGIC);
end Arithmetic_Circuit;

architecture arithmetic_circuit_logic of Arithmetic_Circuit is
	component B_input
		port(B_in, S0_in, S1_in: in std_logic;
			Y_out: out std_logic);
	end component;
	
	component fulladdervhdl
		port(FA_In_A, FA_In_B, FA_In_Ci: in std_logic;
			FA_Out_S, FA_Out_Co: out std_logic);
	end component;
	signal B_logic_out: std_logic;
begin
	B_input1: B_input
		port map(B_input_signal, S0_input, S1_input, B_logic_out);
		
	FA: fulladdervhdl
		port map(A_input, B_logic_out, Cin_in, G_out, Cout_out);
		
end arithmetic_circuit_logic;

