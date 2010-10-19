--
-- VHDL Architecture ece411.IR.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx21.ews.illinois.edu)
--          at - 20:55:57 09/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY IR IS
   PORT( 
      LoadIR    : IN     std_logic;
      MDRout    : IN     LC3b_word;
      Opcode    : OUT    LC3b_opcode;
      SrcA      : OUT    LC3b_reg;
      SrcB      : OUT    LC3b_reg;
      index6    : OUT    LC3b_index6;
      offset9   : OUT    LC3b_offset9;
      imm4      : OUT    LC3b_IMM4;
      imm5      : OUT    LC3b_IMM5;
      IR4       : OUT    std_logic;
      IR5       : OUT    std_logic;
      IR11      : OUT    std_logic;
      TrapVect8 : OUT    LC3b_TrapVect8;
      pre_dest  : OUT    LC3b_reg;
      clk       : IN     std_logic;
      offset11  : OUT    LC3b_offset11
   );

-- Declarations

END IR ;

--
ARCHITECTURE untitled OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
	------------------------------
	VHDL_REG_IR : PROCESS (CLK, LOADIR, MDROUT)
	------------------------------
	BEGIN
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOADIR = '1') THEN
				VAL_IR <= MDROUT AFTER DELAY_REG;
			END IF;
		END IF;
	END PROCESS VHDL_REG_IR;
	OPCODE    <= VAL_IR(15 DOWNTO 12);
	SRCA      <= VAL_IR(8 DOWNTO 6);
	SRCB      <= VAL_IR(2 DOWNTO 0);
	PRE_DEST  <= VAL_IR(11 DOWNTO 9);
	OFFSET9   <= VAL_IR(8 DOWNTO 0);
	offset11  <= VAL_IR(10 DOWNTO 0);
	INDEX6    <= VAL_IR(5 DOWNTO 0);
	IMM4      <= VAL_IR(3 DOWNTO 0);
	IMM5      <= VAL_IR(4 DOWNTO 0);
	IR4       <= VAL_IR(4);
	IR5       <= VAL_IR(5);
	IR11      <= VAL_IR(11);
	TrapVect8 <= VAL_IR(7 DOWNTO 0);
END ARCHITECTURE untitled;

