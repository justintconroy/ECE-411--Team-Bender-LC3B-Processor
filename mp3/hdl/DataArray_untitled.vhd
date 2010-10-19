--
-- VHDL Architecture ece411.DataArray.untitled
--
-- Created:
--          by - jconroy2.stdt (linux1.ews.illinois.edu)
--          at - 18:08:03 09/30/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DataArray IS
   PORT( 
      ADDRindex  : IN     lc3b_cacheindex;
      RESET_L    : IN     std_logic;
      WAY_DATAIN : IN     LC3b_oword;
      WAY_write  : IN     std_logic;
      clk        : IN     std_logic;
      WAY_DATA   : OUT    LC3b_oword
   );

-- Declarations

END DataArray ;

--
ARCHITECTURE untitled OF DataArray IS

	TYPE DataArray IS	array (7 downto 0) of LC3b_oword;
	SIGNAL Data : DataArray;

BEGIN
		--------------------------------------------------------------
		ReadFromDataArray : PROCESS (Data, ADDRindex)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(ADDRIndex));
				WAY_DATA <= Data(DataIndex) after 20 ns;
		
		END PROCESS ReadFromDataArray;
	
		--------------------------------------------------------------
		WriteToDataArray : PROCESS (RESET_L, ADDRindex, WAY_write, WAY_DATAIN)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(ADDRIndex));
			IF RESET_L = '0' THEN
				Data(0) <= (OTHERS => 'X');
				Data(1) <= (OTHERS => 'X');
				Data(2) <= (OTHERS => 'X');
				Data(3) <= (OTHERS => 'X');
				Data(4) <= (OTHERS => 'X');
				Data(5) <= (OTHERS => 'X');
				Data(6) <= (OTHERS => 'X');
				Data(7) <= (OTHERS => 'X');
			END IF;

			IF (WAY_write = '1') THEN
				Data(DataIndex) <= WAY_DATAIN;
			END IF;
		
		END PROCESS WriteToDataArray;

END ARCHITECTURE untitled;

