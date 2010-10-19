--
-- VHDL Architecture ece411.WordMux8.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 11:12:40 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux8 IS
   PORT( 
      A   : IN     LC3B_Word;
      B   : IN     LC3B_Word;
      C   : IN     LC3B_Word;
      D   : IN     LC3B_Word;
      E   : IN     LC3B_Word;
      F   : IN     LC3B_Word;
      G   : IN     LC3B_Word;
      H   : IN     LC3B_Word;
      Sel : IN     LC3B_CacheOffset;
      Y   : OUT    LC3B_Word
   );

-- Declarations

END WordMux8 ;

--
ARCHITECTURE untitled OF WordMux8 IS
BEGIN
	PROCESS (A,B,C,D,E,F,G,H,Sel)
		variable state : LC3b_word;
	BEGIN
		case Sel is
			when "000" =>
				state := A;
			when "001" =>
				state := B;
			when "010" =>
				state := C;
			when "011" =>
				state := D;
			when "100" =>
				state := E;
			when "101" =>
				state := F;
			when "110" =>
				state := G;
			when "111" =>
				state := H;
			when others =>
				state := (OTHERS => 'X');
		end case;
		Y <= state after delay_MUX8;
	end process;
END ARCHITECTURE untitled;

