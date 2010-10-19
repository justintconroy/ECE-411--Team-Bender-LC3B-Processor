--
-- VHDL Architecture ece411.LC3_NAND.untitled
--
-- Created:
--          by - jconroy2.stdt (gllnx28.ews.illinois.edu)
--          at - 02:57:54 10/08/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_NAND IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_NAND ;

--
ARCHITECTURE untitled OF LC3_NAND IS
BEGIN
	F <= NOT(A AND B);
END ARCHITECTURE untitled;

