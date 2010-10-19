--
-- VHDL Architecture ece411.ADDR0.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx39.ews.illinois.edu)
--          at - 23:40:00 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDR0 IS
   PORT( 
      ADDRESS  : IN     LC3b_word;
      clk      : IN     std_logic;
      ADDR0out : OUT    std_logic
   );

-- Declarations

END ADDR0 ;

--
ARCHITECTURE untitled OF ADDR0 IS
BEGIN
	ADDR0out <= ADDRESS(0);
END ARCHITECTURE untitled;

