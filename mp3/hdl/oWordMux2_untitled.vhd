--
-- VHDL Architecture ece411.oWordMux2.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx33.ews.illinois.edu)
--          at - 19:02:04 09/27/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY oWordMux2 IS
   PORT( 
      A   : IN     LC3b_oword;
      B   : IN     LC3b_oword;
      Sel : IN     std_logic;
      F   : OUT    LC3b_oword
   );

-- Declarations

END oWordMux2 ;

--
ARCHITECTURE untitled OF oWordMux2 IS
BEGIN
   Process (A, B, Sel)
     variable state : LC3b_oword;
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

