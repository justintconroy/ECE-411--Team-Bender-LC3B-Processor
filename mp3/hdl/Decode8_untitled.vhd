--
-- VHDL Architecture ece411.Decode8.untitled
--
-- Created:
--          by - jconroy2.stdt (linux3.ews.illinois.edu)
--          at - 16:59:34 10/01/10
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Decode8 IS
   PORT( 
      ADDRoffset : IN     LC3B_cacheoffset;
      clk        : IN     std_logic;
      Sel1       : OUT    std_logic;
      Sel2       : OUT    std_logic;
      Sel3       : OUT    std_logic;
      Sel4       : OUT    std_logic;
      Sel5       : OUT    std_logic;
      Sel6       : OUT    std_logic;
      Sel7       : OUT    std_logic;
      sel8       : OUT    std_logic
   );

-- Declarations

END Decode8 ;

--
ARCHITECTURE untitled OF Decode8 IS
BEGIN
	Process(ADDRoffset)
		variable state1 : std_logic;
		variable state2 : std_logic;
		variable state3 : std_logic;
		variable state4 : std_logic;
		variable state5 : std_logic;
		variable state6 : std_logic;
		variable state7 : std_logic;
		variable state8 : std_logic;
	Begin
		state1 := '0';
		state2 := '0';
		state3 := '0';
		state4 := '0';
		state5 := '0';
		state6 := '0';
		state7 := '0';
		state8 := '0';

		Case ADDRoffset is
			when "000" =>
				state1 := '1';
			when "001" =>
				state2 := '1';
			when "010" =>
				state3 := '1';
			when "011" =>
				state4 := '1';
			when "100" =>
				state5 := '1';
			when "101" =>
				state6 := '1';
			when "110" =>
				state7 := '1';
			when "111" =>
				state8 := '1';
			when others =>
				state1 := '0';
				state2 := '0';
				state3 := '0';
				state4 := '0';
				state5 := '0';
				state6 := '0';
				state7 := '0';
				state8 := '0';
		end case;
		sel1 <= state1 after DELAY_DECODER;
		sel2 <= state2 after DELAY_DECODER;
		sel3 <= state3 after DELAY_DECODER;
		sel4 <= state4 after DELAY_DECODER;
		sel5 <= state5 after DELAY_DECODER;
		sel6 <= state6 after DELAY_DECODER;
		sel7 <= state7 after DELAY_DECODER;
		sel8 <= state8 after DELAY_DECODER;
	end process;
END ARCHITECTURE untitled;

