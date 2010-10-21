--
-- VHDL Architecture ece411.ADDRcomb.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 19:01:15 09/28/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDRcomb IS
   PORT( 
      evictTag : IN     LC3B_tag;
      index    : IN     LC3b_index;
      wADDRESS : OUT    LC3b_word
   );

-- Declarations

END ADDRcomb ;

--
ARCHITECTURE untitled OF ADDRcomb IS
BEGIN
  wADDRESS <= evictTag & index & '0' & '0' & '0' & '0';
END ARCHITECTURE untitled;

