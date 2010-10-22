--
-- VHDL Architecture ece411.ALUop_Rip.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx35.ews.illinois.edu)
--          at - 19:30:44 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ALUop_Rip IS
   PORT( 
      ContWordToMem : IN     LC3b_Control_Word;
      clk           : IN     std_logic;
      reset_l       : IN     std_logic;
      ALUop         : OUT    LC3b_aluop
   );

-- Declarations

END ALUop_Rip ;

--
ARCHITECTURE untitled OF ALUop_Rip IS
BEGIN
	ALUop <= ContWordToMem (2 downto 0);
END ARCHITECTURE untitled;

