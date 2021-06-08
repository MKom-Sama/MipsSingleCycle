----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:17:27 04/25/2021 
-- Design Name: 
-- Module Name:    MemoryUnit_LB6_Mohammed_Komsany_18102754 - Behavioral 
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

entity MemoryUnit_LB6_Mohammed_Komsany_18102754 is
    Port ( 
			  clk : in STD_LOGIC := '0';
			  MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (31 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end MemoryUnit_LB6_Mohammed_Komsany_18102754;

architecture Behavioral of MemoryUnit_LB6_Mohammed_Komsany_18102754 is

type mem_type is array (0 to 127) of std_logic_vector (7 downto 0);
signal mem_array : mem_type := 
				(x"43",x"6F",x"6D",x"70",
            x"75",x"74",x"65",x"72",
            x"20",x"41",x"72",x"63",
            x"68",x"69",x"74",x"65",
            x"63",x"74",x"75",x"72",
            x"65",x"20",x"32",x"30",
            x"32",x"31",x"21",x"21",
            x"32",x"31",x"21",x"21",
            x"10",x"00",x"FF",x"F9",
            x"00",x"00",x"00",x"00",others => x"00");
begin
	
	process(MemWrite,MemRead,clk)
		begin
			if(rising_edge(clk) AND MemWrite = '1' AND MemRead = '0') then
				mem_array(to_integer(unsigned(addr))) <= write_data(31 downto 24);
				mem_array(to_integer(unsigned(addr))+1) <= write_data(23 downto 16);
				mem_array(to_integer(unsigned(addr))+2) <= write_data(15 downto 8);
				mem_array(to_integer(unsigned(addr))+3) <= write_data(7 downto 0);
			end if;
				
			if(falling_edge(clk) AND MemWrite = '0' AND MemRead = '1') then
					read_data <= mem_array(to_integer(unsigned(addr))) & mem_array(to_integer(unsigned(addr))+1) & mem_array(to_integer(unsigned(addr))+2) & mem_array(to_integer(unsigned(addr))+3);
			end if;
			
		end process;

end Behavioral;

