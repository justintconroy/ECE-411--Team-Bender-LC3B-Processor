--
-- VHDL Architecture ece411.ADJ7.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx36.ews.illinois.edu)
--          at - 16:39:03 09/12/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY ADJ5 IS
   PORT( 
      clk     : IN     std_logic;
      imm5    : IN     LC3b_IMM5;
      ADJ5out : OUT    LC3b_word
   );

-- Declarations

END ADJ5 ;

--
ARCHITECTURE untitled OF ADJ5 IS
BEGIN
	ADJ5out <= imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5  AFTER DELAY_MUX2;
END ARCHITECTURE untitled;
