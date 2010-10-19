--
-- VHDL Architecture ece411.ADJ6ns.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx39.ews.illinois.edu)
--          at - 22:21:18 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6ns IS
   PORT( 
      clk       : IN     std_logic;
      index6    : IN     LC3b_index6;
      ADJ6nsout : OUT    std_logic_vector (15 DOWNTO 0)
   );

-- Declarations

END ADJ6ns ;

--
ARCHITECTURE untitled OF ADJ6ns IS
BEGIN
	ADJ6nsOUT <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

