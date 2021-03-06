--
-- VHDL Architecture ece411.WordComb.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 18:08:49 10/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordComb IS
   PORT( 
      hA : IN     LC3B_BYTE;
      lA : IN     LC3B_BYTE;
      F  : OUT    LC3b_word
   );

-- Declarations

END WordComb ;

--
ARCHITECTURE untitled OF WordComb IS
BEGIN
  F <= hA(7) & hA(6) & hA(5) & hA(4) & hA(3) & hA(2) & hA(1) & hA(0) & lA(7) & lA(6) & lA(5) & lA(4) & lA(3) & lA(2) & lA(1) & lA(0);
END ARCHITECTURE untitled;

