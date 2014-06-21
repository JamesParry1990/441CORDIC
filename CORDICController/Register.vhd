----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:06:04 06/11/2014 
-- Design Name: 
-- Module Name:    registerBank - Behavioral 
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

entity register_file is
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
end register_file;



architecture Behavioural of register_file is

	-- one register for each value of x, y, and z
	type register_bank is array (integer range 0 to 2) of std_logic_vector(31 downto 0);
	
	signal bank: register_bank;
begin

writeProcess:
process is
begin
	wait until rising_edge(CLK);
	if(RST = '1') then
		bank(0) <= (OTHERS => '0');
		bank(1) <= (OTHERS => '0');
		bank(2) <= (OTHERS => '0');
	
	elsif(WR = '1') then
		
		bank(0) <= x_in;
		bank(1) <= y_in;
		bank(2) <= z_in;
		
	elsif(RD = '1') then
		x_out <= bank(0);
		y_out <= bank(0);
		z_out <= bank(0);
	end if;
end process;

end Behavioural;

--