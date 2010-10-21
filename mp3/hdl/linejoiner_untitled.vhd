--
-- VHDL Architecture ece411.linejoiner.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx25.ews.illinois.edu)
--          at - 16:05:48 10/06/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY linejoiner IS
   PORT( 
      newWord0      : IN     LC3b_word;
      newWord1      : IN     LC3b_word;
      newWord2      : IN     LC3b_word;
      newWord3      : IN     LC3b_word;
      newWord4      : IN     LC3b_word;
      newWord5      : IN     LC3b_word;
      newWord6      : IN     LC3b_word;
      newWord7      : IN     LC3b_word;
      aWriteCombout : OUT    LC3b_oword
   );

-- Declarations

END linejoiner ;

--
ARCHITECTURE untitled OF linejoiner IS
BEGIN
  aWriteCombout <= newWord7 & newWord6 & newWord5 & newWord4 & newWord3 & newWord2 & newWord1 & newWord0;
END ARCHITECTURE untitled;

