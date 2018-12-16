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
@SP // pop pointer 1           // that = argument[1]
M=M-1
@SP
A=M
D=M
@THAT
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0              // first element in the series = 0
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
@0
D=A
@THAT
M=M-D
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // pop that 1              // second element in the series = 1
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
@1
D=A
@THAT
M=M-D
@0 // push argument 0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@2 // push constant 2
D=A
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
@0 // pop argument 0          // num_of_elements -= 2 (first 2 elements are set)
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
@0
D=A
@ARG
M=M-D
(FibonacciSeries$MAIN_LOOP_START) // label MAIN_LOOP_START
@0 // push argument 0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
M=M-1
A=M
D=M
@FibonacciSeries$COMPUTE_ELEMENT
D;JNE
@FibonacciSeries$END_PROGRAM
0;JMP
(FibonacciSeries$COMPUTE_ELEMENT) // label COMPUTE_ELEMENT
@0 // push that 0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push that 1
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
@2 // pop that 2              // that[2] = that[0] + that[1]
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
@ THAT // push pointer 1
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push constant 1
D=A
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
@SP // pop pointer 1           // that += 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@0 // push argument 0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push constant 1
D=A
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
@0 // pop argument 0          // num_of_elements--
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
@0
D=A
@ARG
M=M-D
@FibonacciSeries$MAIN_LOOP_START
0;JMP
(FibonacciSeries$END_PROGRAM) // label END_PROGRAM
