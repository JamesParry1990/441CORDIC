----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:02 06/11/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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





-- RST, EN not yet implemented
entity ALU is
    Port ( 
				CLK : 			in  STD_LOGIC; -- is EN the clk for ALU?
				RST : 			in  STD_LOGIC;
				EN : 				in  STD_LOGIC;
				m : 				in  STD_LOGIC_VECTOR (1 downto 0); -- 1, 0, -1
				i : 				in  STD_LOGIC_VECTOR (3 downto 0); -- 16 iterations
				x_i : 			in  STD_LOGIC_VECTOR (15 downto 0); 
				y_i : 			in  STD_LOGIC_VECTOR (15 downto 0);
				z_i : 			in  STD_LOGIC_VECTOR (15 downto 0);
				theta_i : 		in  STD_LOGIC_VECTOR (15 downto 0);
				delta_i : 		in  STD_LOGIC_VECTOR (15 downto 0);
				lookup_i : 		out  STD_LOGIC_VECTOR (15 downto 0);
				x_next : 		out  STD_LOGIC_VECTOR (15 downto 0);
				y_next : 		out  STD_LOGIC_VECTOR (15 downto 0);
				z_next : 		out  STD_LOGIC_VECTOR (15 downto 0);
				DONE : 			out  STD_LOGIC
				
			);
end ALU;

architecture Behavioral of ALU is

component registerBank is

    Port ( 
				x_in : in  STD_LOGIC_VECTOR (31 downto 0);
				y_in : in  STD_LOGIC_VECTOR (31 downto 0);
				z_in : in  STD_LOGIC_VECTOR (31 downto 0);
				RD : in  STD_LOGIC;
				WR : in  STD_LOGIC;
				CLK :	in		STD_LOGIC;
				RST :	in		STD_LOGIC;
				x_out : out  STD_LOGIC_VECTOR (31 downto 0);
				y_out : out  STD_LOGIC_VECTOR (31 downto 0);
				z_out : out  STD_LOGIC_VECTOR (31 downto 0));
end registerBank;

-- Define internal signals
	-- FROM CONTROLLER
		
	signal index: 		STD_LOGIC_VECTOR (3 downto 0); -- 16 iterations
	signal mode:		STD_LOGIC_VECTOR (1 downto 0); -- values: -1,0,1
	
	
	-- READ REGISTER VALUES
	signal x: 			STD_LOGIC_VECTOR (15 downto 0);
	signal y: 			STD_LOGIC_VECTOR (15 downto 0);
	signal z: 			STD_LOGIC_VECTOR (15 downto 0);
	-- finished fetching values
	signal fetchDone:	STD_LOGIC;

	-- READ FROM LOOKUP TABLE
	signal theta: 		STD_LOGIC_VECTOR (15 downto 0);
	signal delta: 		STD_LOGIC_VECTOR (15 downto 0);
	-- values retrieved from lookup table
	signal lookupDone: STD_LOGIC;

	-- PERFORM CALCLUATIONS
	--calculations complete
	signal calcDone:	STD_LOGIC;
	
	-- WRITE TO REGISTER
	signal x_res: 		STD_LOGIC_VECTOR (15 downto 0);
	signal y_res: 		STD_LOGIC_VECTOR (15 downto 0);
	signal z_res: 		STD_LOGIC_VECTOR (15 downto 0);
	-- finished writing to register bank
	-- this will be the "DONE" output
	signal writeDone: STD_LOGIC;
	
	
	

begin

	index	<= i;


-- ***** FETCH PREVIOUS VALUES *****
FETCH_REG:
process is
begin
	wait until rising_edge(CLK);
	if(EN = '1') then
	
		-- !!hardcode values until other components are ready!! --
		x	<=	"x0000";
		y	<=	"x0001";
		z	<=	"x0002";
		-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
		
		fetchDone	<=	'1';
	end if;
end process FETCH_REG;


-- ***** LOOKUP TABLES *****
LOOKUP:
process is
begin
	wait until rising_edge(fetchDone);
	
	-- !!hardcode values until other components are ready!! --
		theta	<=	"x1000";
	-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
	
	lookupDone	<=	'1';
end process LOOKUP;


-- ***** CALCULATIONS *****
CALCS:
process is

	-- until reg and lookup tables are implemented
	variable xTemp:		STD_LOGIC_VECTOR (15 downto 0);
	variable yTemp:		STD_LOGIC_VECTOR (15 downto 0);
	variable zTemp:		STD_LOGIC_VECTOR (15 downto 0);
	variable thetaTemp:	STD_LOGIC_VECTOR (15 downto 0);
	
begin
	wait until rising_edge(lookupDone);
	
	calcDone		<=		'1';
end process CALCS;


-- ***** WRITE RESULTS TO REGISTER ***** 
WRITE_REG:
process is
begin 
	wait until rising_edge(calcDone);

	writeDone	<=	'1';
	DONE 			<= writeDone;
end process WRITE_REG;

end Behavioral;

