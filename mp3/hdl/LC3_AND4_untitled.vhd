--
-- VHDL Architecture ece411.LC3_AND4.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 11:23:26 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_AND4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_AND4 ;

--
ARCHITECTURE untitled OF LC3_AND4 IS
BEGIN
	F <= (A AND B AND C AND D) AFTER DELAY_LOGIC4;
END ARCHITECTURE untitled;

