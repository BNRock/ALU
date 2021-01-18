--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Arithmetic_Circuit_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 18 23:05:11 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Arithmetic_Circuit -w -dir netgen/synthesis -ofmt vhdl -sim Arithmetic_Circuit.ngc Arithmetic_Circuit_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: Arithmetic_Circuit.ngc
-- Output file	: /home/ise/Arithmetic_Logic_Unit/netgen/synthesis/Arithmetic_Circuit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Arithmetic_Circuit
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Arithmetic_Circuit is
  port (
    Cin_in : in STD_LOGIC := 'X'; 
    A_input : in STD_LOGIC := 'X'; 
    B_input_signal : in STD_LOGIC := 'X'; 
    S0_input : in STD_LOGIC := 'X'; 
    S1_input : in STD_LOGIC := 'X'; 
    Cout_out : out STD_LOGIC; 
    G_out : out STD_LOGIC 
  );
end Arithmetic_Circuit;

architecture Structure of Arithmetic_Circuit is
  signal Cin_in_IBUF_0 : STD_LOGIC; 
  signal A_input_IBUF_1 : STD_LOGIC; 
  signal B_input_signal_IBUF_2 : STD_LOGIC; 
  signal S0_input_IBUF_3 : STD_LOGIC; 
  signal S1_input_IBUF_4 : STD_LOGIC; 
  signal G_out_OBUF_5 : STD_LOGIC; 
  signal Cout_out_OBUF_6 : STD_LOGIC; 
begin
  G_out1 : LUT5
    generic map(
      INIT => X"99699666"
    )
    port map (
      I0 => Cin_in_IBUF_0,
      I1 => A_input_IBUF_1,
      I2 => B_input_signal_IBUF_2,
      I3 => S0_input_IBUF_3,
      I4 => S1_input_IBUF_4,
      O => G_out_OBUF_5
    );
  Cout_out1 : LUT5
    generic map(
      INIT => X"FBEAA280"
    )
    port map (
      I0 => A_input_IBUF_1,
      I1 => B_input_signal_IBUF_2,
      I2 => S0_input_IBUF_3,
      I3 => S1_input_IBUF_4,
      I4 => Cin_in_IBUF_0,
      O => Cout_out_OBUF_6
    );
  Cin_in_IBUF : IBUF
    port map (
      I => Cin_in,
      O => Cin_in_IBUF_0
    );
  A_input_IBUF : IBUF
    port map (
      I => A_input,
      O => A_input_IBUF_1
    );
  B_input_signal_IBUF : IBUF
    port map (
      I => B_input_signal,
      O => B_input_signal_IBUF_2
    );
  S0_input_IBUF : IBUF
    port map (
      I => S0_input,
      O => S0_input_IBUF_3
    );
  S1_input_IBUF : IBUF
    port map (
      I => S1_input,
      O => S1_input_IBUF_4
    );
  Cout_out_OBUF : OBUF
    port map (
      I => Cout_out_OBUF_6,
      O => Cout_out
    );
  G_out_OBUF : OBUF
    port map (
      I => G_out_OBUF_5,
      O => G_out
    );

end Structure;

