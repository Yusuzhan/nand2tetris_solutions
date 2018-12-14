@20
D=A
@SP
M=D
@777
D=A
@20
M=D
// pop pointer 0
// D=stack; stack=stack-1
@SP
A=M
D=M
@SP
M=M-1
// MEM[THIS] = D
@THIS
M=D