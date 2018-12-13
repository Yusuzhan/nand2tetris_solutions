// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
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
@0
D=A
@LCL
M=M-D
// push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop argument 2
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
// pop argument 1
@1
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
@1
D=A
@LCL
M=M-D
// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 6
@6
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
@6
D=A
@LCL
M=M-D
// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 5
@5
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
@5
D=A
@LCL
M=M-D
// pop that 2
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
// push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 6
NOT DEF
// push local 0
@0
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
@0
D=A
@LCL
M=M-D
// push that 5
@5
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
@5
D=A
@LCL
M=M-D
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=M+D
// push argument 1
@1
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
@1
D=A
@LCL
M=M-D
// sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
// push this 6
@6
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
@6
D=A
@LCL
M=M-D
// push this 6
@6
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
@6
D=A
@LCL
M=M-D
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=M+D
// sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
// push temp 6
NOT DEF
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=M+D
