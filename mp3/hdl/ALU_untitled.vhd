--
-- VHDL Architecture ece411.ALU.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx21.ews.illinois.edu)
--          at - 21:12:58 09/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
-- USE ieee.std_logic_arith.all;

ENTITY ALU IS
   PORT( 
      ALUMuxout : IN     LC3b_word;
      ALUop     : IN     LC3b_aluop;
      RFAout    : IN     LC3b_word;
      clk       : IN     std_logic;
      ALUout    : OUT    LC3b_word
   );

-- Declarations

END ALU ;

--
ARCHITECTURE untitled OF ALU IS
BEGIN
	----------------------------------------
	VHDL_ALU : PROCESS (RFAOUT, ALUMUXOUT, ALUOP)
	----------------------------------------
	VARIABLE TEMP_ALUOUT : LC3B_WORD;
	VARIABLE COUNT : integer;
	BEGIN
		-- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
		CASE ALUOP IS
			WHEN ALU_ADD =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(RFAOUT) + SIGNED(ALUMUXOUT));
			WHEN ALU_AND =>
				TEMP_ALUOUT := (RFAOUT AND ALUMUXOUT);
			WHEN ALU_NOT =>
				TEMP_ALUOUT := (RFAOUT XOR "1111111111111111");
			WHEN ALU_SLL =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR("sll"(unsigned(RFAOUT), to_integer(unsigned(ALUMUXOUT))));
			WHEN ALU_SRL =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR("srl"(unsigned(RFAOUT), to_integer(unsigned(ALUMUXOUT))));
			WHEN ALU_SRA =>
				COUNT := to_integer(unsigned(ALUMUXOUT(3 downto 0)));
				if (ALUMUXOUT(3 downto 0) = "0000") then
					TEMP_ALUOUT := RFAOUT; --Perform no shifting;
				else
					TEMP_ALUOUT(15 - COUNT downto 0) := RFAOUT(15 downto COUNT);
					TEMP_ALUOUT(15 downto (15 - COUNT + 1)) := (others => RFAOUT(15));
				end if;
			WHEN ALU_PASS =>
				TEMP_ALUOUT := (RFAOUT);
			WHEN OTHERS =>
		END CASE;
	--SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
	ALUOUT <= TEMP_ALUOUT AFTER DELAY_ALU;
	END PROCESS VHDL_ALU;
END ARCHITECTURE untitled;

