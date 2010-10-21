--
-- VHDL Architecture ece411.mp3_ALU.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx3.ews.illinois.edu)
--          at - 17:16:54 10/21/10
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
      ALU_A     : IN     LC3b_word;
      ALU_B     : IN     LC3b_word;
      ALUop     : IN     LC3b_aluop;
      clk       : IN     std_logic;
      ALUout    : OUT    LC3b_word
   );

-- Declarations

END mp3_ALU ;

--
ARCHITECTURE untitled OF mp3_ALU IS
BEGIN
	----------------------------------------
	VHDL_ALU : PROCESS (ALU_B, ALU_A, ALUOP)
	----------------------------------------
	VARIABLE TEMP_ALUOUT : LC3B_WORD;
	VARIABLE COUNT : integer;
	BEGIN
		-- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
		CASE ALUOP IS
			WHEN ALU_ADD =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(ALU_B) + SIGNED(ALU_A));
			WHEN ALU_AND =>
				TEMP_ALUOUT := (ALU_B AND ALU_A);
			WHEN ALU_NOT =>
				TEMP_ALUOUT := (ALU_B XOR "1111111111111111");
			WHEN ALU_SLL =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR("sll"(unsigned(ALU_B), to_integer(unsigned(ALU_A))));
			WHEN ALU_SRL =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR("srl"(unsigned(ALU_B), to_integer(unsigned(ALU_A))));
			WHEN ALU_SRA =>
				COUNT := to_integer(unsigned(ALU_A(3 downto 0)));
				if (ALU_A(3 downto 0) = "0000") then
					TEMP_ALUOUT := ALU_B; --Perform no shifting;
				else
					TEMP_ALUOUT(15 - COUNT downto 0) := ALU_B(15 downto COUNT);
					TEMP_ALUOUT(15 downto (15 - COUNT + 1)) := (others => ALU_B(15));
				end if;
			WHEN ALU_PASS =>
				TEMP_ALUOUT := (ALU_B);
			WHEN OTHERS =>
		END CASE;
	--SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
	ALUOUT <= TEMP_ALUOUT AFTER DELAY_ALU;
	END PROCESS VHDL_ALU;
END ARCHITECTURE untitled;



