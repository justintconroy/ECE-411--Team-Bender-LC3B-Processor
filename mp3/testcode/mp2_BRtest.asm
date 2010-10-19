;; mp2_BRtest.asm
;; Tests the BR and JMP instructions on the LC3b processor. This test
;; should do a branch based on an instruction with a result of zero,
;; a negative result and a positive result to ensure that it works in
;; all cases, then it will do an unconditional jump to the end of the
;; program. After each BR and JMP instruction, a key value will be placed
;; in a register so that we can check that each branch and jump was
;; successful. This code also tests LEA, since that was needed to test
;; JMP properly.

;; Ending Register values:
;; R0: 0
;; R1: 0x600D
;; R2: 0x600D
;; R3: 0x600D
;; R4: 0x600D
;; R5: 0
;; R6: 0
;; R7: 0

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put a negative value into R1
	LDR R1, R0, NEGATIVE;
	BRzp FAILURE1;
	BRn SUCCESS1;

;; if the code goes here, something went wrong
FAILURE1:
	LDR R1, R0, BAD;
	BRnzp HALT;

SUCCESS1:
	;; load the good value into R1
	LDR R1, R0, GOOD;

	;; load zero into R2
	LDR R2, R0, ZERO;
	BRnp FAILURE2;
	BRz SUCCESS2;

;; if the code goes here, something went wrong
FAILURE2:
	LDR R2, R0, BAD;
	BRnzp HALT;

SUCCESS2:
	;; load the good value into R1
	LDR R2, R0, GOOD;

	;; load +1 into R2
	LDR R3, R0, POSITIVE;
	BRnz FAILURE3;
	BRp SUCCESS3;

;; if the code goes here, something went wrong
FAILURE3:
	LDR R3, R0, BAD;
	BRnzp HALT;

SUCCESS3:
	;; load the good value into R1
	LDR R3, R0, GOOD;

	;; load address to do an unconditional jump
	LEA R4, JUMPADDR;
	;; jump
	JMP R4;

FAILURE4:
	LDR R4, R0, BAD;
	BRnzp HALT;

JUMPADDR:
	LDR R4, R0, GOOD;

HALT:
	BRnzp HALT;

NEGATIVE: DATA2 4xFFFF;
ZERO:     DATA2 4x0000;
POSITIVE: DATA2 4x0001;

BAD:      DATA2 4x0BAD;
GOOD:     DATA2 4x600D;

