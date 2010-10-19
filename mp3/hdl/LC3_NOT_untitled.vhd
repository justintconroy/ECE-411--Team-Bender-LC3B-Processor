--
-- VHDL Architecture ece411.LC3_NOT.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 22:10:45 09/30/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_NOT IS
   PORT( 
      A : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_NOT ;

--
ARCHITECTURE untitled OF LC3_NOT IS
BEGIN
	F <= not(A) AFTER DELAY_LOGIC;
END ARCHITECTURE untitled;

