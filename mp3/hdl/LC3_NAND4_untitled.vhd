--
-- VHDL Architecture ece411.LC3_NAND4.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 02:51:34 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_NAND4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_NAND4 ;

--
ARCHITECTURE untitled OF LC3_NAND4 IS
BEGIN
	F <= NOT(A AND B AND C AND D);
END ARCHITECTURE untitled;

