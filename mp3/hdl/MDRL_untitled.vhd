--
-- VHDL Architecture ece411.MDRL.untitled
--
-- Created:
--          by - jconroy2.stdt (gllnx36.ews.illinois.edu)
--          at - 01:13:03 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY MDRL IS
   PORT( 
      MDRout  : IN     lc3b_word;
      clk     : IN     std_logic;
      MDRLout : OUT    lc3b_word
   );

-- Declarations

END MDRL ;

--
ARCHITECTURE untitled OF MDRL IS
BEGIN
	MDRLout <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & MDRout(7 downto 0);
END ARCHITECTURE untitled;

