.model small
.DATA
N1 DW 2222H
N2 DW 1111H
N3 DW ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    XOR AX, AX
    MOV CX, AX
    MOV AX, N1
    SUB AX, N2
    MOV N3, AX
    JNC STOP
    INC BX
STOP:
    MOV CX, AX
    MOV AH, 4CH
    INT 21H
    END START