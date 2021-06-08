----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:02:10 06/04/2021 
-- Design Name: 
-- Module Name:    MIPS_Mohammed_Komsany_18102754 - Behavioral 
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

entity MIPS_Mohammed_Komsany_18102754 is
		Port ( clk: in STD_LOGIC := '0');
end MIPS_Mohammed_Komsany_18102754;
	
architecture Behavioral of MIPS_Mohammed_Komsany_18102754 is

	--COMPONENTS 
	component PCCounter_LB7_Mohammed_Komsany_18102754 is
    Port ( 
			  clk : in STD_LOGIC;
			  Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
	end component;
	
	component Adder_Mohammed_Komsany_18102754 is
	    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
				  B : in STD_LOGIC_VECTOR (31 downto 0);
              result : out  STD_LOGIC_VECTOR(31 downto 0) );
				  
	end component;
	
	signal pc_current : STD_LOGIC_VECTOR(31 downto 0);
	signal pc_next    : STD_LOGIC_VECTOR(31 downto 0);
	signal instruct : STD_LOGIC_VECTOR (31 downto 0);
	signal Op : STD_LOGIC_VECTOR (3 downto 0);
	
	signal branch_tgt : STD_LOGIC_VECTOR (31 downto 0);
	signal pc_input   : STD_LOGIC_VECTOR (31 downto 0);
	signal temp : STD_LOGIC;
	signal temp_alu_op : STD_LOGIC_VECTOR ( 1 downto 0);
	
	-- SignExt
		signal imm_ext : STD_LOGIC_VECTOR(31 downto 0);
		
	-- ALU
		signal alu_result : STD_LOGIC_VECTOR(31 downto 0);
		signal alu_zero   : STD_LOGIC;
	
	-- Shift Left 2
		signal shift_left_imm : STD_LOGIC_VECTOR(31 downto 0);
	
	-- REGISTER
		signal read_data_1: STD_LOGIC_VECTOR(31 downto 0);
		signal read_data_2: STD_LOGIC_VECTOR(31 downto 0);
		signal write_data : STD_LOGIC_VECTOR(31 downto 0);
		
	-- Memory
		signal mem_read_data : STD_LOGIC_VECTOR (31 downto 0);
	
	-- MUXES OUTPUT
		-- MUX Mux2x1 5bits ( A: ins[20:16],B:ins[15:11],S:RegDST)
		signal write_reg_addr : STD_LOGIC_VECTOR (4 downto 0);
		signal write_reg_data : STD_LOGIC_VECTOR (31 downto 0);
		signal alu_input_2 : STD_LOGIC_VECTOR (31 downto 0);
		
	-- Control Signals
		signal RegDst : STD_LOGIC;
		signal AluSrc : STD_LOGIC;
		signal MemToReg: STD_LOGIC;
		signal RegWrite: STD_LOGIC;
		signal MemRead: STD_LOGIC;
		signal MemWrite: STD_LOGIC;
		signal Branch: STD_LOGIC;
		signal AluOp1: STD_LOGIC;
		signal AluOp0: STD_LOGIC;
begin
	
	PC_Counter : PCCounter_LB7_Mohammed_Komsany_18102754 port map(clk,pc_input, pc_current);	
	
	-- random 
		temp <= Branch and alu_zero;
		temp_alu_op <= AluOp1 & AluOp0;
		
	-- GET INSTRUCTION FROM INSTRUCTION MEMORY
	Instruction_Memory: entity work.InstructionMemoryUnit_LB6_Mohammed_Komsany_18102754 
		port map(
			addr => pc_current,
			instruction=>instruct
		);
	

	-- CONTROL UNIT AND DECODING CONTROL SIGNALS
	Control_Unit : entity work.ControlUnit_LB4_Mohammed_Komsany_18102754
		port map(
			OpCode => instruct(31 downto 26),
			RegDst => RegDst,
			AluSrc => AluSrc,
			MemToReg => MemToReg,
			RegWrite => RegWrite,
			MemRead  => MemRead,
			MemWrite => MemWrite,
			Branch => Branch,
			AluOp1 => AluOp1,
			AluOp0 => AluOp0
		);
	
	-- SignExt
	Immediate_Extend : entity work.SignExtend_LB7_Mohammed_Komsany_18102754
		port map(
			Input => instruct(15 downto 0),
			Output => imm_ext
		);
	
	-- Shift Left imm
	Shift_Left_Immediate: entity work.Shift_Left_2_Mohammed_Komsany_18102754
		port map(
			Input => imm_ext,
			Output => shift_left_imm
			);
	
	
	-- Mux2x1 RegDst ? Instruct[20:16] : Instruct [15:11] 	
	Mux_2x1_Write_Register_Addr : entity work.Mux2x1_5bits
		port map(
			A => instruct(20 downto 16),
			B => instruct(15 downto 11),
			S => RegDst,
			Output => write_reg_addr
		);
	
	-- Mux2x1  MemToReg ? ReadData : AluResult
   Mux_2x1_Write_Register_Data : entity work.Mux2x1_32bits
		port map(
		   A => alu_result,
			B => mem_read_data,
			S => MemToReg,
			Output => write_reg_data
		);
	
	-- Mux2x1 AluSrc ? immSignExt : read_data_2
	Mux_2x1_ALUInput_2 : entity work.Mux2x1_32bits
		port map(
			A => read_data_2,
			B => imm_ext,
			S => AluSrc,
			Output => alu_input_2
		);
	-- Mux2x1 MemToReg ? mem_read_data : alu_result
		Mux_2x1_reg_write_data : entity work.Mux2x1_32bits
		port map(
			A => alu_result,
			B => mem_read_data,
			S => MemToReg,
			Output => write_data
		);
	
	-- Mux2x1 if ( branch and Zero ) ? branch_tgt : pc_next
		Mux_2x1_pc_input : entity work.Mux2x1_32bits
			port map(
				A => pc_next,
				B => branch_tgt,
				S => temp,
				Output => pc_input
			);
		
	-- ADDERS
		-- PC + 4
		PC_Add_4 : Adder_Mohammed_Komsany_18102754 port map(pc_current,std_logic_vector(to_unsigned(4,32)),pc_next);
		
		-- Branch_tgt_addr
		Branch_target_addr : Adder_Mohammed_Komsany_18102754 port map(pc_next,shift_left_imm,branch_tgt);
				
		
	--ALU 
		-- ALU Control
			ALU_Control_Unit : entity work.ALU_Control_LB3_Mohammed_Komsany_18102754
				port map(
					AluOP => temp_alu_op,
					Funct => instruct(5 downto 0),
					Operation => Op
				);
		-- ALU Unit
			ALU_Unit : entity work.ALU_Mohammed_Komsany_18102754
				port map(
					S => Op,
					A => read_data_1,
					B => alu_input_2,
					O => alu_result,
					Zero => alu_zero
				);
		
	-- USE REGISTER FILE
	Register_File : entity work.RegisterFile_LB5_Mohammed_Komsany_18102754
		port map(
			clk=> clk,
			RegWrite => RegWrite,
			read_addr_1 => instruct(25 downto 21),
			read_addr_2 => instruct(20 downto 16),
			write_addr => write_reg_addr,
			write_data => write_data,
			read_data_1 => read_data_1,
			read_data_2 => read_data_2
		);
	-- USE MEMORY UNIT
	Memory_Unit : entity work.MemoryUnit_LB6_Mohammed_Komsany_18102754
		port map(
			clk => clk,
			MemWrite => MemWrite,
			MemRead  => MemRead,
			addr => alu_result,
			write_data => read_data_2,
			read_data => mem_read_data
		); 
	
end Behavioral;

