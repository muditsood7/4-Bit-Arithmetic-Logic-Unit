----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:27 11/22/2023 
-- Design Name: 
-- Module Name:    ArithmeticLogicUnit - Behavioral 
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

entity ArithmeticLogicUnit is

	port(a, b, Cin: in std_logic;
		  s: in std_logic_vector (2 downto 0);
		  Cout, g: out std_logic);

end ArithmeticLogicUnit;

architecture Behavioral of ArithmeticLogicUnit is

	component LogicCircuit is 
		port(a, b: in std_logic;
			  s: in std_logic_vector(1 downto 0);
			  g: out std_logic);
	end component LogicCircuit;
	
	component ArithmeticCircuit is 
		port(x, b, Cin: in std_logic;
			  s: in std_logic_vector (1 downto 0);
			  g, Cout: out std_logic);
	end component ArithmeticCircuit;
	
	component Multiplexor2to1 is 
		port(a, b, s: in std_logic;
			  z: out std_logic);
	end component Multiplexor2to1;

	signal q: std_logic_vector(1 downto 0);
	signal y1, y2: std_logic; 

begin

	q(0) <= s(0); q(1) <= s(1);

	ArithmeticCircuit1: ArithmeticCircuit port map (a, b, Cin, q, Cout, y1);
	LogicCircuit1: LogicCircuit port map (a, b, q, y2);
	Mux2to1: Multiplexor2to1 port map (y1, y2, s(2), g);

end Behavioral;

