----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:17 11/22/2023 
-- Design Name: 
-- Module Name:    Multiplexor2to1 - Behavioral 
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

entity Multiplexor2to1 is

	port(a, b, s: in std_logic;
		  z: out std_logic);

end Multiplexor2to1;

architecture Behavioral of Multiplexor2to1 is
	
	begin
	
	process(a, b, s) is 
	
	begin
	
	if (s = '0') then z <= a; else
							z <= b;
	end if;
	
	end process;						

end Behavioral;

