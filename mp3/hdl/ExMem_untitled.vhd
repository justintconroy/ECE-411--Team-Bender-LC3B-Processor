--
-- VHDL Architecture ece411.ExMem.untitled
--
-- Created:
--          by - hwoods2.stdt (eelnx34.ews.illinois.edu)
--          at - 21:25:12 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ExMem IS
   PORT( 
      ContWordToMem    : IN     LC3b_Control_Word;
      MemALUin         : IN     LC3b_word;
      clk              : IN     std_logic;
      reset_l          : IN     std_logic;
      MemALUout        : OUT    LC3b_word;
      D_MREAD_L        : OUT    std_logic;
      D_MWRITE_L       : OUT    std_logic
   );

-- Declarations

END ExMem ;

--
ARCHITECTURE untitled OF ExMem IS
SIGNAL PreMemALUout: LC3b_word;
SIGNAL PreD_MREAD_L : std_logic;
SIGNAL PreD_MWRITE_L : std_logic;
BEGIN
PROCESS (CLK, RESET, ContWordToMem, MemALUin)
Begin
  IF RESET = '0' THEN
    PreContWord <= (OTHERS => '0');
    PreMemALUout <= (OTHERS => '0');
  ELSIF CLK'EVENT AND CLK = '1' THEN
    PreMemALUout <= MemALUin;
    PreD_MREAD_L <= ContWordToMem(10);
    PreD_MWRITE_L <= ContWordToMem(11);
  END IF;  
END PROCESS;
MemALUout <= PreMemALUout after 5ns;
D_MREAD_L <= PreD_MREAD_L after 5ns;
D_MWRITE_L <= PreD_MWRITE_L after 5ns;
END ARCHITECTURE untitled;

