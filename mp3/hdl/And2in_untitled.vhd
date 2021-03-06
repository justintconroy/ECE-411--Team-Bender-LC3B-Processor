--
-- VHDL Architecture ece411.And2in.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx1.ews.illinois.edu)
--          at - 15:46:00 09/24/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY And2in IS
  PORT( 
     A : IN     std_logic;
     B : IN     std_logic;
     F : OUT    std_logic
  );
-- Declarations

END And2in ;

--
ARCHITECTURE untitled OF And2in IS
BEGIN
  And2proc: process(A, B)
    variable result : std_logic;
    BEGIN
      result := A AND B;
    F <= result after 1ns;
  END PROCESS;
END ARCHITECTURE untitled;

