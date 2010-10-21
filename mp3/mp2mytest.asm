
  TRAP cagey

  cagey: DATA2 Weasel
  Weasel: ADD R2, R4, R3
  ret     


;    LDI R7, R0, MyPointer
;    STI R7, R0, MySPointer

; MyPointer: DATA2 MyData
;   MyData:    DATA2 4x600D
;  MySpointer: DATA2 MySDATA
;  MySData: Data2 ?
   
 ;  LDR R6, R0, R6DATA
 ;  LDR R7, R0, R7DATA 
   LDB R6, R0, LowByte
   LDB R7, R0, HighByte
   STB R6, R0, LowSByte
   STB R7, R0, HighSByte
   
   LowByte: DATA1 4x0D
   HighByte: DATA1 4x60
   LowSByte: DATA1 ?
   HighSByte: DATA1 ?
   R6DATA: DATA2 4x000D
   R7DATA: DATA2 4x0060


   ADD R1, R6, 5       ;Add 5 to R1   
   ADD R1, R1, 5      ;ADD 10 to R1
   ADD R1, R1, -3 
   AND R1, R1, 5  
   LSHF R2, R1, 3
   RSHFL R2, R2, 3
   RSHFA R2, R2, 4 
   LEA R0, LOOP1
   JSR LOOP_PREP
   JMP R0
   BRz END_ZERO   
   RET           
   ADD R1, R0, R6       
   NOT R5, R5            
   ADD R1, R1, R5        
   ADD R3, R1, R6        

;  MyPointer: DATA2 MyData
 ;  MyData:    DATA2 4x600D
 ; MySpointer: DATA2 MySDATA
  ;MySData: Data2 ?



LOOP1:
   ADD R2, R2, R0        
   ADD R1, R1, R5	 
   BRnp LOOP1            

LOOP_PREP:               
   ADD R7, R2, R6        
   AND R2, R2, R6        
   ADD R3, R3, R5        
   BRz HALT              
   ADD R1, R3, R6        
   ADD R0, R7, R6

LOOP2:                              
   ADD R2, R0, R2
   ADD R1, R1, R5
   BRnp LOOP2            
   BRnzp LOOP_PREP        
END_ZERO:              
	LDR R7, R6, ONE  ;If 0!, then the result will be 1
HALT:
   BRnzp HALT

ZERO: 	DATA2 4x0000
ONE: 	DATA2 4X0001
FIVE:	DATA2 4x0005
THREE:    DATA2 4x0001
  




