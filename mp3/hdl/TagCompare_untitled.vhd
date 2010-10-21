--
-- VHDL Architecture ece411.TagCompare.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx1.ews.illinois.edu)
--          at - 15:19:20 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagCompare IS
  PORT( 
     A   : IN     LC3B_tag;
     B   : IN     LC3B_tag;
     F   : OUT    std_logic
  );
-- Declarations

END TagCompare ;

--
ARCHITECTURE untitled OF TagCompare IS
BEGIN
  Compare: process(A,B)
    variable result : std_logic;
    BEGIN
      IF A = B THEN
        result := '1';
      ELSE
        result := '0';
      END IF;  
      F <= result after 5ns;    
  END PROCESS;
END ARCHITECTURE untitled;

