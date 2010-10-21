--
-- VHDL Architecture ece411.JSRadd.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx38.ews.illinois.edu)
--          at - 16:58:49 09/12/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JSRadd IS
   PORT( 
      ADJ11out  : IN     LC3b_word;
      PCout     : IN     LC3b_word;
      clk       : IN     std_logic;
      JSRaddout : OUT    LC3b_word
   );

-- Declarations

END JSRadd ;

--
ARCHITECTURE untitled OF JSRadd IS
BEGIN
  JSRaddout <= STD_LOGIC_VECTOR(UNSIGNED(PCOUT) + UNSIGNED(ADJ11out)) AFTER DELAY_ADDER;
END ARCHITECTURE untitled;

