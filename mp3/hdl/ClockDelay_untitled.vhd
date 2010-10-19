--
-- VHDL Architecture ece411.ClockDelay.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 10:48:54 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY HitGateGenerator IS
   PORT( 
      clk  : IN     std_logic;
      HitGate : OUT    std_logic
   );

-- Declarations

END HitGateGenerator ;

--
ARCHITECTURE untitled OF HitGateGenerator IS
BEGIN
	HitGate <= clk'delayed(34 ns) AND NOT(clk);
END ARCHITECTURE untitled;

