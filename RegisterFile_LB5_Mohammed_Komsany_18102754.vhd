----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:21:39 04/25/2021 
-- Design Name: 
-- Module Name:    RegisterFile_LB5_Mohammed_Komsany_18102754 - Behavioral 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile_LB5_Mohammed_Komsany_18102754 is
    Port ( 
			  clk : in STD_LOGIC;
			  RegWrite : in STD_LOGIC;
			  read_addr_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_addr_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_addr : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data_1 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile_LB5_Mohammed_Komsany_18102754;

architecture Behavioral of RegisterFile_LB5_Mohammed_Komsany_18102754 is
	type reg_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal reg_array : reg_type := (4=>x"00000000",5=>x"0000003C", Others=>x"00000000");
begin
	process(RegWrite,clk)
		begin
				
		read_data_1 <= reg_array(to_integer(unsigned(read_addr_1)));
		read_data_2 <= reg_array(to_integer(unsigned(read_addr_2)));
		
		if( rising_edge(clk) AND RegWrite = '1') then
				reg_array(to_integer(unsigned(write_addr))) <= write_data;
		end if;		

		
		end process;
		


end Behavioral;

