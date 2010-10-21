--
-- VHDL Architecture ece411.ADJ4.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx34.ews.illinois.edu)
--          at - 16:43:51 09/14/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ4 IS
   PORT( 
      clk     : IN     std_logic;
      index6  : IN     LC3b_index6;
      ADJ4out : OUT    LC3b_word
   );

-- Declarations

END ADJ4 ;

--
ARCHITECTURE untitled OF ADJ4 IS
BEGIN
  ADJ4out <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & index6(3) & index6(2) & index6(1) & index6(0) AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

