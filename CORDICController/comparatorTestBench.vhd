--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:15:25 07/14/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/441git/CORDICController/comparatorTestBench.vhd
-- Project Name:  CORDICController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comparatorTestBench IS
END comparatorTestBench;
 
ARCHITECTURE behavior OF comparatorTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         Zi : IN  std_logic_vector(31 downto 0);
         Yi : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         OperationSelect : IN  std_logic;
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Zi : std_logic_vector(31 downto 0) := (others => '0');
   signal Yi : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal OperationSelect : std_logic := '0';

 	--Outputs
   signal Output : std_logic := '0';

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          Zi => Zi,
          Yi => Yi,
          clk => clk,
          OperationSelect => OperationSelect,
          Output => Output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		OperationSelect <= '1';
		Yi <= "10000000000000000000000000000111";

      wait;
   end process;

END;
