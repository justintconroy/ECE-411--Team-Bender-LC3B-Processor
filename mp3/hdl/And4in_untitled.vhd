--
-- VHDL Architecture ece411.And4in.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx28.ews.illinois.edu)
--          at - 19:21:39 09/25/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY And4in IS
  PORT( 
     A : IN     std_logic;
     B : IN     std_logic;
     C : IN     std_logic;
     D : IN     std_logic;
     F : OUT    std_logic
  );
-- Declarations

END And4in ;

--
ARCHITECTURE untitled OF And4in IS
BEGIN
  And4proc: process(A,B,C,D)
    variable result : std_logic;
    BEGIN
      result := A AND B AND C AND D;
    F <= result after 2ns; 
  END PROCESS;
END ARCHITECTURE untitled;

