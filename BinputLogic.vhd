----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:01 11/22/2023 
-- Design Name: 
-- Module Name:    BinputLogic - Behavioral 
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

entity BinputLogic is

port(s: in std_logic_vector(1 downto 0);
	  b: in std_logic;
	  y: out std_logic);
	  
end BinputLogic;

architecture Behavioral of BinputLogic is

begin

	y <= '0' 
	when (s(0) = '0' and s(1) = '0') else 
	b when (s(0) = '1' and s(1) = '0') else 
	not b when(s(0) = '0' and s(1) = '1') else
	'1';

end Behavioral;

