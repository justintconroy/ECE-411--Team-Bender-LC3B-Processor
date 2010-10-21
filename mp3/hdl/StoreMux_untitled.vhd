--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx38.ews.illinois.edu)
--          at - 19:21:29 09/12/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      destin      : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
  Process (SrcA, Destin, StoreSR)
    variable state : LC3b_reg;
  BEGIN
    case StoreSR is 
     when '0' =>
      state := Destin;
     when '1' =>
      state := SrcA;
     when others =>
      state := (OTHERS => 'X');
    end case;
    StoreMuxout <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

