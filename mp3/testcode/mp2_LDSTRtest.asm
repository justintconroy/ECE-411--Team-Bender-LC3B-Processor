;; mp2_LDSTRtest.asm
;; Tests the LDR and STR instructions on the LC3b processor. This test
;; will attempt to load and store values from and to memory in order
;; to test the load and store instructions.

;; Ending Register values:
;; R0: 0
;; R1: 0x600D
;; R2: 0x600D
;; R3: 0
;; R4: 0
;; R5: 0
;; R6: 0
;; R7: 0

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:
	;; Should load 4x600D into R1
	LDR R1, R0, WORD1;

	;; Should store R1 back into memory at WORD2,
	;; then, using LDR, we'll load WORD2 into R2.
	;; to make sure everything went to the right place.
	STR R1, R0, WORD2;
	LDR R2, R0, WORD2;

;; Halt the program when finished
HALT:
	BRnzp HALT;

WORD1:    DATA2 4x600D;
WORD2:    DATA2 4x0BAD;
