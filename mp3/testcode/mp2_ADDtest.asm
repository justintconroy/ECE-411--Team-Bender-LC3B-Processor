;; mp2_ADDtest.asm
;; Tests the ADD instruction on the LC3b processor. This test should do
;; and immediate ADD, followed by a register ADD.

;; Ending Register values:
;; R0: 0
;; R1: 0x05
;; R2: 0x02
;; R3: 0
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0x07

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; Test immediate add by adding 5 immediate
	;; to R0 (which should be 0)
	ADD R1, R0, 5;

	;; put 2 into R2
	ADD R2, R0, 2;

	;; Add together R1 and R2 and store the result in R7 to
	;; test register adds.
	ADD R7, R2, R1; R7 = R2 + R1

;; R7 should now be 7, halting
HALT:
	BRnzp HALT;

