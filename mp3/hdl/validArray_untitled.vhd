--
-- VHDL Architecture ece411.validArray.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 19:53:46 09/30/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY validArray IS
   PORT( 
      ADDRindex   : IN     lc3b_cacheindex;
      RESET_L     : IN     std_logic;
      WAY_validIn : IN     std_logic;
      WAY_write   : IN     std_logic;
      clk         : IN     std_logic;
      WAY_valid   : OUT    std_logic
   );

-- Declarations

END validArray ;

--
ARCHITECTURE untitled OF validArray IS

	TYPE validArray IS	array (7 downto 0) of std_logic;
	SIGNAL valid : validArray;

BEGIN
		--------------------------------------------------------------
		ReadFromValidArray : PROCESS (valid, ADDRindex)
		--------------------------------------------------------------
    
			VARIABLE validIndex : integer;
			BEGIN
				validIndex := to_integer(unsigned(ADDRindex));
				WAY_valid <= valid(validIndex) after 20 ns;
		
		END PROCESS ReadFromValidArray;
	
		--------------------------------------------------------------
		WriteToValidArray : PROCESS (RESET_L, ADDRindex, WAY_write, WAY_validIn)
		--------------------------------------------------------------
			VARIABLE validIndex : integer;
			BEGIN
				validIndex := to_integer(unsigned(ADDRindex));
			IF RESET_L = '0' THEN
				valid(0) <= '0';
				valid(1) <= '0';
				valid(2) <= '0';
				valid(3) <= '0';
				valid(4) <= '0';
				valid(5) <= '0';
				valid(6) <= '0';
				valid(7) <= '0';
			END IF;

			IF (WAY_write = '1') THEN
				valid(validIndex) <= WAY_validIn;
			END IF;
		
		END PROCESS WriteToValidArray;

END ARCHITECTURE untitled;

