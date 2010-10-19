--
-- VHDL Architecture ece411.Line_Joiner.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 17:40:42 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Line_Joiner IS
   PORT( 
      WTout1 : IN     LC3B_word;
      WTout2 : IN     LC3B_word;
      WTout3 : IN     LC3B_word;
      WTout4 : IN     LC3B_word;
      WTout5 : IN     LC3B_word;
      WTout6 : IN     LC3B_word;
      WTout7 : IN     LC3B_word;
      WTout8 : IN     LC3B_word;
      clk    : IN     std_logic;
      WCDATA : OUT    LC3B_oword
   );

-- Declarations

END Line_Joiner ;

--
ARCHITECTURE untitled OF Line_Joiner IS
BEGIN
	WCDATA <= WTout8 & WTout7 & WTout6 & WTout5 & WTout4 & WTout3 & WTout2 & WTout1;
END ARCHITECTURE untitled;

