--
-- VHDL Architecture ece411.destR7mux.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx38.ews.illinois.edu)
--          at - 19:42:00 09/12/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY destR7mux IS
   PORT( 
      clk          : IN     std_logic;
      destR7Muxsel : IN     std_logic;
      destin       : IN     LC3b_reg;
      dest         : OUT    LC3b_reg
   );

-- Declarations

END destR7mux ;

--
ARCHITECTURE untitled OF destR7mux IS
BEGIN
  Process (destin, destR7Muxsel)
    variable state : LC3b_reg;
  BEGIN
    case destR7Muxsel is 
     when '0' =>
      state := Destin;
     when '1' =>
      state := "111";
     when others =>
      state := (OTHERS => 'X');
    end case;
    dest <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

