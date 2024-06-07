;EDUARDO SANCHEZ AND LUIS GARCIA
;CIS11
;PROJECT

.ORIG x3000
;START OF PROGRAM
	LEA R0, PROMPT1
	PUTS
	GETC
	ADD R2, R0, x0		;R2 = SCORE 1
	JSR TWO_INT1
	AND R0, R0, #0 
SECOND	LEA R0, PROMPT2
	PUTS
	GETC
	ADD R3, R0, x0		;R3 = SCORE 2
	JSR TWO_INT2
	AND R0, R0, #0
THIRD	LEA R0, PROMPT3
	PUTS
	GETC
	ADD R4, R0, x0		;R4 = SCORE 3
	JSR TWO_INT3
	AND R0, R0, #0
FOURTH	LEA R0, PROMPT4
	PUTS
	GETC
	ADD R5, R0, x0		;R5 = SCORE 4
	JSR TWO_INT4
	AND R0, R0, #0
FIFTH	LEA R0, PROMPT5
	PUTS
	GETC
	ADD R6, R0, x0		;R6 = SCORE 6
	AND R0, R0, #0
	JSR CALCULATE
;CALCULATE AVG
CALCULATE ADD R0, R2, x0
	  ADD R0, R3, x0
	  ADD R0, R4, x0
	  ADD R0, R5, x0
	  ADD R0, R6, x0
	  JSR DIV
	  AND R1, R1, #0
DONE	ADD R1, R0, x0
	ADD R1, R1, #15
	ADD R1, R1, #15
	ADD R1, R1, #15
	ADD R1, R1, #15
	ADD R1, R1, #3
	AND R0, R0, #0
	LEA R1, AVG
	AND R1, R1, x0
NEXT1 	LEA R1, MAX

;FIND THE MAX
	AND R1, R1, #0		;CLEAR
	ADD R1, R2, #0		;ASSUME FIRST SCORE IS LARGEST
;COMAPRE R3 WITH R1
	NOT R3, R3
	ADD R3, R3, #1
	ADD R7, R1, R3
	BRn CHECK_R4
	ADD R1, R3, #0

CHECK_R4
;COMPARE R4 WITH R1
	NOT R4, R4
	ADD R4, R4, #1
	ADD R7, R1, R4
	BRn CHECK_R5
	ADD R1, R4, #0

CHECK_R5
;COMPARE R5 WITH R1
	NOT R5, R5
	ADD R5, R5, #1
	ADD R7, R1, R5
	BRn CHECK_R6
	ADD R1, R5, #0
CHECK_R6
;COMPARE R6 WITH R1
	NOT R6, R6
	ADD R6, R6, #1
	ADD R7, R1, R6
	BRn DONE2
	ADD R1, R6, #0	
DONE2

	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
	JSR NEXT1
	
DIV
	ADD R1, R0, #-5		;SUBTRACT 5 FROM R1 AND STORE RESULT IN R1
	BRn DONE		;IF NEGATIVE BRANCH TO DONE
	ADD R0, R1, #0		;UPDATE R1 WITH THE RESULT OF SUBTRACTION
	ADD R7, R7, #1		;INCREAMENT THE QUOTIENT IN R2
	BRnzp DIV		;REPEAT
	
TWO_INT1
	AND R0, R0, #0			;CLEAR R0

 ;Read the first digit

   	GETC                		;Get character from keyboard
    	OUT                 		;OUT character
    	ADD R0, R0, R0      		;Shift left to prepare for two-digit number
    	ADD R0, R0, R0
    	ADD R0, R0, R0
    	ADD R0, R0, R0      		;Shift left by 4 (multiply by 16)
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3    		
    	ADD R0, R0, R1

;Read the second digit
    	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1      		;Add the second digit
;READ THE 3RD DIGIT
	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1
	PUTS
	GETC	
	JSR SECOND
TWO_INT2
	AND R0, R0, #0			;CLEAR R0

 ;Read the first digit

   	GETC                		;Get character from keyboard
    	OUT                 		;OUT character
    	ADD R0, R0, R0      		;Shift left to prepare for two-digit number
    	ADD R0, R0, R0
    	ADD R0, R0, R0
    	ADD R0, R0, R0      		;Shift left by 4 (multiply by 16)
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3    		
    	ADD R0, R0, R1

;Read the second digit
    	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1      		;Add the second digit
;READ THE 3RD DIGIT
	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1
	PUTS
	GETC	
	JSR THIRD
TWO_INT3
    
	AND R0, R0, #0			;CLEAR R0

 ;Read the first digit

   	GETC                		;Get character from keyboard
    	OUT                 		;OUT character
    	ADD R0, R0, R0      		;Shift left to prepare for two-digit number
    	ADD R0, R0, R0
    	ADD R0, R0, R0
    	ADD R0, R0, R0      		;Shift left by 4 (multiply by 16)
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3    		
    	ADD R0, R0, R1

;Read the second digit
    	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1      		;Add the second digit
;READ THE 3RD DIGIT
	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1
	PUTS
	GETC
	JSR FOURTH
TWO_INT4
    
	AND R0, R0, #0			;CLEAR R0

 ;Read the first digit

   	GETC                		;Get character from keyboard
    	OUT                 		;OUT character
    	ADD R0, R0, R0      		;Shift left to prepare for two-digit number
    	ADD R0, R0, R0
    	ADD R0, R0, R0
    	ADD R0, R0, R0      		;Shift left by 4 (multiply by 16)
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3    		
    	ADD R0, R0, R1

;Read the second digit
    	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1      		;Add the second digit
;READ THE 3RD DIGIT
	GETC                		;Get character from keyboard
    	OUT                 		;Echo the character
    	ADD R1, R1, #-15          	;CONVERT ASCII TO INT
	ADD R1, R1, #-15
	ADD R1, R1, #-15
	ADD R1, R1, #-3
    	ADD R0, R0, R1
	PUTS
	GETC
	;JSR FIFTH

;DATA

PROMPT1	.STRINGZ "ENTER FIRST SCORE:  \n"
PROMPT2	.STRINGZ "ENTER SECOND SCORE: \n"
PROMPT3	.STRINGZ "ENTER THIRD SCORE:  \n"
PROMPT4	.STRINGZ "ENTER FOURTH SCORE: \n"
PROMPT5	.STRINGZ "ENTER FIFTH SCORE:  \n"

MAX	.STRINGZ "\nMax: "
MIN 	.STRINGZ "\Min:  "
AVG   	.STRINGZ "\nAvg: "

.END	

