--
-- VHDL Architecture ece411.ALUtoL.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx31.ews.illinois.edu)
--          at - 11:42:24 09/17/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY ALUtoL IS
   PORT( 
      ALUout    : IN     LC3b_word;
      clk       : IN     std_logic;
      ALUtoLout : OUT    lc3b_word
   );

-- Declarations

END ALUtoL ;

--
ARCHITECTURE untitled OF ALUtoL IS
BEGIN
	ALUtoLout <= "00000000" & ALUout(7 downto 0);
END ARCHITECTURE untitled;

