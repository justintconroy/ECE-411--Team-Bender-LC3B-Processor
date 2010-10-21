--
-- VHDL Architecture ece411.ADJ56Mux.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx34.ews.illinois.edu)
--          at - 19:42:13 09/10/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ56Mux IS
   PORT( 
      ADJ45out    : IN     LC3b_word;
      ADJ56MuxSel : IN     std_logic;
      ADJ6out     : IN     LC3b_word;
      clk         : IN     std_logic;
      ADJ56out    : OUT    LC3b_word
   );

-- Declarations

END ADJ56Mux ;

--
ARCHITECTURE untitled OF ADJ56Mux IS
BEGIN
  Process (ADJ45out, ADJ6out, ADJ56MuxSel)
    variable state : LC3b_word;
  BEGIN
    case ADJ56MuxSel is 
     when '1' =>
      state := ADJ45out;
     when '0' =>
      state := ADJ6out;
     when others =>
      state := (OTHERS => 'X');
    end case;
    ADJ56out <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

