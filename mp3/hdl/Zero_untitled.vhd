--
-- VHDL Architecture ece411.Zero.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx37.ews.illinois.edu)
--          at - 20:30:04 10/07/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Zero IS
   PORT( 
      clk     : IN     std_logic;
      ZeroSig : OUT    std_logic
   );

-- Declarations

END Zero ;

--
ARCHITECTURE untitled OF Zero IS
BEGIN
	ZeroSig <= '0';
END ARCHITECTURE untitled;

