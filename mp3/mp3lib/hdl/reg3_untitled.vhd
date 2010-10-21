--
-- VHDL ARCHITECTURE ECE411.REG1.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN26.EWS.UIUC.EDU)
--          AT - 14:04:22 03/31/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY REG3 IS
PORT( 
	RESET_L : IN     STD_LOGIC;
	A       : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
	EN      : IN     STD_LOGIC;
	CLK     : IN     STD_LOGIC;
	F       : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
);
-- DECLARATIONS
END REG3 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF REG3 IS
BEGIN
	REG3: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : STD_LOGIC_VECTOR (2 DOWNTO 0);
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := "000";  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := "XXX";
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG3;
END UNTITLED;