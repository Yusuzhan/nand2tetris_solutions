@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // pop local 0
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
@21 // push constant 21
D=A
@SP
A=M
M=D
@SP
M=M+1
@22 // push constant 22
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // pop argument 2
D=A
@ARG
M=D+M
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@2
D=A
@ARG
M=M-D
@1 // pop argument 1
D=A
@ARG
M=D+M
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@1
D=A
@ARG
M=M-D
@36 // push constant 36
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // pop this 6
D=A
@THIS
M=D+M
@SP
M=M-1
A=M
D=M
@THIS
A=M
M=D
@6
D=A
@THIS
M=M-D
@42 // push constant 42
D=A
@SP
A=M
M=D
@SP
M=M+1
@45 // push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1
@5 // pop that 5
D=A
@THAT
M=D+M
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
@5
D=A
@THAT
M=M-D
@2 // pop that 2
D=A
@THAT
M=D+M
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
@2
D=A
@THAT
M=M-D
@510 // push constant 510
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 6
M=M-1
A=M
D=M
@R11
M=D
@0 // push local 0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // push that 5
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // push argument 1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@6 // push this 6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@6 // push this 6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@R11 // push temp 6
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
