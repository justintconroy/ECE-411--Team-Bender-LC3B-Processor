--
-- VHDL Architecture ece411.mp3_ALU.untitled
--
-- Created:
--          by - hwoods2.ece411_G3 (gllnx11.ews.illinois.edu)
--          at - 16:43:07 10/20/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp3_ALU IS
   PORT( 
         ALUMuxout      : IN     LC3b_word;
         ALUop          : IN     LC3b_aluop;
         BraddRFAMuxout : IN     LC3b_word;
         clk            : IN     std_logic;
         ALUout         : OUT    LC3b_word
   );

-- Declarations

END mp3_ALU ;

--
ARCHITECTURE untitled OF mp3_ALU IS
BEGIN
  ----------------------------------------
  VHDL_ALU : PROCESS (BraddRFAMuxout, ALUMUXOUT, ALUOP)
  ----------------------------------------
  VARIABLE TEMP_ALUOUT : LC3B_WORD;
  VARIABLE COUNT       : INTEGER;
  BEGIN
	  -- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
	  CASE ALUOP IS
		  WHEN ALU_ADD =>
			  TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(BraddRFAMuxout) + SIGNED(ALUMUXOUT));
		  WHEN ALU_AND =>
			  TEMP_ALUOUT := (BraddRFAMuxout AND ALUMUXOUT);
		  WHEN ALU_NOT =>
			  TEMP_ALUOUT := (BraddRFAMuxout XOR "1111111111111111");
		  WHEN ALU_PASS =>
			  TEMP_ALUOUT := (BraddRFAMuxout);
		  WHEN ALU_SLL =>
        TEMP_ALUOUT := STD_LOGIC_VECTOR("sll"(unsigned(BraddRFAMuxout), to_integer(unsigned(ALUMUXOUT))));
      WHEN ALU_SRL =>
        TEMP_ALUOUT := STD_LOGIC_VECTOR("srl"(unsigned(BraddRFAMuxout), to_integer(unsigned(ALUMUXOUT))));
      WHEN ALU_SRA =>
         COUNT := to_integer(unsigned(ALUMUXOUT(3 downto 0)));
         if (ALUMUXOUT(3 downto 0) = "0000") then
            TEMP_ALUOUT := BraddRFAMuxout; 
         else
            TEMP_ALUOUT(15 - COUNT downto 0) := BraddRFAMuxout(15 downto COUNT);
            TEMP_ALUOUT(15 downto (15 - COUNT + 1)) := (others => BraddRFAMuxout(15));
         end if; 	
		  WHEN OTHERS =>
	  END CASE;
  --SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
  ALUOUT <= TEMP_ALUOUT AFTER DELAY_ALU;
  END PROCESS VHDL_ALU;
END ARCHITECTURE untitled;

