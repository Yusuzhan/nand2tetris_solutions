@SCREEN
D=A
@pointer
M=D
(LOOP)
    @KBD
    D=M
    @CLEAR
    D;JEQ
(BLACKEN)
    @pointer // blacken
    A=M
    M=-1
    @INC
    0;JMP
(CLEAR)
    @pointer
    A=M
    M=0
(INC)
    @pointer // pointer++
    M=M+1
@KBD
D=A
@pointer
D=D-M
@RESET
D;JLT
@LOOP
0;JMP
(RESET)
@SCREEN
D=A
@pointer
M=D
@LOOP
0;JMP