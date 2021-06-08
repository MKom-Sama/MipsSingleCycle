----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:27:00 06/04/2021 
-- Design Name: 
-- Module Name:    Mux2x1_5bits - Behavioral 
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

entity Mux2x1_5bits is
    Port ( A : in  STD_LOGIC_VECTOR(4 downto 0);
			  B : in STD_LOGIC_VECTOR (4 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR(4 downto 0));
end Mux2x1_5bits;

architecture Behavioral of Mux2x1_5bits is

begin
	process(A,B,S)
	 begin
		case (S) is
				
				when '0' => Output <= A;
				
				when '1' => Output <= B;
				
				when others => Output <= "00000" ;
				
		end case;
		
	end process;

end Behavioral;

