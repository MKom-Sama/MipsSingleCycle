
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:25:35 04/25/2021 
-- Design Name: 
-- Module Name:    PCCounter_LB7_Mohammed_Komsany_18102754 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PCCounter_LB7_Mohammed_Komsany_18102754 is
    Port ( 
			  clk : in STD_LOGIC;
			  Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end PCCounter_LB7_Mohammed_Komsany_18102754;

architecture Behavioral of PCCounter_LB7_Mohammed_Komsany_18102754 is
signal  storage : STD_LOGIC_VECTOR( 31 downto 0) := x"00000000";
begin
	process (clk)
		begin
			
			if(rising_edge(clk)) then
				Output <= storage;
			end if;
			
			if(falling_edge(clk)) then
				storage <= Input;
			end if;
			
		end process;

end Behavioral;

