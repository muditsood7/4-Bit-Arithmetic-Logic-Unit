----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:52:46 11/22/2023 
-- Design Name: 
-- Module Name:    LogicCircuit - Behavioral 
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

entity LogicCircuit is

	port(s: in std_logic_vector(1 downto 0);
		  a, b: in std_logic;
		  g: out std_logic);

end LogicCircuit;

architecture Behavioral of LogicCircuit is

	component Multiplexor4to1 is 
		
		port(a, b, c, d: in std_logic;
			  s: in std_logic_vector (1 downto 0);
			  z: out std_logic);
			  
	end component;
	
	signal q: std_logic_vector (3 downto 0);

begin

	q(0) <= (a and b); q(1) <= (a or b); q(2) <= (a xor b); q(3) <= (not A);
	
	Mux4to1: Multiplexor4to1 port map (q(0), q(1), q(2), q(3), s, g);

end Behavioral;

