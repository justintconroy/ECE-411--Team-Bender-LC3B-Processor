--
-- VHDL Architecture ece411.offset6.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx35.ews.illinois.edu)
--          at - 20:20:26 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY offset6 IS
   PORT( 
      clk        : IN     std_logic;
      index6     : IN     LC3b_index6;
      offset6out : OUT    LC3b_word
   );

-- Declarations

END offset6 ;

--
ARCHITECTURE untitled OF offset6 IS
BEGIN
  offset6out <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

