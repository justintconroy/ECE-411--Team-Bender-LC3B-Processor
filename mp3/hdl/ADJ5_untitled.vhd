--
-- VHDL Architecture ece411.ADJ5.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx34.ews.illinois.edu)
--          at - 19:32:52 09/10/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ5 IS
   PORT( 
      clk     : IN     std_logic;
      index6  : IN     LC3b_index6;
      ADJ5out : OUT    LC3b_word
   );

-- Declarations

END ADJ5 ;

--
ARCHITECTURE untitled OF ADJ5 IS
BEGIN
  ADJ5OUT <= INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(4) & INDEX6(3) & INDEX6(2) & INDEX6(1) & INDEX6(0) AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

