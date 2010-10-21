--
-- VHDL Architecture ece411.ADJ11.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx38.ews.illinois.edu)
--          at - 16:53:07 09/12/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ11 IS
   PORT( 
      clk         : IN     std_logic;
      instruction : IN     LC3b_word;
      ADJ11out    : OUT    LC3b_word
   );

-- Declarations

END ADJ11 ;

--
ARCHITECTURE untitled OF ADJ11 IS
BEGIN
  ADJ11OUT <= instruction (10) & instruction (10) & instruction (10) & instruction (10)& instruction (10) & instruction(9) & instruction (8) & instruction(7) & instruction(6) & instruction(5) & instruction(4) & instruction(3) & instruction(2) & instruction(1) & instruction(0) & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

