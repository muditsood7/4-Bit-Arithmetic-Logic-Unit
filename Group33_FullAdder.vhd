----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:03 11/02/2023 
-- Design Name: 
-- Module Name:    Group33_FullAdder - Behavioral 
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

entity Group33_FullAdder is
    Port ( Cinf : in  STD_LOGIC;
           Num2f : in  STD_LOGIC;
           Num1f : in  STD_LOGIC;
           Coutf : out  STD_LOGIC;
           Sumf : out  STD_LOGIC);
end Group33_FullAdder;

architecture structural of Group33_FullAdder is

	component Group33_HalfAdder is
	
		port(
			Num1h: in STD_LOGIC;
			Num2h: in STD_LOGIC;
			Sumh: out STD_LOGIC;
			Couth: out STD_LOGIC
			);
			
		end component Group33_HalfAdder;
		
		signal m: STD_LOGIC;
		signal n: STD_LOGIC;
		signal p: STD_LOGIC;
		
begin

HA1: Group33_HalfAdder port map(Num1h => Num1f, Num2h => Num2f, Sumh => m, Couth => n);
HA2: Group33_HalfAdder port map(Num1h => m, Num2h => Cinf, Sumh =>Sumf, Couth => p);

Coutf <= (p or n);
  
end structural;

