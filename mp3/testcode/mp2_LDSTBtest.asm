;; mp2_LDSTBtest.asm
;; Tests the LDB and STB instructions on the LC3b processor. This test
;; will first store single bytes in memory, and then attempt to retrieve
;; them. If all goes according to plan, a word in memory should get split
;; into bytes in memory and then loaded into registers. At the end of the
;; program, the registers should hold the following:

;; Ending Register values:
;; R0: 0
;; R1: 0x0001
;; R2: 0x0034
;; R3: 0x0012
;; R4: 0x1200
;; R5: 0x0034
;; R6: 0x1234
;; R7: 0

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:
	;; for convenience, R1 = 1;
	LDR R1, R0, ONE;

	;; Load the first byte
	LDB R2, R0, WORD1;

	;; Load the second byte
	LDB R3, R1, WORD1;

	;; load a whole word into R4 and then just write a byte back
	;; to memory.
	LDR R4, R0, WORD1;
	STB R4, R0, BYTE1;
	STB R3, R1, BYTE2;

	;; load memory back into registers, this time using LDR
	;; (to make sure stuff is getting aligned correctly).
	LDR R4, R0, BYTE2;
	LDR R5, R0, BYTE1;

	;; should result in R6 = R4 + R5
	ADD R6, R4, R5;


;; Halt the program when finished
HALT:
	BRnzp HALT;

ONE:   DATA2 4x0001;
WORD1: DATA2 4x1234;
GAR1:  DATA2 4x0BAD;
BYTE1: DATA2 4x0000;
GAR2:  DATA2 4xFEED;
BYTE2: DATA2 4x0000;
