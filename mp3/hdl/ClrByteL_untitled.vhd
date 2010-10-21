--
-- VHDL Architecture ece411.ClrByteL.untitled
--
-- Created:
--          by - hwoods2.stdt (gllnx38.ews.illinois.edu)
--          at - 01:35:50 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ClrByteL IS
   PORT( 
      RFMuxout    : IN     LC3b_word;
      clk         : IN     std_logic;
      ClrByteLout : OUT    LC3b_word
   );

-- Declarations

END ClrByteL ;

--
ARCHITECTURE untitled OF ClrByteL IS
BEGIN
    ClrByteLout <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & RFMuxout(7) & RFMuxout(6) & RFMuxout(5) & RFMuxout(4) & RFMuxout(3) &RFMuxout(2) & RFMuxout(1) & RFMuxout(0) after Delay_MUX2; 
END ARCHITECTURE untitled;

