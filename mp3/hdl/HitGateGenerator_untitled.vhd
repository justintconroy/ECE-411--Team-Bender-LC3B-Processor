--
-- VHDL Architecture ece411.HitGateGenerator.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx37.ews.illinois.edu)
--          at - 22:23:57 10/07/10
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
      clk     : IN     std_logic;
      HitGate : OUT    std_logic
   );

-- Declarations

END HitGateGenerator ;

--
ARCHITECTURE untitled OF HitGateGenerator IS
	signal dclk : std_logic;
BEGIN
	dclk <= clk'delayed(34  ns);
	HitGate <= dclk AND NOT(clk);
--	HitGate <= clk'delayed(34 ns) AND NOT(clk);

END ARCHITECTURE untitled;

