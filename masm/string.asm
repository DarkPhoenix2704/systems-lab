.model small
.DATA
MSG1 DB 'HELLO WORLD$'
.CODE
START:
MOV AX, @DATA
MOV DS, AX
MOV DX, OFFSET MSG1
MOV AH, 4CH
MOV AL, 00H
INT 21H
END START
