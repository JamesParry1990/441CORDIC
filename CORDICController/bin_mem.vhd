----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:11:23 06/16/2014 
-- Design Name: 
-- Module Name:    Hex Mem - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BinMem is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           mode : in  STD_LOGIC_VECTOR (1 downto 0);
           data : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in STD_LOGIC);
end BinMem;

architecture Behavioral of BinMem is
type storage_array is array(15 downto 0) of STD_LOGIC_VECTOR(31 downto 0); 

constant hyperbolic: storage_array := (
	
	0  => "00100011001001111101010011110101",
	1  => "00010000010110001010111011111011",
	2  => "00001000000010101100010010001110",
	3  => "00000100000000010101011000100011",
	4  => "00000010000000000010101010110001",
	5  => "00000001000000000000010101010110",
	6  => "00000000100000000000000010101011",
	7  => "00000000010000000000000000010101",
	8  => "00000000001000000000000000000011",
	9  => "00000000000100000000000000000000",
	10 => "00000000000010000000000000000000",
	11 => "00000000000001000000000000000000",
	12 => "00000000000000100000000000000000",
	13 => "00000000000000010000000000000000",
	14 => "00000000000000001000000000000000",
	15 => "00000000000000000100000000000000"

);

constant circular: storage_array := (
	0  => "00110010010000111111011010101001",
	1  => "00011101101011000110011100000101",
	2  => "00001111101011011011101011111101",
	3  => "00000111111101010110111010100111",
	4  => "00000011111111101010101101110111",
	5  => "00000001111111111101010101011100",
	6  => "00000000111111111111101010101011",
	7  => "00000000011111111111111101010101",
	8  => "00000000001111111111111111101011",
	9  => "00000000000111111111111111111101",
	10 => "00000000000100000000000000000000",
	11 => "00000000000010000000000000000000",
	12 => "00000000000001000000000000000000",
	13 => "00000000000000100000000000000000",
	14 => "00000000000000010000000000000000",
	15 => "00000000000000001000000000000000"
);

begin


	data <= hyperbolic(conv_integer(i)) when (mode = '0') else
		circular(conv_integer(i));

end Behavioral;

