--
-- VHDL Architecture ece411.ADDR_SPLITTER.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx9.ews.illinois.edu)
--          at - 16:35:17 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDR_SPLITTER IS
   PORT( 
      ADDRESS    : IN     LC3b_word;
      clk        : IN     std_logic;
      ADDRTAG    : OUT    lc3b_tag;
      ADDRindex  : OUT    LC3B_cacheindex;
      ADDRoffset : OUT    LC3B_cacheoffset
   );

-- Declarations

END ADDR_SPLITTER ;

--
ARCHITECTURE untitled OF ADDR_SPLITTER IS
BEGIN
	ADDRTAG <= ADDRESS (15 downto 7);
	ADDRindex <= ADDRESS (6 downto 4);
	ADDRoffset <= ADDRESS (3 downto 1);
END ARCHITECTURE untitled;

