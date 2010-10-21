--
-- VHDL Architecture ece411.Nand3in.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx28.ews.illinois.edu)
--          at - 19:05:11 09/25/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Nand3in IS
     PORT( 
        A : IN     std_logic;
        B : IN     std_logic;
        C : IN     std_logic;
        F : OUT    std_logic
     );
-- Declarations

END Nand3in ;

--
ARCHITECTURE untitled OF Nand3in IS
BEGIN
  NAND3proc: process(A,B,C)
     variable result : std_logic;
     BEGIN
          IF ((A='1') AND (B='1') AND (C='1')) THEN
	          result := '0';
	        ELSE
	          result := '1';
	        END IF;
     F <= result after 2ns;           
  END PROCESS;
END ARCHITECTURE untitled;

