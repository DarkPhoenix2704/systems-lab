.model small
.DATA
N1 DW 0011H
N2 DW 2222H
N3 DW ?
.CODE
START:
MOV AX, @DATA
MOV DS, AX
XOR AX, AX
MOV BX, AX
MOV AX, N1
MOV BX, N2
MUL BX
MOV N3, AX
JNC STOP
INC BX
STOP:
MOV CX, AX
MOV AH, 4CH
INT 21H
END START