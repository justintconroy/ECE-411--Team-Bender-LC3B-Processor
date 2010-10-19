--
-- VHDL Architecture ece411.BRadd.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx21.ews.illinois.edu)
--          at - 21:09:20 09/02/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
--USE ieee.std_logic_arith.all;

ENTITY BRadd IS
   PORT( 
      PCOffMuxOut : IN     LC3b_word;
      PCout       : IN     LC3b_word;
      clk         : IN     std_logic;
      BRaddout    : OUT    LC3b_word
   );

-- Declarations

END BRadd ;

--
ARCHITECTURE untitled OF BRadd IS
BEGIN
	VHDL_BRadd : PROCESS (PCOUT,PCOffMuxOut)
	BEGIN  -- PROCESS
		BRaddout <= STD_LOGIC_VECTOR(UNSIGNED(PCOUT) + UNSIGNED(PCOffMuxOut)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

