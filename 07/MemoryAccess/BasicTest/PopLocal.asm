// setup
@20
D=A
@SP
M=D
@30
D=A
@LCL
M=D
// push constant 10
@10
D=A

@SP
A=A-1
D=M
@SP
M=M-1

// pop local 2
@2
D=A
@LCL
M=D+M
@SP
M=M-1
D=M
@LCL
M=D
@2
D=A
@LCL
M=M-D
