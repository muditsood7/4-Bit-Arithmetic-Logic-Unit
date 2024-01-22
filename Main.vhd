----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:34 11/22/2023 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is

	port(a, b: in std_logic_vector(3 downto 0);
		  s: in std_logic_vector(2 downto 0);
		  Cin: in std_logic;
		  f: inout std_logic_vector(6 downto 0));

end Main;

architecture Behavioral of Main is

	component ArithmeticLogicUnit4bit is 
		port(a, b: in std_logic_vector(3 downto 0);
		     s: in std_logic_vector(2 downto 0);
		     Cin: in std_logic;
		     g: out std_logic_vector(3 downto 0));
	end component ArithmeticLogicUnit4bit;
	
	component Segment7Display is 
		port(A: in STD_LOGIC_VECTOR (3 downto 0);
			  Segment: out STD_LOGIC_VECTOR (6 downto 0));
	end component Segment7Display;
	
	signal g: std_logic_vector(3 downto 0);

begin

	ArithmeticLogicUnit4bit1: ArithmeticLogicUnit4bit port map (a, b, s, Cin, g);
	Segment7Display1: Segment7Display port map (g, f);

end Behavioral;

