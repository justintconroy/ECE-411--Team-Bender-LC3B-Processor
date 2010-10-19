--
-- VHDL Architecture ece411.StoreMux1.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx21.ews.illinois.edu)
--          at - 11:30:10 09/16/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY StoreMux1 IS
   PORT( 
      clk      : IN     std_logic;
      pre_dest : IN     LC3b_reg;
      dest     : OUT    LC3b_reg
   );

-- Declarations

END StoreMux1 ;

--
ARCHITECTURE untitled OF StoreMux1 IS
BEGIN
END ARCHITECTURE untitled;

