--
-- VHDL Architecture ece411.LC3_OR.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 00:42:12 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LC3_OR IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END LC3_OR ;

--
ARCHITECTURE untitled OF LC3_OR IS
BEGIN
	F <= A OR B AFTER DELAY_LOGIC;
END ARCHITECTURE untitled;

