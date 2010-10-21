--
-- VHDL Architecture ece411.Decoder8.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 18:46:27 10/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Decoder8 IS
   PORT( 
      A : IN     LC3B_INDEX;
      F : OUT    LC3b_byte
   );

-- Declarations

END Decoder8 ;

--
ARCHITECTURE untitled OF Decoder8 IS
BEGIN
  Process (A)
    variable state : LC3b_byte;
  BEGIN
    case A is 
     when "000" =>
      state := "00000001";
     when "001" =>
      state := "00000010";
     when "010" =>
      state := "00000100";
     when "011" =>
      state := "00001000";
     when "100" =>
      state := "00010000";
     when "101" =>
      state := "00100000";
     when "110" =>
      state := "01000000";
     when "111" =>
      state := "10000000";  
     when others =>
      state := (OTHERS => 'X');
    end case;
    F <= state after 2ns;
  END PROCESS;
END ARCHITECTURE untitled;

