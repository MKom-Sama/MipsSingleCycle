----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:14 06/04/2021 
-- Design Name: 
-- Module Name:    InstructionMemoryUnit_LB6_Mohammed_Komsany_18102754 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionMemoryUnit_LB6_Mohammed_Komsany_18102754 is
    Port ( addr : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction : out  STD_LOGIC_VECTOR  (31 downto 0)
			 ); 
end InstructionMemoryUnit_LB6_Mohammed_Komsany_18102754;

architecture Behavioral of InstructionMemoryUnit_LB6_Mohammed_Komsany_18102754 is

type mem_type is array (0 to 127) of std_logic_vector (7 downto 0);
signal mem_array : mem_type:=(
x"20",x"02",x"00",x"00",
x"20",x"08",x"00",x"04",
x"20",x"86",x"00",x"00",
x"20",x"A7",x"00",x"00",
x"20",x"09",x"00",x"01",
x"8C",x"C3",x"00",x"00",
x"20",x"42",x"00",x"01",
x"AC",x"E3",x"00",x"00",
x"00",x"C8",x"30",x"20",
x"00",x"E8",x"38",x"20",
x"00",x"69",x"50",x"2A",
x"11",x"40",x"FF",x"F9",
x"00",x"49",x"10",x"22",
others=>x"00");

begin
	

	instruction <= mem_array(to_integer(unsigned(addr))) & mem_array(to_integer(unsigned(addr))+1) & mem_array(to_integer(unsigned(addr))+2) & mem_array(to_integer(unsigned(addr))+3);
			
		
end Behavioral;

