--
-- VHDL Architecture ece411.dclk.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx24.ews.illinois.edu)
--          at - 18:47:16 09/28/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY dclk IS
   PORT( 
      clk     : IN     std_logic;
      dclkout : OUT    std_logic
   );

-- Declarations

END dclk ;

--
ARCHITECTURE untitled OF dclk IS
BEGIN
  dclkout <= clk' delayed(34ns); 
END ARCHITECTURE untitled;

