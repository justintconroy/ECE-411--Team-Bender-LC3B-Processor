--
-- VHDL Architecture ece411.dirtyArray.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx37.ews.illinois.edu)
--          at - 18:54:14 10/07/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY dirtyArray IS
   PORT( 
      ADDRindex    : IN     lc3b_cacheindex;
      RESET_L      : IN     std_logic;
      WAY_dirtyIn  : IN     std_logic;
      WAY_write    : IN     std_logic;
      clk          : IN     std_logic;
      WAY_dirtyOut : OUT    std_logic
   );

-- Declarations

END dirtyArray ;

--
ARCHITECTURE untitled OF dirtyArray IS

	TYPE dirtyArray IS	array (7 downto 0) of std_logic;
	SIGNAL dirty : dirtyArray;

BEGIN
		--------------------------------------------------------------
		ReadFromValidArray : PROCESS (dirty, ADDRindex)
		--------------------------------------------------------------
    
			VARIABLE dirtyIndex : integer;
			BEGIN
				dirtyIndex := to_integer(unsigned(ADDRindex));
				WAY_dirtyOut <= dirty(dirtyIndex) after 20 ns;
		
		END PROCESS ReadFromValidArray;
	
		--------------------------------------------------------------
		WriteToValidArray : PROCESS (RESET_L, ADDRindex, WAY_write, WAY_dirtyIn)
		-------------------------------------------------------	------	
			VARIABLE dirtyIndex : integer;
			BEGIN
				dirtyIndex := to_integer(unsigned(ADDRindex));
			IF RESET_L = '0' THEN
				dirty(0) <= '0';
				dirty(1) <= '0';
				dirty(2) <= '0';
				dirty(3) <= '0';
				dirty(4) <= '0';
				dirty(5) <= '0';
				dirty(6) <= '0';
				dirty(7) <= '0';
			END IF;

			IF (WAY_write = '1') THEN
				dirty(dirtyIndex) <= WAY_dirtyIn;
			END IF;
		
		END PROCESS WriteToValidArray;

END ARCHITECTURE untitled;

