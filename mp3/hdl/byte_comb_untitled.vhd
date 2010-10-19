--
-- VHDL Architecture ece411.byte_comb.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 15:46:25 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY byte_comb IS
   PORT( 
      WriteCombMuxHout : IN     LC3B_byte;
      WriteCombMuxLout : IN     LC3B_byte;
      WTout            : OUT    LC3B_word
   );

-- Declarations

END byte_comb ;

--
ARCHITECTURE untitled OF byte_comb IS
BEGIN
	WTout <= WriteCombMuxHout & WriteCombMuxLout;
END ARCHITECTURE untitled;

