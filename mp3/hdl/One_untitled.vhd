--
-- VHDL Architecture ece411.One.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx37.ews.illinois.edu)
--          at - 20:27:41 10/07/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY One IS
   PORT( 
      clk    : IN     std_logic;
      OneSig : OUT    std_logic
   );

-- Declarations

END One ;

--
ARCHITECTURE untitled OF One IS
BEGIN
	OneSig <= '1';
END ARCHITECTURE untitled;

