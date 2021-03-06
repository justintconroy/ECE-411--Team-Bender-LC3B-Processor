--
-- VHDL Architecture ece411.LRU.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx26.ews.illinois.edu)
--          at - 22:53:23 09/28/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRU IS
   PORT( 
      RESET_L : IN     std_logic;
      Index   : IN     LC3b_index;
      LRUout  : OUT    std_logic;
      Hit     : IN     std_logic;
      prehit1 : IN     std_logic
   );

-- Declarations

END LRU ;

--
ARCHITECTURE untitled OF LRU IS
TYPE LRUArray IS array (7 downto 0) of std_logic;
SIGNAL LRUdata  : LRUArray;

BEGIN
--------------------------------------------------------------
LRUProc: PROCESS (RESET_L, Index, prehit1, Hit, LRUdata)
-------------------------------------------------------	------	
  VARIABLE DataIndex : integer;
  BEGIN
    DataIndex := to_integer(unsigned(Index));
    IF RESET_L = '0' THEN
       LRUdata(0)  <= '0'; 
       LRUdata(1)  <= '0';
       LRUdata(2)  <= '0';
       LRUdata(3)  <= '0';
       LRUdata(4)  <= '0';
       LRUdata(5)  <= '0';
       LRUdata(6)  <= '0';
       LRUdata(7)  <= '0';
    END IF;
    if Hit = '1' THEN
       LRUdata(DataIndex) <= prehit1;  
    END IF;
     LRUout <= LRUdata(DataIndex) after 20ns;
  END PROCESS LRUProc;  
END ARCHITECTURE untitled;

