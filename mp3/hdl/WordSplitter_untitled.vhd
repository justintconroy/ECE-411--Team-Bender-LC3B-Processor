--
-- VHDL Architecture ece411.WordSplitter.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 17:25:37 10/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordSplitter IS
   PORT( 
      A  : IN     LC3b_word;
      hF : OUT    LC3B_BYTE;
      lf : OUT    LC3B_BYTE
   );

-- Declarations

END WordSplitter ;

--
ARCHITECTURE untitled OF WordSplitter IS
BEGIN
 lF <= A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0);
 hF <= A(15) & A(14) & A(13) & A(12) & A(11) & A(10) & A(9) & A(8);                                                
END ARCHITECTURE untitled;

