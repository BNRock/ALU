----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:50 11/19/2020 
-- Design Name: 
-- Module Name:    MUX_VHDL - Behavioral 
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

entity MUX_VHDL is
    Port ( a_in_mux : in  STD_LOGIC;
           b_in_mux : in  STD_LOGIC;
			  c_in_mux : in  STD_LOGIC;
           d_in_mux : in  STD_LOGIC;
           s0_in_mux : in  STD_LOGIC;
			  s1_in_mux : in  STD_LOGIC;
           g_out_mux : out  STD_LOGIC);
end MUX_VHDL;

architecture mux of MUX_VHDL is

begin

	up: process (a_in_mux,b_in_mux,c_in_mux,d_in_mux,s0_in_mux,s1_in_mux)
	begin
		if (s0_in_mux='0') and (s1_in_mux='0') then
			g_out_mux <= a_in_mux;
		elsif (s0_in_mux='0') and (s1_in_mux='1') then
			g_out_mux <= b_in_mux;
		elsif (s0_in_mux='1') and (s1_in_mux='0') then
			g_out_mux <= c_in_mux;
		elsif (s0_in_mux='1') and (s1_in_mux='1') then
			g_out_mux <= d_in_mux;
		end if;
	end process;
end mux;

