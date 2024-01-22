----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:15:14 11/22/2023 
-- Design Name: 
-- Module Name:    Segment7Display - Behavioral 
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

entity Segment7Display is

Port ( A: in STD_LOGIC_VECTOR (3 downto 0);
		 Segment: out STD_LOGIC_VECTOR (6 downto 0) );
end Segment7Display;

architecture Behavioral of Segment7Display is

begin

		Segment <=  "0000001" when A = "0000" else
						"1001111" when A = "0001" else
						"0010010" when A = "0010" else
						"0000110" when A = "0011" else
						"1001100" when A = "0100" else
						"0100100" when A = "0101" else
						"0100000" when A = "0110" else
						"0001111" when A = "0111" else
						"0000000" when A = "1000" else
						"0001100" when A = "1001" else
						"0001000" when A = "1010" else
						"1100000" when A = "1011" else
						"0110001" when A = "1100" else
						"1000010" when A = "1101" else
						"0111000" when A = "1110" else
						"0111000" ;

end Behavioral;

