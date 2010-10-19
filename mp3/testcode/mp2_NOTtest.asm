;; mp2_NOTtest.asm
;; Tests the NOT instruction on the LC3b processor. This test should
;; attempt to invert a value in a register.

;; Ending Register values:
;; R0: 0
;; R1: 0x000F
;; R2: 0xFFF0
;; R3: 0
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put a number into R1
	ADD R1, R0, 4x000F;

	;; test NOT
	NOT R2, R1;

;; R7 should now be 7, halting
HALT:
	BRnzp HALT;

NEG: DATA2 4xFFFF;
