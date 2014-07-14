-- Vhdl test bench created from schematic C:\Users\jdparry\Documents\441git\CORDICController\comparatorSchematic.sch - Mon Jul 14 09:32:54 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY comparatorSchematic_comparatorSchematic_sch_tb IS
END comparatorSchematic_comparatorSchematic_sch_tb;
ARCHITECTURE behavioral OF comparatorSchematic_comparatorSchematic_sch_tb IS 

   COMPONENT comparatorSchematic
   PORT( clk	:	IN	STD_LOGIC; 
          OperationSelect	:	IN	STD_LOGIC; 
          Zi	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Yi	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Output	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL OperationSelect	:	STD_LOGIC;
   SIGNAL Zi	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Yi	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Output	:	STD_LOGIC;

BEGIN

   UUT: comparatorSchematic PORT MAP(
		clk => clk, 
		OperationSelect => OperationSelect, 
		Zi => Zi, 
		Yi => Yi, 
		Output => Output
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
	wait for 10ns;
	
	OperationSelect <= '1';
	Yi <= "10000000000000000000000000000111";
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
