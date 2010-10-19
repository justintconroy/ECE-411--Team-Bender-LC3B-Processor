--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx21.ews.illinois.edu)
--          at - 21:15:15 09/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      pre_dest    : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
	PROCESS (pre_dest, SrcA, StoreSR)
		variable state : LC3B_reg;
	BEGIN
		case StoreSR is
			when '0' =>
				state := pre_dest;
			when '1' =>
				state := SrcA;
			when others =>
				state := (others => 'X');
		END CASE;
	StoreMuxout <= state after delay_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

