--
-- VHDL Architecture ece411.OWordMux2.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx9.ews.illinois.edu)
--          at - 16:11:42 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux2 IS
   PORT( 
      A   : IN     lc3b_oword;
      B   : IN     lc3b_oword;
      Sel : IN     std_logic;
      F   : OUT    lc3b_oword
   );

-- Declarations

END OWordMux2 ;

--
ARCHITECTURE untitled OF OWordMux2 IS
BEGIN
  PROCESS (A, B, Sel)
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

