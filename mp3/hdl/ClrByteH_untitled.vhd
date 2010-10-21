--
-- VHDL Architecture ece411.ClrByteH.untitled
--
-- Created:
--          by - hwoods2.stdt (gllnx38.ews.illinois.edu)
--          at - 01:11:22 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ClrByteH IS
   PORT( 
      RFMuxout    : IN     LC3b_word;
      clk         : IN     std_logic;
      ClrByteHout : OUT    LC3b_word
   );

-- Declarations

END ClrByteH ;

--
ARCHITECTURE untitled OF ClrByteH IS
BEGIN
  ClrByteHout <= '0' & '0'& '0' & '0' & '0' & '0' & '0' & '0' & RFMuxout(15) & RFMuxout(14) & RFMuxout(13) & RFMuxout(12) & RFMuxout(11) &RFMuxout(10) & RFMuxout(9) & RFMuxout(8) after Delay_MUX2; 
END ARCHITECTURE untitled;

