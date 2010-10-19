--
-- VHDL Architecture ece411.delay1.untitled
--
-- Created:
--          by - jconroy2.stdt (gllnx28.ews.illinois.edu)
--          at - 05:12:49 10/08/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY delay1 IS
   PORT( 
      A   : IN     std_logic;
      clk : IN     std_logic;
      dA  : OUT    std_logic
   );

-- Declarations

END delay1 ;

--
ARCHITECTURE untitled OF delay1 IS
BEGIN
	dA <= A'delayed(1 ns);
END ARCHITECTURE untitled;

