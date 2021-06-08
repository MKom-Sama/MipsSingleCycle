----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:05 03/07/2021 
-- Design Name: 
-- Module Name:    ALU_Mohammed_Komsany_18102754 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Mohammed_Komsany_18102754 is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0); -- SELECTOR
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
			  Zero: out STD_LOGIC 
			  );
end ALU_Mohammed_Komsany_18102754;

architecture Behavioral of ALU_Mohammed_Komsany_18102754 is

begin

process(A,B,S)


begin

		case (S) is
			
			--AND
				when "0000" => O <= A and B;
			--OR
				when "0001" => O <= A or B;
			--ADD
				when "0010" => O <= A + B;
			--SUBRACT
				when "0110" => O <= A - B;
			--SET ON LESS THAN
				when "0111" => 
					if (A < B) then 
						O <= (0 => '1',others => '0'); 
					else O <= (others => '0');
					end if;	
			--NOR
				when "1100" => O <= A nor B;
					
			when others => O <= ( others => '0');
		end case;
		
		-- ZERO FLAG CHECK
		if( A = B ) then
			Zero <= '1';
		else	
			Zero <= '0';
		end if;
		
end process;

end Behavioral;

