--
-- VHDL Architecture ece411.ctrlwdlatch.untitled
--
-- Created:
--          by - sgrand2.stdt (eelnx36.ews.illinois.edu)
--          at - 22:00:30 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ctrlwdlatch IS
   PORT( 
      ContWordToWB : IN     LC3B_Control_Word;
      clk          : IN     std_logic;
      reset_l      : IN     std_logic;
      address      : OUT    LC3b_word;
      control_wd   : OUT    lc3b_word;
      data         : OUT    LC3b_word
   );

-- Declarations

END ctrlwdlatch ;

--
ARCHITECTURE untitled OF ctrlwdlatch IS
TYPE RAMMEMORY IS ARRAY (15 DOWNTO 0) OF LC3B_WORD;
SIGNAL LATCH : RAMMEMORY;
BEGIN
  -------------------------------------------------------------------
	  LATCH_WRITE: PROCESS(CLK, address, ContWordToWB, RESET_L)
	-------------------------------------------------------------------
	VARIABLE WADDR : INTEGER RANGE 0 TO 1;
	BEGIN
	  	IF (RESET_L = '0') THEN
			      LATCH(0) <= "0000000000000000";
			      LATCH(1) <= "0000000000000000";
		 END IF;
  
END ARCHITECTURE untitled;

