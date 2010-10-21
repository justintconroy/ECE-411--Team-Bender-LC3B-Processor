;R0 is current factorial value 
;R1 Counts down the number of times a number is added to itself in multiplying
;R2 keeps track of the running multiplier per factorial
;R3 keeps track of number in factorial
;R5 Contains -1
;R6 Contains 0
;R7 Keeps track of all multiplication done thus far

   LDR R0, R6, FIVE      
   BRz END_ZERO                   
   ADD R1, R0, R6        ;Load R1 with R0(Intitial Facotiral Number)
   NOT R5, R5            ;Convert R5 to -1
   ADD R1, R1, R5        ;Sub R1 -1
   ADD R3, R1, R6        ;Put R3 with R1

LOOP1:
   ADD R2, R2, R0        ;This loop does the multiplication (5*4) by adding 5 four times
   ADD R1, R1, R5	 ;Sub R1 -1
   BRnp LOOP1            ;Check to see if we have finished the multiplication

LOOP_PREP:               ;This loop Prepares the registers to 
			 ;perform another multiplication
   ADD R7, R2, R6        ;Store the running overall product in R7
   AND R2, R2, R6        ;Clear R2
   ADD R3, R3, R5        ;Reduces the multiplier by one  
   BRz HALT              ;If multiplier is now 0, factorial is complete
   ADD R1, R3, R6        
   ADD R0, R7, R6

LOOP2:                   ;This loop multipliess (20*3), (60*2), (120*1)                 
   ADD R2, R0, R2
   ADD R1, R1, R5
   BRnp LOOP2            ;Check to see if we have finished this paticular multiplication
   BRnzp LOOP_PREP       ;Unconditional branch to prepare for next multipliation 
END_ZERO:              
	LDR R7, R6, ONE  ;If 0!, then the result will be 1
HALT:
   BRnzp HALT
  


ZERO: 	DATA2 4x0000
ONE: 	DATA2 4X0001
FIVE:	DATA2 4x0005
