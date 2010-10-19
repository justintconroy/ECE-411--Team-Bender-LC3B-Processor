;; mp2_BRtest.asm
;; Tests the JSR and JSRR instructions on the LC3b processor. This test
;; should perform the JSR instruction to jump to a subroutine. Then, if
;; it works properly, it should immediately do a RET and return to the
;; original program flow. The program will then load the address of the
;; same subroutine into R1 via LEA and call JSRR. Again, the subroutine
;; should immediately return. The program will then halt.

;; Ending Register values:
;; R0: 0
;; R1: 0x08
;; R2: 0
;; R3: 0
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0x06

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:
	;; test JSR by jumping to SUBROUTINE
	JSR SUBROUTINE;
	;; load the address of SUBROUTINE into R1 in order to test JSRR
	LEA R1, SUBROUTINE;
	JSRR R1;

;; Halt the program when finished
HALT:
	BRnzp HALT;

;; This function immediately returns if JSR is implemented properly.
SUBROUTINE:
	RET;

