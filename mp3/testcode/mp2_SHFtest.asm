;; mp2_SHFtest.asm
;; Tests the SHF instruction on the LC3b processor. This test should
;; go through each type of shift and make sure they are working.
;; LSHF - left shift
;; RSHFL - right shift logical (this will be tested twice, once with
;;         a positive number, and once with a negative number).
;; RSHFA - right shift arithmetic (this will be tested twice, once with
;;         a positive number, and once with a negative number).

;; Ending Register values:
;; R0: 0
;; R1: 0x0078
;; R2: 0x0003
;; R3: 0x003F
;; R4: 0x0007
;; R5: 0xFFFF
;; R6: 0
;; R7: 0

;; Note that R0 is assumed to contain zero when the program starts because
;; of the construction of the register file on the LC-3ba (After reset,
;; all registers contain zero.)

SEGMENT CodeSegment:

	;; put a number into R1
	ADD R1, R0, 4x000F;

	;; test left shift
	LSHF R1, R1, 3;

	;; put a positive number into R2
	ADD R2, R0, 4x000F;

	;; test right shift logical with pos num
	RSHFL R2, R2, 2;

	;; put a negative number into R3
	LDR R3, R0, NEG;

	;; test right shift logical with neg num
	RSHFL R3, R3, 10;

	;; put a positive number into R4
	ADD R4, R0, 4x000F;

	;; test right shift arithmetic with pos num
	RSHFA R4, R4, 1;

	;; put a negative number into R5
	LDR R5, R0, NEG;

	;; test right shift arithmetic with neg num
	RSHFA R5, R5, 8;

;; R7 should now be 7, halting
HALT:
	BRnzp HALT;

NEG: DATA2 4xFFFF;
