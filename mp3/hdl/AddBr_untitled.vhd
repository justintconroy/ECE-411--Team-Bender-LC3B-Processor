--
-- VHDL Architecture ece411.AddBr.untitled
--
-- Created:
--          by - hwoods2.ece411_G3 (gllnx11.ews.illinois.edu)
--          at - 16:48:41 10/20/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddBr IS
   PORT( 
      ADJ9out  : IN     LC3b_word;
      PCout    : IN     LC3b_word;
      clk      : IN     std_logic;
      BRaddout : OUT    LC3b_word;
      reset_l  : IN     std_logic
   );

-- Declarations

END AddBr ;

--
ARCHITECTURE untitled OF AddBr IS
BEGIN
  VHDL_BRadd : PROCESS (ADJ9out, PCOUT)
  BEGIN  -- PROCESS
   BRaddout <= STD_LOGIC_VECTOR(UNSIGNED(PCOUT) + UNSIGNED(ADJ9out)) AFTER DELAY_ADDER;
  END PROCESS;
END ARCHITECTURE untitled;

