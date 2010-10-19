--
-- VHDL Architecture ece411.ByteMux2.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 15:29:07 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteMux2 IS
   PORT( 
      A   : IN     lc3b_byte;
      B   : IN     lc3b_byte;
      sel : IN     std_logic;
      F   : OUT    LC3B_byte
   );

-- Declarations

END ByteMux2 ;

--
ARCHITECTURE untitled OF ByteMux2 IS
BEGIN
	Process (A,B,Sel)
		variable state: lc3b_byte;
	begin
		case sel is
			when '0' =>
				state := A;
			when '1' =>
				state := B;
			when others =>
				state := (OTHERS => 'X');
		end case;
		F <= state after delay_MUX2;
	end process;
END ARCHITECTURE untitled;

