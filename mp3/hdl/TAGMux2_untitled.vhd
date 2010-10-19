--
-- VHDL Architecture ece411.TAGMux2.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 14:25:26 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TAGMux2 IS
   PORT( 
      A   : IN     LC3B_TAG;
      B   : IN     LC3B_TAG;
      Sel : IN     std_logic;
      F   : OUT    LC3B_TAG
   );

-- Declarations

END TAGMux2 ;

--
ARCHITECTURE untitled OF TAGMux2 IS
BEGIN
  PROCESS (A, B, Sel)
    variable state : LC3b_TAG;
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

