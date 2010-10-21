--
-- VHDL Architecture ece411.mp3_Plus2.untitled
--
-- Created:
--          by - hwoods2.ece411_G3 (gllnx11.ews.illinois.edu)
--          at - 17:10:31 10/20/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp3_Plus2 IS
   PORT( 
       PCout      : IN     LC3b_word;
       clk        : IN     std_logic;
       PCPlus2out : OUT    LC3b_word
   );

-- Declarations

END mp3_Plus2 ;

--
ARCHITECTURE untitled OF mp3_Plus2 IS
BEGIN
  VHDL_ADD_2 : PROCESS (PCOUT)
  BEGIN  -- PROCESS
	  PCPLUS2OUT <= STD_LOGIC_VECTOR(UNSIGNED(PCOUT) + 2 ) AFTER DELAY_ADDER;
  END PROCESS;
END ARCHITECTURE untitled;

