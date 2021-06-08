----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:27 04/24/2021 
-- Design Name: 
-- Module Name:    ControlUnit_LB4_Mohammed_Komsany_18102754 - Behavioral 
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

entity ControlUnit_LB4_Mohammed_Komsany_18102754 is
    Port ( OpCode : in  STD_LOGIC_VECTOR(5 downto 0);
           RegDst : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           AluOp1 : out  STD_LOGIC;
           AluOp0 : out  STD_LOGIC
			  );
end ControlUnit_LB4_Mohammed_Komsany_18102754;

architecture Behavioral of ControlUnit_LB4_Mohammed_Komsany_18102754 is

begin
	
	process(OpCode)
		begin
			case (OpCode) is
				-- R-Format
				when "000000" => 
						RegDst   <= '1';
						AluSrc   <= '0';
						MemToReg <= '0';
						RegWrite <= '1';
						MemRead  <= '0';
						MemWrite <= '0';
						Branch   <= '0';
						AluOp1   <= '1';
						AluOp0   <= '0';
				-- LW		
				when "100011" => 
						RegDst   <= '0';
						AluSrc   <= '1';
						MemToReg <= '1';
						RegWrite <= '1';
						MemRead  <= '1';
						MemWrite <= '0';
						Branch   <= '0';
						AluOp1   <= '0';
						AluOp0   <= '0';		
				-- SW		
				when "101011" => 
						--RegDst   <= '1';
						AluSrc   <= '1';
						--MemToReg <= '0';
						RegWrite <= '0';
						MemRead  <= '0';
						MemWrite <= '1';
						Branch   <= '0';
						AluOp1   <= '0';
						AluOp0   <= '0';	
				-- BEQ		
				when "000100" => 
						--RegDst   <= '1';
						AluSrc   <= '0';
						--MemToReg <= '0';
						RegWrite <= '0';
						MemRead  <= '0';
						MemWrite <= '0';
						Branch   <= '1';
						AluOp1   <= '0';
						AluOp0   <= '1';	
				-- ADDI	
			  when "001000" => 
						AluOp1   <= '0';
						AluOp0   <= '0';	
						RegDst  <= '0';
						AluSrc <= '1';
						MemToReg <= '0';
						RegWrite <= '1';
						MemRead <= '0';
						MemWrite <= '0';
						Branch <= '0';
		  
				when others => null;
					
				
			end case;
		end process;

end Behavioral;

