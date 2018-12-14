// push constant 777
@777 // aaa
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 5
@SP
M=M-1
A=M
D=M
@R10
M=D
// push temp 5
@R10
D=M
@SP
A=M
M=D
@SP
M=M+1
