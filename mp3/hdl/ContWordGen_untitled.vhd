--
-- VHDL Architecture ece411.ContWordGen.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx3.ews.illinois.edu)
--          at - 17:40:35 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ContWordGen IS
   PORT( 
      ContInputWord : IN     LC3B_Control_Input_Word;
      clk           : IN     std_logic;
      reset_l       : IN     std_logic;
      ContWordToEx  : OUT    LC3b_Control_Word
   );

-- Declarations

END ContWordGen ;

--
ARCHITECTURE untitled OF ContWordGen IS
BEGIN
	Process (ContInputWord)
		Variable INPUT_WORD : LC3B_Control_Input_Word;
		Variable OUTPUT_WORD : LC3B_Control_Word;
	BEGIN
		case INPUT_WORD is
			when ADDI0 =>
				OUTPUT_WORD <= ADDI0 after DELAY_CONTROL;
			when ADDI1 =>
				OUTPUT_WORD <= ADDI1 after DELAY_CONTROL;

		end case;
	END PROCESS;
END ARCHITECTURE untitled;
???
