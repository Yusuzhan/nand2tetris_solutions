@261 // bootstrap
D=A
@SP
M=D
@BOOTSTRAP
D=A
@256
M=D
@Sys.init
0;JMP
(BOOTSTRAP)
(Sys.init) // function Sys.init 0
@4 // push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // ARG=SP-n-5 
D=A
@SP
D=M-D
@1
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(LBL_RET_0)
(Sys$WHILE) // label WHILE
@Sys$WHILE
0;JMP
(Main.fibonacci) // function Main.fibonacci 0
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
@SP // lt                     // checks if n<2
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_1
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_1
0;JMP
(LBL_LT_1)
@SP
A=M-1
M=-1
(LBL_NOT_LT_1)
@SP // if-goto IF_TRUE
M=M-1
A=M
D=M
@Main$IF_TRUE
D;JNE
@Main$IF_FALSE
0;JMP
(Main$IF_TRUE) // label IF_TRUE          // if n<2, return n
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
@5 // return
D=A
@LCL
A=M-D
D=M
@14
M=D
@SP // *ARG = pop()
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG // SP = ARG + 1
D=M
@SP
M=D+1
@LCL // THAT=*(FRAME-1)
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@LCL // THIS=*(FRAME-2)
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@LCL
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@LCL
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@14
A=M
0;JMP
(Main$IF_FALSE) // label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)
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
@LBL_RET_2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // ARG=SP-n-5 
D=A
@SP
D=M-D
@1
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(LBL_RET_2)
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
@LBL_RET_3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // ARG=SP-n-5 
D=A
@SP
D=M-D
@1
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(LBL_RET_3)
@SP // add                    // returns fib(n-1) + fib(n-2)
M=M-1
A=M
D=M
A=A-1
M=M+D
@5 // return
D=A
@LCL
A=M-D
D=M
@14
M=D
@SP // *ARG = pop()
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG // SP = ARG + 1
D=M
@SP
M=D+1
@LCL // THAT=*(FRAME-1)
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@LCL // THIS=*(FRAME-2)
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@LCL
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@LCL
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@14
A=M
0;JMP