----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:04 06/02/2014 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
	

entity Controller is
	Port ( 	code 	: 	in STD_LOGIC_VECTOR (3 downto 0);
				start	: 	in STD_LOGIC;
				alu_done	: 	in STD_LOGIC;
				reg_done : in STD_LOGIC;
				enable : out STD_LOGIC; --MUSTFIX this variable is not used in code yet.
				reg_wr : out  	STD_LOGIC;
				reg_rd : out  	STD_LOGIC;
				--t		: out STD_LOGIC;
				m		: out STD_LOGIC_VECTOR (1 downto 0);
				i		: out STD_LOGIC_VECTOR (3 downto 0);
				op		: out STD_LOGIC;
				--load	: out STD_LOGIC;
				
				rst	: 	in STD_LOGIC;
				clk 	: 	in STD_LOGIC
		);
end Controller;

architecture Behavioral of Controller is

signal state : STD_LOGIC_VECTOR (1 downto 0);
signal counter : UNSIGNED(3 downto 0) := (others => '0');

begin

process(clk)
	begin
		if(clk='1' and clk'event) then
			if (rst = '1') then
				i <= "ZZZZ";
				--t <= 'Z'; --MUSTFIX
				op <= 'Z';
				--load <= 'Z';
				reg_wr <= 'Z';
				m <= "ZZ";
				state <= "00";
				counter <= "0000";
				
			elsif (state = "00") then		--Idle State
				
				if (start = '1') then		--start signal received
					--load <= '1';				--load initial values to ALU
					reg_wr <= '1';
					state <= "01";
				end if;
			
			elsif (state = "01") then		--load state
				
				if (alu_done = '1')then				--values have been loaded
					--load <= '0';				--deassert load
					reg_wr <= '0';
					--t <= code(0); --MUSTFIX				--determine table to use
					m <= code(1 downto 0);	--determine mode
					op <= code(2);				--select y or theta
					i <= "0000";				--begin counting
					--counter <= "0000";
					state <= "10";				--move to next state
				end if;
			elsif (state = "10") then				--exectution state
			
				if (alu_done = '1' and counter /= "1111") then			--if this is not the last iteration
					--i <= STD_LOGIC_VECTOR( unsigned(i) + 1);	--update i
					--counter <= STD_LOGIC_VECTOR( unsigned(counter) + 1);
					counter <= counter + 1;
					i <= STD_LOGIC_VECTOR(counter);
				elsif (alu_done ='1' and counter = "1111") then			--last iteration
					i <= "ZZZZ";											--set values to neutral
					counter <="0000";
					--t <= 'Z'; --MUSTFIX
					op <= 'Z';
					--load <= 'Z';
					reg_wr <= 'Z';
					m <= "ZZ";
					state <= "00";									--return to idle
				end if;
				
			end if;
		end if;		
	end process;
			

end Behavioral;

