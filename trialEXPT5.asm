ORG 0000H
MOV A,#38H
ACALL COMNWRT
ACALL DELAY
MOV A,#0EH
ACALL COMNWRT
ACALL DELAY
MOV A,#01H
ACALL COMNWRT
ACALL DELAY
MOV A,#06H
ACALL COMNWRT
ACALL DELAY
MOV A,#84H
ACALL COMNWRT
ACALL DELAY
MOV A,#'N'
ACALL DATAWRT
ACALL DELAY
MOV A,#'O'
ACALL DATAWRT

AGAIN : SJMP AGAIN
COMNWRT:
	MOV P1,A
	CLR P2.0
	CLR P2.1
	SETB P2.2
	CLR P2.2
	RET
DATAWRT:
	MOV P1,A
	CLR P2.0
	CLR P2.1
	SETB P2.2
	CLR P2.2
	RET	
DELAY:MOV R3,#50
HERE2:MOV R4,#255
HERE: DJNZ R4,HERE
	DJNZ R3,HERE2
	RET
	END