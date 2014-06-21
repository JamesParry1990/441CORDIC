----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:14:39 06/19/2014 
-- Design Name: 
-- Module Name:    circularModeALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--			An ALU that ignores mode (m) and only does circular calculations. Will later be 
--			integrated into a general ALU, perhaps as a component

-- Dependencies: 
--			Assumes that mu is a one-bit value where 1 is positive and 0 is negative rotation
--			Assumes that controller performs theta look-up and provides value directly to ALU
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	Port ( 
				rst:		in		STD_LOGIC;
				clk:		in		STD_LOGIC;
				en:		in		STD_LOGIC;
				i : 		in  	STD_LOGIC_VECTOR (3 downto 0);
				m : 		in  	STD_LOGIC_VECTOR (1 downto 0);
				mu_in : 	in  	STD_LOGIC;
				x_in : 	in  	STD_LOGIC_VECTOR (31 downto 0);
				y_in : 	in  	STD_LOGIC_VECTOR (31 downto 0);
				z_in : 	in  	STD_LOGIC_VECTOR (31 downto 0);
				theta : 	in  	STD_LOGIC_VECTOR (31 downto 0);
				--reg_wr : out  	STD_LOGIC;
				--reg_rd : out  	STD_LOGIC;
				x_out : 	out  	STD_LOGIC_VECTOR (31 downto 0);
				y_out : 	out  	STD_LOGIC_VECTOR (31 downto 0);
				z_out : 	out  	STD_LOGIC_VECTOR (31 downto 0);
				done	:	out	STD_LOGIC
			);
end ALU;

architecture thetaProvided of ALU is

-- ****************************** declarations ********************************

	-- for initial values read from register
	signal x_curr : STD_LOGIC_VECTOR (31 downto 0);
	signal y_curr : STD_LOGIC_VECTOR (31 downto 0);
	signal z_curr : STD_LOGIC_VECTOR (31 downto 0);

	

	-- to make calculations easier to read and debug
	-- ASSUMPTION: 	mu_in will be 1 for positive mu
	--						and 0 for negative mu
	type rot_dir is (pos_rot, neg_rot);


	-- function to calculate next x
	function xCalc
		(
			x_curr, y_curr: 	STD_LOGIC_VECTOR (31 downto 0);
			mu:					rot_dir;
			shift_i:				integer
		) 	
			return 				STD_LOGIC_VECTOR
	is	
			-- value to return
			variable ret_x: STD_LOGIC_VECTOR (31 downto 0);
			-- value to add/sub from x_curr
			variable shifted_y: STD_LOGIC_VECTOR (31 downto 0);
			variable shift_i_int: integer;
			variable toShift: BIT_VECTOR(7 DOWNTO 0); -- must use bitV to perform shift op
			
		begin
				toShift		:=		TO_BITVECTOR(y_curr);
				shifted_y	:=		TO_STDLOGICVECTOR	(toShift srl shift_i);

				if mu = pos_rot then
					ret_x := x_curr - shifted_y;
				
				elsif mu = neg_rot then
					ret_x := x_curr + shifted_y;
				
				end if;	
				return ret_x;
	end xCalc;
	
	-- function to calculate next y
	function yCalc
		(
			x_curr, y_curr: 	STD_LOGIC_VECTOR (31 downto 0);
			mu:					rot_dir;
			shift_i:				integer
		) 
			return 				STD_LOGIC_VECTOR
		
	is
			
			variable ret_y: 		STD_LOGIC_VECTOR (31 downto 0); 	-- value to return
			variable shifted_x: 	STD_LOGIC_VECTOR (31 downto 0);	-- value to add/sub from y_curr
			variable toShift: 	BIT_VECTOR(7 DOWNTO 0); 			-- must use bitV to perform shift op	
		begin
				toShift		:=		TO_BITVECTOR(x_curr);
				shifted_x	:=		TO_STDLOGICVECTOR	(toShift srl shift_i);

				
				if mu = pos_rot then
					ret_y := y_curr + shifted_x;
				
				elsif mu = neg_rot then
					ret_y := y_curr - shifted_x;
				
				end if;	
				return ret_y;
	end yCalc;

	-- function to calculate next z
	function zCalc
		( 
			z_curr:		STD_LOGIC_VECTOR(31 downto 0);
			mu:			rot_dir;
			theta:		STD_LOGIC_VECTOR(31 downto 0)
		) 
			return 		STD_LOGIC_VECTOR 
		
	is
			-- value to return
			variable ret_z: STD_LOGIC_VECTOR (31 downto 0);
		
		begin

			if mu = pos_rot then
				ret_z := z_curr - theta;
			elsif mu = neg_rot then
				ret_z := z_curr + theta;
			end if;
			
			return ret_z;
		
	end zCalc;

-- ****************************** end of declarations ***************************
begin


Process is
	variable index_int:		integer; -- need integer value for shift operations
	variable mu:				rot_dir;

	begin
	-- RESET "done" FLAG
	done <= '0';
		
	-- ASSIGN ROTATION DIRECTION to mu (to make calculations easier to debug
	case mu_in is
		-- ******** ASSUME 1 IS POSITIVE AND 0 IS NEGATIVE ********
		when '1' =>			mu := pos_rot;
		when '0' => 		mu := neg_rot;
		when others =>		mu := pos_rot;
	end case;
	
	-- convert i into an integer to perform shift operations within calc functions
		index_int := to_integer(signed(i));
	
	-- READ VALS FROM REGISTER
	--reg_rd <= '1'; --MUSTFIX
	-- WAIT FOR VALUES TO CHANGE
	wait on x_in, y_in, z_in;
	-- DEASSERT READ COMMAND
	--reg_rd <= '0'; --MUSTFIX
	
	-- USE DEFINED FUNCTIONS TO ASSIGN NEW VALUES TO OUTPUT PINS
	x_out <= xCalc(x_in, y_in, mu, index_int);
	y_out <= yCalc(x_in, y_in, mu, index_int);
	z_out <= zCalc(z_in, mu, theta);

	-- WRITE VALS TO REGISTER
	--reg_wr <= '1'; --MUSTFIX
	
	-- SIGNAL CONTROLLER THAT VALUES IN REGISTER ARE VALID
	done <= '1';
	
end process;

end thetaProvided;
