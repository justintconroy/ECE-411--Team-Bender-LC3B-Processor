;; mp2_TRAPtest.asm
;; Tests the TRAP instruction on the LC3b processor. This test should
;; attempt to jump to a TRAP instruction, then return to normal program
;; flow.

;; Ending Register values:
;; R0: 0
;; R1: 0x000F
;; R2: 0x600D
;; R3: 0x600D
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0x04

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put a number into R1
	ADD R1, R0, 4x000F;

	;; Test TRAP
	TRAP TRAPVECT;

	;; Test to make sure we got back
	LDR R3, R0, GOOD;

;; R7 should now be 7, halting
HALT:
	BRnzp HALT;

TRAPROUTINE:
	LDR R2, R0, GOOD;
	RET;

TRAPVECT: DATA2 TRAPROUTINE;
GOOD:     DATA2 4x600D;

