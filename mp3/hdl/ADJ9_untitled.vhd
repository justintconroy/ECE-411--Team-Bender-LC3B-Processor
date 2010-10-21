--
-- VHDL Architecture ece411.ADJ9.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx18.ews.illinois.edu)
--          at - 15:19:24 08/29/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9 IS
   PORT( 
      clk     : IN     std_logic;
      offset9 : IN     LC3b_offset9;
      ADJ9out : OUT    LC3b_word
   );

-- Declarations

END ADJ9 ;

--
ARCHITECTURE UNTITLED OF ADJ9 IS
BEGIN
	ADJ9OUT <= OFFSET9(8) & OFFSET9(8) & OFFSET9(8) & OFFSET9(8) & OFFSET9(8) & OFFSET9(8) & OFFSET9 & '0' AFTER DELAY_MUX2;
END UNTITLED;
