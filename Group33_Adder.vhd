----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:11 11/02/2023 
-- Design Name: 
-- Module Name:    Group33_HalfAdder - Behavioral 
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

entity Group33_HalfAdder is
    Port ( Num1h : in  STD_LOGIC;
           Num2h : in  STD_LOGIC;
           Sumh : out  STD_LOGIC;
           Couth : out  STD_LOGIC);
end Group33_HalfAdder;

architecture dataflow of Group33_HalfAdder is

begin

Sumh <= (Num1h xor Num2h);
Couth <= (Num1h and Num2h);





end dataflow;

