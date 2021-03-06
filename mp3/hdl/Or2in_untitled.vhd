--
-- VHDL Architecture ece411.Or2in.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx1.ews.illinois.edu)
--          at - 15:54:50 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Or2in IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END Or2in ;

--
ARCHITECTURE untitled OF Or2in IS
BEGIN
  Or2proc: process(A, B)
    variable result : std_logic;
    BEGIN
      result := A OR B;
    F <= result after 1ns;
  END PROCESS;
END ARCHITECTURE untitled;

