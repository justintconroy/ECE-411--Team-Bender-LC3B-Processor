--
-- VHDL Architecture ece411.ImmBlock.untitled
--
-- Created:
--          by - jconroy2.stdt (eelnx35.ews.illinois.edu)
--          at - 20:48:05 10/21/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ImmBlock IS
   PORT( 
      clk         : IN     std_logic;
      instruction : IN     LC3b_word;
      reset_l     : IN     std_logic;
      imm4        : OUT    LC3B_Word;
      imm5        : OUT    LC3B_Word;
      off6        : OUT    LC3B_Word;
      off6ns      : OUT    LC3B_word
   );

-- Declarations

END ImmBlock ;

--
ARCHITECTURE untitled OF ImmBlock IS
BEGIN
	imm4 <= "000000000000" & instruction(3 downto 0);
	imm5 <= instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction (4 downto 0);
	off6 <= instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5 downto 0) & '0';
	off6ns <= instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5) & instruction(5 downto 0);
END ARCHITECTURE untitled;

