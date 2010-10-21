--
-- VHDL Architecture ece411.mp3_RegFile.untitled
--
-- Created:
--          by - hwoods2.ece411_G3 (gllnx11.ews.illinois.edu)
--          at - 17:23:35 10/20/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp3_RegFile IS
   PORT( 
      RESET_L     : IN     std_logic;
      RFClrMuxout : IN     LC3b_word;
      RegWrite    : IN     std_logic;
      SrcB        : IN     LC3b_reg;
      StoreMuxout : IN     LC3b_reg;
      clk         : IN     std_logic;
      dest        : IN     LC3b_reg;
      RFAout      : OUT    LC3b_word;
      RFBout      : OUT    LC3b_word
   );

-- Declarations

END mp3_RegFile ;

--
ARCHITECTURE untitled OF mp3_RegFile IS
BEGIN
  -------------------------------------------------------------------
  VHDL_REGFILE_READ : PROCESS (RAM, STOREMUXOUT, SRCB)
  -------------------------------------------------------------------
  VARIABLE RADDR1 : INTEGER RANGE 0 TO 7;
  VARIABLE RADDR2 : INTEGER RANGE 0 TO 7;
  BEGIN
	  --READ FROM REGFILE, THE OUTPUTS ARE VALID AFTER REGFILE_READ DELAY.
	  RADDR1 := TO_INTEGER(UNSIGNED('0' & STOREMUXOUT));
	  RADDR2 := TO_INTEGER(UNSIGNED('0' & SRCB));
	  RFAOUT <= RAM(RADDR1) AFTER DELAY_REGFILE_READ;
	  RFBOUT <= RAM(RADDR2) AFTER DELAY_REGFILE_READ;
  END PROCESS VHDL_REGFILE_READ;
  -------------------------------------------------------------------
  VHDL_REGFILE_WRITE: PROCESS(CLK, RFClrMuxout, REGWRITE, DEST, RESET_L)
  -------------------------------------------------------------------
  VARIABLE WADDR : INTEGER RANGE 0 TO 7;
  BEGIN
	  -- ON RESET, CLEAR THE REGISTER FILE CONTENTS
	  IF (RESET_L = '0') THEN
		  RAM(0) <= "0000000000000000";
		  RAM(1) <= "0000000000000000";
		  RAM(2) <= "0000000000000000";
		  RAM(3) <= "0000000000000000";
		  RAM(4) <= "0000000000000000";
		  RAM(5) <= "0000000000000000";
		  RAM(6) <= "0000000000000000";
		  RAM(7) <= "0000000000000000";
	  END IF;
	  -- WRITE VALUE TO REGISTER FILE ON RISING EDGE OF CLOCK IF REGWRITE ACTIVE
	  WADDR := TO_INTEGER(UNSIGNED('0' & DEST));
	  IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
		  IF (REGWRITE = '1') THEN
			  RAM(WADDR) <= RFClrMuxout;
		  END IF;
	  END IF;
  END PROCESS VHDL_REGFILE_WRITE;
END ARCHITECTURE untitled;

