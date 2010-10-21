--
-- VHDL Architecture ece411.OneNSDelay.untitled
--
-- Created:
--          by - hwoods2.stdt (gllnx26.ews.illinois.edu)
--          at - 00:35:35 10/08/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OneNSDelay IS
   PORT( 
      A : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END OneNSDelay ;

--
ARCHITECTURE untitled OF OneNSDelay IS
BEGIN
  F <= A after 1ns;
END ARCHITECTURE untitled;

