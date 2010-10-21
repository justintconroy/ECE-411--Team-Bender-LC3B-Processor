--
-- VHDL Architecture ece411.CpyLowByte.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx35.ews.illinois.edu)
--          at - 19:49:52 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CpyLowByte IS
   PORT( 
      RFAout        : IN     LC3b_word;
      clk           : IN     std_logic;
      CpyLowByteout : OUT    LC3b_word
   );

-- Declarations

END CpyLowByte ;

--
ARCHITECTURE untitled OF CpyLowByte IS
BEGIN
  CpyLowByteout <= RFAout(7) & RFAout(6) & RFAout(5) & RFAout(4) & RFAout(3) & RFAout(2) & RFAout(1) & RFAout(0) & RFAout(7) & RFAout(6) & RFAout(5) & RFAout(4) & RFAout(3) & RFAout(2) & RFAout(1) & RFAout(0) AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

