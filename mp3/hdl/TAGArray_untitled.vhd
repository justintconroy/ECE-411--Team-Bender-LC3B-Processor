--
-- VHDL Architecture ece411.TAGArray.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 18:32:32 09/30/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TAGArray IS
   PORT( 
      ADDRTAG   : IN     lc3b_tag;
      ADDRindex : IN     lc3b_cacheindex;
      RESET_L   : IN     std_logic;
      WAY_write : IN     std_logic;
      clk       : IN     std_logic;
      WAY_TAG   : OUT    lc3b_TAG
   );

-- Declarations

END TAGArray ;

--
ARCHITECTURE untitled OF TAGArray IS

	TYPE TAGArray IS	array (7 downto 0) of LC3b_TAG;
	SIGNAL TAG : TAGArray;

BEGIN
		--------------------------------------------------------------
		ReadFromTAGArray : PROCESS (TAG, ADDRindex)
		--------------------------------------------------------------
    
			VARIABLE TAGIndex : integer;
			BEGIN
				TAGIndex := to_integer(unsigned(ADDRIndex));
				WAY_TAG <= TAG(TAGIndex) after 20 ns;
		
		END PROCESS ReadFromTAGArray;
	
		--------------------------------------------------------------
		WriteToTAGArray : PROCESS (RESET_L, ADDRindex, WAY_write, ADDRTAG)
		-------------------------------------------------------	------	
			VARIABLE TAGIndex : integer;
			BEGIN
				TAGIndex := to_integer(unsigned(ADDRIndex));
			IF RESET_L = '0' THEN
				TAG(0) <= (OTHERS => 'X');
				TAG(1) <= (OTHERS => 'X');
				TAG(2) <= (OTHERS => 'X');
				TAG(3) <= (OTHERS => 'X');
				TAG(4) <= (OTHERS => 'X');
				TAG(5) <= (OTHERS => 'X');
				TAG(6) <= (OTHERS => 'X');
				TAG(7) <= (OTHERS => 'X');
			END IF;

			IF (WAY_write = '1') THEN
				TAG(TAGIndex) <= ADDRTAG;
			END IF;
		
		END PROCESS WriteToTAGArray;
END ARCHITECTURE untitled;

