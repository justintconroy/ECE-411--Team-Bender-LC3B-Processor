--
-- VHDL Architecture ece411.ContInputRip.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx3.ews.illinois.edu)
--          at - 18:06:22 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ContInputRip IS
   PORT( 
      clk           : IN     std_logic;
      instruction   : IN     LC3b_word;
      reset_l       : IN     std_logic;
      ContInputWord : OUT    LC3B_Control_Input_Word
   );

-- Declarations

END ContInputRip ;

--
ARCHITECTURE untitled OF ContInputRip IS
BEGIN
	ContInputWord <= instruction(15 downto 12) & instruction(11) & instruction(5);
END ARCHITECTURE untitled;

