--
-- VHDL Architecture ece411.linesplitter.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 18:21:28 10/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY linesplitter IS
   PORT( 
      word0       : OUT    LC3b_word;
      word1       : OUT    LC3b_word;
      word2       : OUT    LC3b_word;
      word3       : OUT    LC3b_word;
      word4       : OUT    LC3b_word;
      word5       : OUT    LC3b_word;
      word6       : OUT    LC3b_word;
      word7       : OUT    LC3b_word;
      WdataMuxout : IN     LC3b_oword
   );

-- Declarations

END linesplitter ;

--
ARCHITECTURE untitled OF linesplitter IS
BEGIN
  word0 <= wDataMuxout(15 DOWNTO 0);
  word1 <= wdataMuxout(31 DOWNTO 16);
  word2 <= wdataMuxout(47 DOWNTO 32);
  word3 <= wdataMuxout(63 DOWNTO 48);
  word4 <= wdataMuxout(79 DOWNTO 64);
  word5 <= wdataMuxout(95 DOWNTO 80);
  word6 <= wdataMuxout(111 DOWNTO 96);
  word7 <= wdataMuxout(127 DOWNTO 112);
END ARCHITECTURE untitled;

