--
-- VHDL Architecture ece411.ADJ8.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx36.ews.illinois.edu)
--          at - 16:37:27 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ8 IS
   PORT( 
      clk         : IN     std_logic;
      instruction : IN     LC3b_word;
      ADJ8out     : OUT    LC3b_word
   );

-- Declarations

END ADJ8 ;

--
ARCHITECTURE untitled OF ADJ8 IS
BEGIN
  ADJ8out <= '0' & '0' & '0' & '0' &'0' & '0' & '0' & instruction(7) & instruction(6) & instruction(5) & instruction(4) & instruction(3) & instruction(2) & instruction(1) &instruction(0) & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

