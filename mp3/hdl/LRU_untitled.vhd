--
-- VHDL Architecture ece411.LRU.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 21:31:24 09/30/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRU IS
   PORT( 
      ADDRindex  : IN     LC3B_cacheindex;
      RESET_L    : IN     std_logic;
      LRUWrite   : IN     std_logic;
      LRU_DATAIN : IN     std_logic;
      clk        : IN     std_logic;
      LRUout     : OUT    std_logic
   );

-- Declarations

END LRU ;

--
ARCHITECTURE untitled OF LRU IS

	TYPE LRUArray IS array (7 downto 0) of std_logic;
	SIGNAL LRUsig : LRUArray;

BEGIN
		--------------------------------------------------------------
		ReadFromLRUArray : PROCESS (LRUsig, ADDRindex)
		--------------------------------------------------------------
    
			VARIABLE LRUindex : integer;
			BEGIN
				LRUindex := to_integer(unsigned(ADDRindex));
				LRUout <= LRUsig(LRUindex) after 20 ns;
		
		END PROCESS ReadFromLRUArray;
	
		--------------------------------------------------------------
		WriteToLRUArray : PROCESS (RESET_L, ADDRindex, LRUWrite, LRU_DATAIN)
		-------------------------------------------------------	------	
			VARIABLE LRUindex : integer;
			BEGIN
				LRUindex := to_integer(unsigned(ADDRIndex));
			IF RESET_L = '0' THEN
				LRUsig(0) <= '0';
				LRUsig(1) <= '0';
				LRUsig(2) <= '0';
				LRUsig(3) <= '0';
				LRUsig(4) <= '0';
				LRUsig(5) <= '0';
				LRUsig(6) <= '0';
				LRUsig(7) <= '0';
			END IF;

			IF (LRUWrite = '1') THEN
				LRUsig(LRUindex) <= LRU_DATAIN;
			END IF;
		
		END PROCESS WriteToLRUArray;

END ARCHITECTURE untitled;

