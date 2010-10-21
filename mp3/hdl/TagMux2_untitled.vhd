--
-- VHDL Architecture ece411.TagMux2.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 21:08:29 09/28/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagMux2 IS
   PORT( 
      A   : IN     LC3b_tag;
      B   : IN     LC3b_tag;
      Sel : IN     std_logic;
      F   : OUT    LC3b_tag
   );

-- Declarations

END TagMux2 ;

--
ARCHITECTURE untitled OF TagMux2 IS
BEGIN
  Process (A, B, Sel)
    variable state : LC3b_tag;
  BEGIN
    case Sel is 
     when '0' =>
      state := A;
     when '1' =>
      state := B;
     when others =>
      state := (OTHERS => 'X');
    end case;
    F <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

