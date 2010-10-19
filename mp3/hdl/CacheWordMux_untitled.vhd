--
-- VHDL Architecture ece411.CacheWordMux.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 10:56:01 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CacheWordMux IS
   PORT( 
      O       : IN     lc3b_oword;
      WordSel : IN     lc3b_cacheoffset;
      W       : OUT    lc3b_word
   );

-- Declarations

END CacheWordMux ;

--
ARCHITECTURE untitled OF CacheWordMux IS
BEGIN
END ARCHITECTURE untitled;

