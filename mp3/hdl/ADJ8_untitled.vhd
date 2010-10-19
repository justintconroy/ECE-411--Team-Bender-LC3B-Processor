--
-- VHDL Architecture ece411.ADJ8.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx31.ews.illinois.edu)
--          at - 16:32:50 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY ADJ8 IS
   PORT( 
      TrapVect8 : IN     LC3b_TrapVect8;
      clk       : IN     std_logic;
      ADJ8out   : OUT    lc3b_word
   );

-- Declarations

END ADJ8 ;

--
ARCHITECTURE untitled OF ADJ8 IS
BEGIN
	ADJ8out <= "0000000" & TrapVect8 & '0';
END ARCHITECTURE untitled;

