// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 2
@2
D=A
@LCL
M=D+M
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
@2
D=A
@LCL
M=M-D
