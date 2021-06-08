----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:32:08 06/04/2021 
-- Design Name: 
-- Module Name:    Adder_Mohammed_Komsany_18102754 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_Mohammed_Komsany_18102754 is
	    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
				  B : in STD_LOGIC_VECTOR (31 downto 0);
              result : out  STD_LOGIC_VECTOR(31 downto 0) );
				  
end Adder_Mohammed_Komsany_18102754;

architecture Behavioral of Adder_Mohammed_Komsany_18102754 is

begin
	
	result <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(A))+to_integer(unsigned(B))), 32));
	
end Behavioral;

