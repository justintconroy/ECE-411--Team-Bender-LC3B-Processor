--
-- VHDL Architecture ece411.oWordSplitSplit.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 11:02:23 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY oWordSplit IS
   PORT( 
      clk          : IN     std_logic;
      oWordSplitIn : IN     lc3b_oword;
      oWordSplitout1      : OUT    LC3B_Word;
      oWordSplitout2      : OUT    LC3B_Word;
      oWordSplitout3      : OUT    LC3B_Word;
      oWordSplitout4      : OUT    LC3B_Word;
      oWordSplitout5      : OUT    LC3B_Word;
      oWordSplitout6      : OUT    LC3B_Word;
      oWordSplitout7      : OUT    LC3B_Word;
      oWordSplitout8      : OUT    LC3B_Word
   );

-- Declarations

END oWordSplit ;

--
ARCHITECTURE untitled OF oWordSplit IS
BEGIN
	oWordSplitout1 <= oWordSplitIn (15 downto 0);
	oWordSplitout2 <= oWordSplitIn (31 downto 16);
	oWordSplitout3 <= oWordSplitIn (47 downto 32);
	oWordSplitout4 <= oWordSplitIn (63 downto 48);
	oWordSplitout5 <= oWordSplitIn (79 downto 64);
	oWordSplitout6 <= oWordSplitIn (95 downto 80);
	oWordSplitout7 <= oWordSplitIn (111 downto 96);
	oWordSplitout8 <= oWordSplitIn (127 downto 112);
END ARCHITECTURE untitled;

