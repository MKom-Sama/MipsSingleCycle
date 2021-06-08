----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:26:22 06/04/2021 
-- Design Name: 
-- Module Name:    ALU_Control_LB3_Mohammed_Komsany_18102754 - Behavioral 
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

entity ALU_Control_LB3_Mohammed_Komsany_18102754 is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end ALU_Control_LB3_Mohammed_Komsany_18102754;

architecture Behavioral of ALU_Control_LB3_Mohammed_Komsany_18102754 is
	signal reducedFunct: STD_LOGIC_VECTOR (3 downto 0);

begin
	reducedFunct <= Funct(3 downto 0); -- F3 F2 F1 F0 because F4 & F5 are don't cares in all cases ( but we can't disregard them ) 
process(ALUOp,reducedFunct)
	begin 
	case (ALUOP) is
		
		when "00" => 
			--ALUOp 00
				Operation <= "0010"; --ADD
		when "01" => 
			--ALUOp 01	
				Operation <= "0110"; --SUBTRACT
		when "10" => 
			--ALUOp 10
			--We can use another switch case here too			
				if( reducedFunct = "0000" ) then
					Operation <= "0010";				
				elsif (reducedFunct = "0100") then
					Operation <= "0000";					
				elsif (reducedFunct = "0101") then 
					Operation <= "0001";
				elsif( reducedFunct = "0010" ) then
					Operation <= "0110";
				elsif (reducedFunct = "1010") then
					Operation <= "0111";
				end if;	
			
		when others => 
			--ALUOp 1 X 
				if( reducedFunct = "0010" ) then
					Operation <= "0110";
				elsif (reducedFunct = "1010") then
					Operation <= "0111";
				end if;	
		
	end case;
	
end process;		

end Behavioral;

