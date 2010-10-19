--
-- VHDL Architecture ece411.reg7.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx39.ews.illinois.edu)
--          at - 16:21:53 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY reg7 IS
   PORT( 
      reg7out : OUT    LC3b_reg;
      clk     : IN     std_logic
   );

-- Declarations

END reg7 ;

--
ARCHITECTURE untitled OF reg7 IS
BEGIN
	reg7out <= '1' & '1' & '1';
END ARCHITECTURE untitled;

