@3030 // push constant 3030
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
@3040 // push constant 3040
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // pop this 2
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
@2
D=A
@THIS
M=M-D
@46 // push constant 46
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // pop that 6
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
@6
D=A
@THAT
M=M-D
@ THIS // push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@ THAT // push pointer 1
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
@2 // push this 2
D=A
@THIS
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
@6 // push that 6
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
