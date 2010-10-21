--
-- VHDL Architecture ece411.rip3Offset.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx33.ews.illinois.edu)
--          at - 20:08:27 09/27/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY rip3Offset IS
   PORT( 
      rip3Offsetout : OUT    LC3B_INDEX;
      offset4       : IN     LC3b_offset4
   );

-- Declarations

END rip3Offset ;

--
ARCHITECTURE untitled OF rip3Offset IS
BEGIN
  rip3Offsetout <= Offset4(3) & Offset4(2) & Offset4(1);
END ARCHITECTURE untitled;

