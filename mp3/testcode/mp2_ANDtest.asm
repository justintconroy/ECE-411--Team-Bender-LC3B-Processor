;; mp2_ADDtest.asm
;; Tests the ADD instruction on the LC3b processor. This test should do
;; and immediate ADD, followed by a register ADD.

;; Ending Register values:
;; R0: 0
;; R1: 0x0F
;; R2: 0x05
;; R3: 0
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0x05

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put 15 (0xF) into R1
	ADD R1, R0, 15;

	;; AND R1 with and immediate value and store the result in r2
	;; to test immediate AND
	AND R2, R1, 5;

	;; AND together R1 and R2 and store the result in R7 to
	;; test register ANDs.
	AND R7, R2, R1; R7 = R2 AND R1

;; R7 should now be 5, halting
HALT:
	BRnzp HALT;

