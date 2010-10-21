--
-- VHDL Architecture ece411.decode8split.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx25.ews.illinois.edu)
--          at - 15:37:52 10/06/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY decode8split IS
   PORT( 
      DecodedOffset : IN     LC3b_byte;
      Decode2       : OUT    std_logic;
      Decode3       : OUT    std_logic;
      Decode4       : OUT    std_logic;
      Decode5       : OUT    std_logic;
      Decode6       : OUT    std_logic;
      Decode7       : OUT    std_logic;
      Decode0       : OUT    std_logic;
      Decode1       : OUT    std_logic
   );

-- Declarations

END decode8split ;

--
ARCHITECTURE untitled OF decode8split IS
BEGIN
  Decode0 <= DecodedOffset(0);
  Decode1 <= DecodedOffset(1);
  Decode2 <= DecodedOffset(2);
  Decode3 <= DecodedOffset(3);
  Decode4 <= DecodedOffset(4);
  Decode5 <= DecodedOffset(5);
  Decode6 <= DecodedOffset(6);
  Decode7 <= DecodedOffset(7);
END ARCHITECTURE untitled;

