----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:20 11/22/2023 
-- Design Name: 
-- Module Name:    ArithmeticLogicUnit4bit - Behavioral 
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

entity ArithmeticLogicUnit4bit is

	port(a, b: in std_logic_vector(3 downto 0);
		  s: in std_logic_vector(2 downto 0);
		  Cin: in std_logic;
		  g: out std_logic_vector(3 downto 0));

end ArithmeticLogicUnit4bit;

architecture Behavioral of ArithmeticLogicUnit4bit is

	component ArithmeticLogicUnit is 
		port(a, b, Cin: in std_logic;
		     s: in std_logic_vector (2 downto 0);
		     Cout, g: out std_logic);
	end component ArithmeticLogicUnit;
	
	signal Cout: std_logic_vector(3 downto 0);

begin

	ALU0: ArithmeticLogicUnit port map(a(0), b(0), Cin, s, Cout(0), g(0));
	ALU1: ArithmeticLogicUnit port map(a(1), b(1), Cout(0), s, Cout(1), g(1));
	ALU2: ArithmeticLogicUnit port map(a(2), b(2), Cout(1), s, Cout(2), g(2));
	ALU3: ArithmeticLogicUnit port map(a(3), b(3), Cout(2), s, Cout(3), g(3));
	
end Behavioral;

