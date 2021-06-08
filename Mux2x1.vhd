----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:45 03/08/2021 
-- Design Name: 
-- Module Name:    Mux2x1 - Behavioral 
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

entity Mux2x1 is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
	
	 process(A,S)
	 begin
	 
		case (S) is
				
				when '0' => Output <= A(0);
				
				when '1' => Output <= A(1);
				
				when others => Output <= '0';
				
		end case;
		
	end process;

end Behavioral;

















