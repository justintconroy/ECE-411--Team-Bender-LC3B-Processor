--
-- VHDL Architecture ece411.WAY_BLOCK.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx9.ews.illinois.edu)
--          at - 16:26:55 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WAY_BLOCK IS
   PORT( 
      ValidIn    : IN     std_logic;
      WAYTAGin   : IN     lc3b_tag;
      WAYindex   : IN     lc3b_cacheindex;
      WayDataIn  : IN     lc3b_oword;
      WayWrite   : IN     std_logic;
      dirtyIn    : IN     std_logic;
      ValidOut   : OUT    std_logic;
      WAYTAGout  : OUT    lc3b_tag;
      WayDataOut : OUT    lc3b_oword;
      dirtyOut   : OUT    std_logic
   );

-- Declarations

END WAY_BLOCK ;

--
ARCHITECTURE untitled OF WAY_BLOCK IS
BEGIN
END ARCHITECTURE untitled;

