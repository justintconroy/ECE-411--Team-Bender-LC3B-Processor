--
-- VHDL Architecture ece411.NZPsplit.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx18.ews.illinois.edu)
--          at - 14:50:25 08/29/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZPsplit IS
   PORT( 
      clk    : IN     std_logic;
      destin : IN     LC3b_reg;
      CheckN : OUT    std_logic;
      CheckP : OUT    std_logic;
      CheckZ : OUT    std_logic
   );

-- Declarations

END NZPsplit ;

--
ARCHITECTURE UNTITLED OF NZPSPLIT IS
BEGIN
	CHECKN <= destin(2);
	CHECKZ <= destin(1);
	CHECKP <= destin(0);
END UNTITLED;


