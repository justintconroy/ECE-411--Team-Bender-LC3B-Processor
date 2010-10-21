--
-- VHDL Architecture ece411.And3in.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx1.ews.illinois.edu)
--          at - 16:06:20 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY And3in IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END And3in ;

--
ARCHITECTURE untitled OF And3in IS
BEGIN
  And3proc: process(A,B,C)
    variable result : std_logic;
    BEGIN
      result := A AND B AND C;
    F <= result after 2ns; 
  END PROCESS;
END ARCHITECTURE untitled;

