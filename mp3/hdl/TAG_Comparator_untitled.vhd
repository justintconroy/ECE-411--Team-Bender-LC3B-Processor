--
-- VHDL Architecture ece411.TAG_Comparator.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx9.ews.illinois.edu)
--          at - 16:34:11 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TAG_Comparator IS
   PORT( 
      ADDRTAG  : IN     lc3b_tag;
      WAYTAG   : IN     lc3b_tag;
      TAG_COMP : OUT    std_logic
   );

-- Declarations

END TAG_Comparator ;

--
ARCHITECTURE untitled OF TAG_Comparator IS
BEGIN
	CompareTags : process (ADDRTAG, WAYTAG)
	BEGIN
		if ADDRTAG = WAYTAG then
			TAG_COMP <= '1' AFTER DELAY_COMP;
		else
			TAG_COMP <= '0' AFTER DELAY_COMP;
		END if;
	END process CompareTags;
END ARCHITECTURE untitled;

