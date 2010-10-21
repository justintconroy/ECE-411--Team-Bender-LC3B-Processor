--
-- VHDL Architecture ece411.ADDRSplitter.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx28.ews.illinois.edu)
--          at - 19:28:35 09/25/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDRSplitter IS
   PORT( 
      Address : IN     LC3b_word;
      Tag     : OUT    LC3B_tag;
      index   : OUT    LC3b_index;
      offset4 : OUT    LC3b_offset4
   );

-- Declarations

END ADDRSplitter ;

--
ARCHITECTURE untitled OF ADDRSplitter IS
SIGNAL SPLIT_ADDR : LC3B_WORD;
BEGIN
  SPLIT_ADDR <= ADDRESS;
  Tag   <= SPLIT_ADDR(15 DOWNTO 7);
  index <= SPLIT_ADDR(6 DOWNTO 4);
  offset4 <= SPLIT_ADDR(3 DOWNTO 0);
END ARCHITECTURE untitled;

