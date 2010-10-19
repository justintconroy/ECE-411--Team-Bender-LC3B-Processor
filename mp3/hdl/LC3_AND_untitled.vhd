--
-- VHDL Architecture ece411.LC3_AND.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx9.ews.illinois.edu)
--          at - 16:45:48 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_AND IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_AND ;

--
ARCHITECTURE untitled OF LC3_AND IS
BEGIN
	F <= A AND B after DELAY_LOGIC;
END ARCHITECTURE untitled;

