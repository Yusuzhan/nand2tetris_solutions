// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_0
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_0
0;JMP
(LBL_EQ_0)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_0)
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_1
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_1
0;JMP
(LBL_EQ_1)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_1)
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_2
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_2
0;JMP
(LBL_EQ_2)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_2)
