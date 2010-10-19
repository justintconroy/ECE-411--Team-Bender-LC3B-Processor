--
-- VHDL Architecture ece411.ADDR_COMB.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 14:34:15 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDR_COMB IS
   PORT( 
      ADDRindex : IN     LC3B_cacheindex;
      clk       : IN     std_logic;
      evictTAG  : IN     LC3B_TAG;
      WBADDR    : OUT    LC3B_Word
   );

-- Declarations

END ADDR_COMB ;

--
ARCHITECTURE untitled OF ADDR_COMB IS
BEGIN
	WBADDR <= evictTAG & ADDRindex & "0000";
END ARCHITECTURE untitled;

