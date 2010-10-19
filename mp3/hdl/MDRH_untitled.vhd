--
-- VHDL Architecture ece411.MDRH.untitled
--
-- Created:
--          by - jconroy2.stdt (gllnx36.ews.illinois.edu)
--          at - 01:14:58 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY MDRH IS
   PORT( 
      MDRout  : IN     lc3b_word;
      clk     : IN     std_logic;
      MDRHout : OUT    lc3b_word
   );

-- Declarations

END MDRH ;

--
ARCHITECTURE untitled OF MDRH IS
BEGIN
	MDRHout <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & MDRout(15 downto 8);
END ARCHITECTURE untitled;

