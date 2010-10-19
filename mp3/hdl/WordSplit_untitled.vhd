--
-- VHDL Architecture ece411.WordSplit.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 15:22:48 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordSplit IS
   PORT( 
      Word  : IN     LC3B_word;
      byteH : OUT    LC3B_byte;
      byteL : OUT    LC3B_byte
   );

-- Declarations

END WordSplit ;

--
ARCHITECTURE untitled OF WordSplit IS
BEGIN
	ByteH <= Word(15 downto 8);
	ByteL <= Word(7 downto 0);
END ARCHITECTURE untitled;

