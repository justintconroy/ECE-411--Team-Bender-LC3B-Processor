;; mp1.2test.asm
;; Calculates 5! (five factorial) on the LC-3ba processor. The program
;; can be modified to calculate the factorial of other positive integers
;; by modifying the variable STARTVAL.

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put -1 into R1 for easy decrementing of registers
	LDR R1, R0, NEGONE; R1 = -1;

	;; put the starting value into R2, this is the number that the
	;; program will calculate the factorial of.
	LDR R2, R0, STARTVAL; R2 = STARTVAL;

	;; Initialize R7 to the start value
	ADD R7, R2, R0; R7 = R2 = STARTVAL;

;; This loop calculates the factorial of STARTVAL and saves the value
;; in R7
FACTORIALLOOP:
	;; subtract one from the current R2 and, if it's still greater than
	;; zero, multiply it with the current result in R7
	ADD R2, R2, R1; R2 - 1;
	BRp MULTIPLY;

;; R7 should now have the correct result, so "Halt"
HALT:
	BRnzp HALT;

;; subroutine for multiplication of R2*R7.
MULTIPLY:
	;; copy R2 value to temporary registers R3
	ADD R3, R2, R0;
	ADD R4, R0, R0; clear R4

;; add R7 to R4 R3 times for multiplication.
MULTLOOP:
	ADD R4, R4, R7; R4 = R4 + R7;
	ADD R3, R3, R1; R3 = R3 - 1;
	BRp MULTLOOP;

	;; copy result into R7;
	ADD R7, R4, R0;

	;; always go back to FACTORIALLOOP to decrement again when finished
	;; multiplying.
	BRnzp FACTORIALLOOP;

;; some useful values to save.
ONE:         DATA2 4x0001
NEGONE:      DATA2 4xFFFF

;; The value to take the factorial of.
STARTVAL:    DATA2 4x0005
