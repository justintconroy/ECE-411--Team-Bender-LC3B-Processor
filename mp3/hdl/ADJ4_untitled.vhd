--
-- VHDL Architecture ece411.ADJ4.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx31.ews.illinois.edu)
--          at - 15:11:14 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY ADJ4 IS
   PORT( 
      clk     : IN     std_logic;
      imm4    : IN     LC3b_IMM4;
      ADJ4out : OUT    lc3b_word
   );

-- Declarations

END ADJ4 ;

--
ARCHITECTURE untitled OF ADJ4 IS
BEGIN
	ADJ4out <= "000000000000" & imm4  AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

