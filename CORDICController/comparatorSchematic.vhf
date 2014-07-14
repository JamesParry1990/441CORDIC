--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : comparatorSchematic.vhf
-- /___/   /\     Timestamp : 07/14/2014 09:34:10
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/jdparry/Documents/441git/CORDICController/comparatorSchematic.vhf -w C:/Users/jdparry/Documents/441git/CORDICController/comparatorSchematic.sch
--Design Name: comparatorSchematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity comparatorSchematic is
   port ( clk             : in    std_logic; 
          OperationSelect : in    std_logic; 
          Yi              : in    std_logic_vector (31 downto 0); 
          Zi              : in    std_logic_vector (31 downto 0); 
          Output          : out   std_logic);
end comparatorSchematic;

architecture BEHAVIORAL of comparatorSchematic is
   component Comparator
      port ( clk             : in    std_logic; 
             OperationSelect : in    std_logic; 
             Zi              : in    std_logic_vector (31 downto 0); 
             Yi              : in    std_logic_vector (31 downto 0); 
             Output          : out   std_logic);
   end component;
   
begin
   XLXI_1 : Comparator
      port map (clk=>clk,
                OperationSelect=>OperationSelect,
                Yi(31 downto 0)=>Yi(31 downto 0),
                Zi(31 downto 0)=>Zi(31 downto 0),
                Output=>Output);
   
end BEHAVIORAL;


