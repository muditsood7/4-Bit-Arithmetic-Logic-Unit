----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:53 11/22/2023 
-- Design Name: 
-- Module Name:    ArithmeticCircuit - Behavioral 
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

entity ArithmeticCircuit is

	port (x, b, Cin: in std_logic;
			s: in std_logic_vector (1 downto 0);
			g, Cout: out std_logic);
			
end ArithmeticCircuit;

architecture Behavioral of ArithmeticCircuit is

	component Group33_FullAdder is 
	
		port(Num1f, Num2f, Cinf: in std_logic;
			  Sumf, Coutf: out std_logic);
	
	end component;

	component BinputLogic is 
	
		port(b: in std_logic;
			  s: in std_logic_vector(1 downto 0);
			  y: out std_logic);
			  
	end component;
	
	signal y: std_logic;

begin

	BinputLogic1: BinputLogic port map (b, s, y);
	FullAdder: Group33_FullAdder port map (x, y, Cin, g, Cout);

end Behavioral;

