--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : SystemSchematic.vhf
-- /___/   /\     Timestamp : 06/21/2014 17:34:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/jdparry/Documents/441Final/441CORDIC/CORDICController/SystemSchematic.vhf -w C:/Users/jdparry/Documents/441Final/441CORDIC/CORDICController/SystemSchematic.sch
--Design Name: SystemSchematic
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

entity SystemSchematic is
   --port ( );
end SystemSchematic;

architecture BEHAVIORAL of SystemSchematic is
   signal XLXN_1                  : std_logic;
   signal XLXN_2                  : std_logic_vector (31 downto 0);
   signal XLXN_9                  : std_logic_vector (31 downto 0);
   signal XLXN_12                 : std_logic_vector (31 downto 0);
   signal XLXN_15                 : std_logic;
   signal XLXN_16                 : std_logic;
   signal XLXN_25                 : std_logic_vector (3 downto 0);
   signal XLXN_26                 : std_logic_vector (1 downto 0);
   signal XLXN_34                 : std_logic;
   signal XLXN_37                 : std_logic;
   signal XLXN_38                 : std_logic;
   signal XLXN_41                 : std_logic;
   signal XLXN_55                 : std_logic_vector (31 downto 0);
   signal XLXN_56                 : std_logic_vector (31 downto 0);
   signal XLXN_57                 : std_logic_vector (31 downto 0);
   signal XLXN_58                 : std_logic_vector (31 downto 0);
   signal XLXN_67                 : std_logic;
   signal XLXN_68                 : std_logic;
   signal XLXI_4_code_openSignal  : std_logic_vector (3 downto 0);
   signal XLXI_4_start_openSignal : std_logic;
   component ALU
      port ( rst   : in    std_logic; 
             clk   : in    std_logic; 
             en    : in    std_logic; 
             mu_in : in    std_logic; 
             i     : in    std_logic_vector (3 downto 0); 
             m     : in    std_logic_vector (1 downto 0); 
             x_in  : in    std_logic_vector (31 downto 0); 
             y_in  : in    std_logic_vector (31 downto 0); 
             z_in  : in    std_logic_vector (31 downto 0); 
             theta : in    std_logic_vector (31 downto 0); 
             done  : out   std_logic; 
             x_out : out   std_logic_vector (31 downto 0); 
             y_out : out   std_logic_vector (31 downto 0); 
             z_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component BinMem
      port ( i    : in    std_logic_vector (3 downto 0); 
             mode : in    std_logic_vector (1 downto 0); 
             data : out   std_logic_vector (31 downto 0); 
             CLK  : in    std_logic);
   end component;
   
   component Comparator
      port ( clk             : in    std_logic; 
             OperationSelect : in    std_logic; 
             Zi              : in    std_logic_vector (31 downto 0); 
             Yi              : in    std_logic_vector (31 downto 0); 
             Output          : out   std_logic);
   end component;
   
   component Controller
      port ( start    : in    std_logic; 
             rst      : in    std_logic; 
             clk      : in    std_logic; 
             code     : in    std_logic_vector (3 downto 0); 
             enable   : out   std_logic; 
             reg_wr   : out   std_logic; 
             reg_rd   : out   std_logic; 
             op       : out   std_logic; 
             m        : out   std_logic_vector (1 downto 0); 
             i        : out   std_logic_vector (3 downto 0); 
             alu_done : in    std_logic; 
             reg_done : in    std_logic);
   end component;
   
   component register_file
      port ( RD    : in    std_logic; 
             WR    : in    std_logic; 
             CLK   : in    std_logic; 
             RST   : in    std_logic; 
             x_in  : in    std_logic_vector (31 downto 0); 
             y_in  : in    std_logic_vector (31 downto 0); 
             z_in  : in    std_logic_vector (31 downto 0); 
             x_out : out   std_logic_vector (31 downto 0); 
             y_out : out   std_logic_vector (31 downto 0); 
             z_out : out   std_logic_vector (31 downto 0); 
             done  : out   std_logic);
   end component;
   
begin
   XLXI_1 : ALU
      port map (clk=>XLXN_37,
                en=>XLXN_41,
                i(3 downto 0)=>XLXN_25(3 downto 0),
                m(1 downto 0)=>XLXN_26(1 downto 0),
                mu_in=>XLXN_1,
                rst=>XLXN_38,
                theta(31 downto 0)=>XLXN_9(31 downto 0),
                x_in(31 downto 0)=>XLXN_2(31 downto 0),
                y_in(31 downto 0)=>XLXN_58(31 downto 0),
                z_in(31 downto 0)=>XLXN_57(31 downto 0),
                done=>XLXN_67,
                x_out(31 downto 0)=>XLXN_12(31 downto 0),
                y_out(31 downto 0)=>XLXN_55(31 downto 0),
                z_out(31 downto 0)=>XLXN_56(31 downto 0));
   
   XLXI_2 : BinMem
      port map (CLK=>XLXN_37,
                i(3 downto 0)=>XLXN_25(3 downto 0),
                mode(1 downto 0)=>XLXN_26(1 downto 0),
                data(31 downto 0)=>XLXN_9(31 downto 0));
   
   XLXI_3 : Comparator
      port map (clk=>XLXN_37,
                OperationSelect=>XLXN_34,
                Yi(31 downto 0)=>XLXN_58(31 downto 0),
                Zi(31 downto 0)=>XLXN_57(31 downto 0),
                Output=>XLXN_1);
   
   XLXI_4 : Controller
      port map (alu_done=>XLXN_67,
                clk=>XLXN_37,
                code(3 downto 0)=>XLXI_4_code_openSignal(3 downto 0),
                reg_done=>XLXN_68,
                rst=>XLXN_38,
                start=>XLXI_4_start_openSignal,
                enable=>XLXN_41,
                i(3 downto 0)=>XLXN_25(3 downto 0),
                m(1 downto 0)=>XLXN_26(1 downto 0),
                op=>XLXN_34,
                reg_rd=>XLXN_16,
                reg_wr=>XLXN_15);
   
   XLXI_5 : register_file
      port map (CLK=>XLXN_37,
                RD=>XLXN_15,
                RST=>XLXN_38,
                WR=>XLXN_16,
                x_in(31 downto 0)=>XLXN_12(31 downto 0),
                y_in(31 downto 0)=>XLXN_55(31 downto 0),
                z_in(31 downto 0)=>XLXN_56(31 downto 0),
                done=>XLXN_68,
                x_out(31 downto 0)=>XLXN_2(31 downto 0),
                y_out(31 downto 0)=>XLXN_58(31 downto 0),
                z_out(31 downto 0)=>XLXN_57(31 downto 0));
   
end BEHAVIORAL;


