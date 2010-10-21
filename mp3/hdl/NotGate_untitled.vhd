--
-- VHDL Architecture ece411.NotGate.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx1.ews.illinois.edu)
--          at - 16:03:59 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NotGate IS
   PORT( 
      A : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END NotGate ;

--
ARCHITECTURE untitled OF NotGate IS
BEGIN
  F <= A XOR '1' after 1ns;
END ARCHITECTURE untitled;

