----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:01 11/22/2023 
-- Design Name: 
-- Module Name:    Multiplexor4to1 - Behavioral 
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

entity Multiplexor4to1 is

	port(a, b, c, d: in std_logic;
		  s: in std_logic_vector(1 downto 0);
		  z: out std_logic);

end Multiplexor4to1;

architecture Behavioral of Multiplexor4to1 is

begin

process (a, b, c, d, s) is begin 

	if (s(0) = '0' and s(1) = '0') then z <= a; elsif
		(s(0) = '1' and s(1) = '0') then z <= b; elsif
		(s(0) = '0' and s(1) = '1') then z <= c; else
											      z <= d; end if;
											 
end process ; 
											  
end Behavioral;

