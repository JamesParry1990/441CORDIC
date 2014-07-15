--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:20:07 07/14/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/441git/CORDICController/registerTestBench.vhd
-- Project Name:  CORDICController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY registerTestBench IS
END registerTestBench;
 
ARCHITECTURE behavior OF registerTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         x_in : IN  std_logic_vector(31 downto 0);
         y_in : IN  std_logic_vector(31 downto 0);
         z_in : IN  std_logic_vector(31 downto 0);
         RD : IN  std_logic;
         WR : IN  std_logic;
         RST : IN  std_logic;
         done : OUT  std_logic;
         x_out : OUT  std_logic_vector(31 downto 0);
         y_out : OUT  std_logic_vector(31 downto 0);
         z_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal z_in : std_logic_vector(31 downto 0) := (others => '0');
   signal RD : std_logic := '0';
   signal WR : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal x_out : std_logic_vector(31 downto 0);
   signal y_out : std_logic_vector(31 downto 0);
   signal z_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          x_in => x_in,
          y_in => y_in,
          z_in => z_in,
          RD => RD,
          WR => WR,
          RST => RST,
          done => done,
          x_out => x_out,
          y_out => y_out,
          z_out => z_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      x_in <= "10000000000000000000000000000111";
		y_in <= "00000000000000000000000000000111";
		z_in <= "10000000000000111111111111111111";
      RST <= '0';
		RD <= '0';
		WR <= '1';
		
		wait for 100 ns;	

      RST <= '0';
		RD <= '1';
		WR <= '0';

      wait;
   end process;

END;
