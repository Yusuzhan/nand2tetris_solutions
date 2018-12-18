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
(Array.new) // function Array.new 0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_0
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_0
0;JMP
(LBL_GT_0)
@SP
A=M-1
M=-1
(LBL_NOT_GT_0)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Array$IF_TRUE0
D;JNE
@Array$IF_FALSE0
0;JMP
(Array$IF_TRUE0) // label IF_TRUE0
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_1
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
@Sys.error
0;JMP
(LBL_RET_1)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Array$IF_FALSE0) // label IF_FALSE0
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
@Memory.alloc
0;JMP
(LBL_RET_2)
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
(Array.dispose) // function Array.dispose 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
@ THIS // push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Memory.deAlloc
0;JMP
(LBL_RET_3)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Keyboard.init) // function Keyboard.init 0
@0 // push constant 0
D=A
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
(Keyboard.keyPressed) // function Keyboard.keyPressed 0
@24576 // push constant 24576
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_4
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
@Memory.peek
0;JMP
(LBL_RET_4)
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
(Keyboard.readChar) // function Keyboard.readChar 2
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_5
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
@Output.printChar
0;JMP
(LBL_RET_5)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Keyboard$WHILE_EXP0) // label WHILE_EXP0
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_6
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_6
0;JMP
(LBL_EQ_6)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_6)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_7
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_7
0;JMP
(LBL_GT_7)
@SP
A=M-1
M=-1
(LBL_NOT_GT_7)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Keyboard$WHILE_END0
D;JNE
@LBL_RET_8
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Keyboard.keyPressed
0;JMP
(LBL_RET_8)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_9
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_9
0;JMP
(LBL_GT_9)
@SP
A=M-1
M=-1
(LBL_NOT_GT_9)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Keyboard$IF_TRUE0
D;JNE
@Keyboard$IF_FALSE0
0;JMP
(Keyboard$IF_TRUE0) // label IF_TRUE0
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
@1 // pop local 1
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
(Keyboard$IF_FALSE0) // label IF_FALSE0
@Keyboard$WHILE_EXP0
0;JMP
(Keyboard$WHILE_END0) // label WHILE_END0
@LBL_RET_10
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.backSpace
0;JMP
(LBL_RET_10)
@LBL_RET_11
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
@Output.printChar
0;JMP
(LBL_RET_11)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_12
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
@Output.printChar
0;JMP
(LBL_RET_12)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@1 // push local 1
D=A
@LCL
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
(Keyboard.readLine) // function Keyboard.readLine 5
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@80 // push constant 80
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_13
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
@String.new
0;JMP
(LBL_RET_13)
@3 // pop local 3
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
@3
D=A
@LCL
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
@LBL_RET_14
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
@Output.printString
0;JMP
(LBL_RET_14)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_15
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.newLine
0;JMP
(LBL_RET_15)
@1 // pop local 1
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
@LBL_RET_16
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.backSpace
0;JMP
(LBL_RET_16)
@2 // pop local 2
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
(Keyboard$WHILE_EXP0) // label WHILE_EXP0
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Keyboard$WHILE_END0
D;JNE
@LBL_RET_17
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Keyboard.readChar
0;JMP
(LBL_RET_17)
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_18
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_18
0;JMP
(LBL_EQ_18)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_18)
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Keyboard$IF_TRUE0
D;JNE
@Keyboard$IF_FALSE0
0;JMP
(Keyboard$IF_TRUE0) // label IF_TRUE0
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_19
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_19
0;JMP
(LBL_EQ_19)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_19)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Keyboard$IF_TRUE1
D;JNE
@Keyboard$IF_FALSE1
0;JMP
(Keyboard$IF_TRUE1) // label IF_TRUE1
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_20
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
@String.eraseLastChar
0;JMP
(LBL_RET_20)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Keyboard$IF_END1
0;JMP
(Keyboard$IF_FALSE1) // label IF_FALSE1
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@LBL_RET_21
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_21)
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
(Keyboard$IF_END1) // label IF_END1
(Keyboard$IF_FALSE0) // label IF_FALSE0
@Keyboard$WHILE_EXP0
0;JMP
(Keyboard$WHILE_END0) // label WHILE_END0
@3 // push local 3
D=A
@LCL
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
(Keyboard.readInt) // function Keyboard.readInt 2
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@LBL_RET_22
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
@Keyboard.readLine
0;JMP
(LBL_RET_22)
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
@LBL_RET_23
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
@String.intValue
0;JMP
(LBL_RET_23)
@1 // pop local 1
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
@LBL_RET_24
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
@String.dispose
0;JMP
(LBL_RET_24)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@1 // push local 1
D=A
@LCL
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
(Main.main) // function Main.main 0
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_25
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
@String.new
0;JMP
(LBL_RET_25)
@72 // push constant 72
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_26
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_26)
@101 // push constant 101
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_27
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_27)
@108 // push constant 108
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_28
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_28)
@108 // push constant 108
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_29
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_29)
@111 // push constant 111
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_30
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_30)
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_31
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_31)
@119 // push constant 119
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_32
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_32)
@111 // push constant 111
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_33
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_33)
@114 // push constant 114
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_34
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_34)
@108 // push constant 108
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_35
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_35)
@100 // push constant 100
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_36
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_36)
@33 // push constant 33
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_37
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_37)
@LBL_RET_38
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
@Output.printString
0;JMP
(LBL_RET_38)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_39
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.println
0;JMP
(LBL_RET_39)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Math.init) // function Math.init 1
@SP
A=M
M=0
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_40
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
@Array.new
0;JMP
(LBL_RET_40)
@SP // pop static 1
M=M-1
A=M
D=M
@Math.1
M=D
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_41
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
@Array.new
0;JMP
(LBL_RET_41)
@SP // pop static 0
M=M-1
A=M
D=M
@Math.0
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@Math.0 // push static 0
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Math$WHILE_EXP0) // label WHILE_EXP0
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
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_42
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_42
0;JMP
(LBL_LT_42)
@SP
A=M-1
M=-1
(LBL_NOT_LT_42)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Math$WHILE_END0
D;JNE
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
@Math.0 // push static 0
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
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Math$WHILE_EXP0
0;JMP
(Math$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Math.abs) // function Math.abs 0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_43
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_43
0;JMP
(LBL_LT_43)
@SP
A=M-1
M=-1
(LBL_NOT_LT_43)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
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
@SP // neg
D=M-1
A=D
M=-M
@0 // pop argument 0
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
(Math$IF_FALSE0) // label IF_FALSE0
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
(Math.multiply) // function Math.multiply 5
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_44
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_44
0;JMP
(LBL_LT_44)
@SP
A=M-1
M=-1
(LBL_NOT_LT_44)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_45
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_45
0;JMP
(LBL_GT_45)
@SP
A=M-1
M=-1
(LBL_NOT_GT_45)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_46
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_46
0;JMP
(LBL_GT_46)
@SP
A=M-1
M=-1
(LBL_NOT_GT_46)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_47
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_47
0;JMP
(LBL_LT_47)
@SP
A=M-1
M=-1
(LBL_NOT_LT_47)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@4 // pop local 4
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
@4
D=A
@LCL
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
@LBL_RET_48
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
@Math.abs
0;JMP
(LBL_RET_48)
@0 // pop argument 0
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
@LBL_RET_49
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
@Math.abs
0;JMP
(LBL_RET_49)
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_50
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_50
0;JMP
(LBL_LT_50)
@SP
A=M-1
M=-1
(LBL_NOT_LT_50)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
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
@1 // pop local 1
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
@0 // pop argument 0
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(Math$IF_FALSE0) // label IF_FALSE0
(Math$WHILE_EXP0) // label WHILE_EXP0
@2 // push local 2
D=A
@LCL
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_51
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_51
0;JMP
(LBL_LT_51)
@SP
A=M-1
M=-1
(LBL_NOT_LT_51)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Math$WHILE_END0
D;JNE
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_52
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_52
0;JMP
(LBL_EQ_52)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_52)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Math$IF_TRUE1
D;JNE
@Math$IF_FALSE1
0;JMP
(Math$IF_TRUE1) // label IF_TRUE1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@2 // pop local 2
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
(Math$IF_FALSE1) // label IF_FALSE1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@0 // pop argument 0
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
@3 // push local 3
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@Math$WHILE_EXP0
0;JMP
(Math$WHILE_END0) // label WHILE_END0
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Math$IF_TRUE2
D;JNE
@Math$IF_FALSE2
0;JMP
(Math$IF_TRUE2) // label IF_TRUE2
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
@SP // neg
D=M-1
A=D
M=-M
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
(Math$IF_FALSE2) // label IF_FALSE2
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
(Math.divide) // function Math.divide 4
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_53
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_53
0;JMP
(LBL_EQ_53)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_53)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_54
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
@Sys.error
0;JMP
(LBL_RET_54)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Math$IF_FALSE0) // label IF_FALSE0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_55
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_55
0;JMP
(LBL_LT_55)
@SP
A=M-1
M=-1
(LBL_NOT_LT_55)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_56
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_56
0;JMP
(LBL_GT_56)
@SP
A=M-1
M=-1
(LBL_NOT_GT_56)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_57
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_57
0;JMP
(LBL_GT_57)
@SP
A=M-1
M=-1
(LBL_NOT_GT_57)
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_58
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_58
0;JMP
(LBL_LT_58)
@SP
A=M-1
M=-1
(LBL_NOT_LT_58)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@2 // pop local 2
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@Math.1 // push static 1
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
@LBL_RET_59
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
@Math.abs
0;JMP
(LBL_RET_59)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@LBL_RET_60
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
@Math.abs
0;JMP
(LBL_RET_60)
@0 // pop argument 0
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
(Math$WHILE_EXP0) // label WHILE_EXP0
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
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_61
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_61
0;JMP
(LBL_LT_61)
@SP
A=M-1
M=-1
(LBL_NOT_LT_61)
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Math$WHILE_END0
D;JNE
@32767 // push constant 32767
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_62
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_62
0;JMP
(LBL_LT_62)
@SP
A=M-1
M=-1
(LBL_NOT_LT_62)
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Math$IF_TRUE1
D;JNE
@Math$IF_FALSE1
0;JMP
(Math$IF_TRUE1) // label IF_TRUE1
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
@Math.1 // push static 1
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_63
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_63
0;JMP
(LBL_GT_63)
@SP
A=M-1
M=-1
(LBL_NOT_GT_63)
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Math$IF_TRUE2
D;JNE
@Math$IF_FALSE2
0;JMP
(Math$IF_TRUE2) // label IF_TRUE2
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
(Math$IF_FALSE2) // label IF_FALSE2
(Math$IF_FALSE1) // label IF_FALSE1
@Math$WHILE_EXP0
0;JMP
(Math$WHILE_END0) // label WHILE_END0
(Math$WHILE_EXP1) // label WHILE_EXP1
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_64
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_64
0;JMP
(LBL_GT_64)
@SP
A=M-1
M=-1
(LBL_NOT_GT_64)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END1
M=M-1
A=M
D=M
@Math$WHILE_END1
D;JNE
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_65
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_65
0;JMP
(LBL_GT_65)
@SP
A=M-1
M=-1
(LBL_NOT_GT_65)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@Math$IF_TRUE3
D;JNE
@Math$IF_FALSE3
0;JMP
(Math$IF_TRUE3) // label IF_TRUE3
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // pop local 1
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
@Math.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@0 // pop argument 0
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
(Math$IF_FALSE3) // label IF_FALSE3
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
@Math$WHILE_EXP1
0;JMP
(Math$WHILE_END1) // label WHILE_END1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE4
M=M-1
A=M
D=M
@Math$IF_TRUE4
D;JNE
@Math$IF_FALSE4
0;JMP
(Math$IF_TRUE4) // label IF_TRUE4
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@1 // pop local 1
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
(Math$IF_FALSE4) // label IF_FALSE4
@1 // push local 1
D=A
@LCL
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
(Math.sqrt) // function Math.sqrt 4
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_66
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_66
0;JMP
(LBL_LT_66)
@SP
A=M-1
M=-1
(LBL_NOT_LT_66)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
@4 // push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_67
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
@Sys.error
0;JMP
(LBL_RET_67)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Math$IF_FALSE0) // label IF_FALSE0
@7 // push constant 7
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
(Math$WHILE_EXP0) // label WHILE_EXP0
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_68
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_68
0;JMP
(LBL_GT_68)
@SP
A=M-1
M=-1
(LBL_NOT_GT_68)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Math$WHILE_END0
D;JNE
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Math.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // pop local 1
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_69
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_69)
@2 // pop local 2
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_70
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_70
0;JMP
(LBL_GT_70)
@SP
A=M-1
M=-1
(LBL_NOT_GT_70)
@SP // not
D=M-1
A=D
M=!M
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_71
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_71
0;JMP
(LBL_LT_71)
@SP
A=M-1
M=-1
(LBL_NOT_LT_71)
@SP // not
D=M-1
A=D
M=!M
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Math$IF_TRUE1
D;JNE
@Math$IF_FALSE1
0;JMP
(Math$IF_TRUE1) // label IF_TRUE1
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
(Math$IF_FALSE1) // label IF_FALSE1
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
@Math$WHILE_EXP0
0;JMP
(Math$WHILE_END0) // label WHILE_END0
@3 // push local 3
D=A
@LCL
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
(Math.max) // function Math.max 0
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_72
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_72
0;JMP
(LBL_GT_72)
@SP
A=M-1
M=-1
(LBL_NOT_GT_72)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
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
(Math$IF_FALSE0) // label IF_FALSE0
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
(Math.min) // function Math.min 0
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_73
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_73
0;JMP
(LBL_LT_73)
@SP
A=M-1
M=-1
(LBL_NOT_LT_73)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Math$IF_TRUE0
D;JNE
@Math$IF_FALSE0
0;JMP
(Math$IF_TRUE0) // label IF_TRUE0
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
(Math$IF_FALSE0) // label IF_FALSE0
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
(Memory.init) // function Memory.init 0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 0
M=M-1
A=M
D=M
@Memory.0
M=D
@2048 // push constant 2048
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0 // push static 0
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
@14334 // push constant 14334
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@2049 // push constant 2049
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0 // push static 0
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
@2050 // push constant 2050
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
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
(Memory.peek) // function Memory.peek 0
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
@Memory.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
(Memory.poke) // function Memory.poke 0
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
@Memory.0 // push static 0
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
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
(Memory.alloc) // function Memory.alloc 1
@SP
A=M
M=0
@SP
M=M+1
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_74
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_74
0;JMP
(LBL_LT_74)
@SP
A=M-1
M=-1
(LBL_NOT_LT_74)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Memory$IF_TRUE0
D;JNE
@Memory$IF_FALSE0
0;JMP
(Memory$IF_TRUE0) // label IF_TRUE0
@5 // push constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_75
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
@Sys.error
0;JMP
(LBL_RET_75)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Memory$IF_FALSE0) // label IF_FALSE0
@2048 // push constant 2048
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
(Memory$WHILE_EXP0) // label WHILE_EXP0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_76
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_76
0;JMP
(LBL_LT_76)
@SP
A=M-1
M=-1
(LBL_NOT_LT_76)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Memory$WHILE_END0
D;JNE
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@Memory$WHILE_EXP0
0;JMP
(Memory$WHILE_END0) // label WHILE_END0
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@16379 // push constant 16379
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_77
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_77
0;JMP
(LBL_GT_77)
@SP
A=M-1
M=-1
(LBL_NOT_GT_77)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Memory$IF_TRUE1
D;JNE
@Memory$IF_FALSE1
0;JMP
(Memory$IF_TRUE1) // label IF_TRUE1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_78
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
@Sys.error
0;JMP
(LBL_RET_78)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Memory$IF_FALSE1) // label IF_FALSE1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_79
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_79
0;JMP
(LBL_GT_79)
@SP
A=M-1
M=-1
(LBL_NOT_GT_79)
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Memory$IF_TRUE2
D;JNE
@Memory$IF_FALSE2
0;JMP
(Memory$IF_TRUE2) // label IF_TRUE2
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@2 // push constant 2
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
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_80
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_80
0;JMP
(LBL_EQ_80)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_80)
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@Memory$IF_TRUE3
D;JNE
@Memory$IF_FALSE3
0;JMP
(Memory$IF_TRUE3) // label IF_TRUE3
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
@3 // push constant 3
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@4 // push constant 4
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Memory$IF_END3
0;JMP
(Memory$IF_FALSE3) // label IF_FALSE3
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
@3 // push constant 3
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Memory$IF_END3) // label IF_END3
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@2 // push constant 2
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Memory$IF_FALSE2) // label IF_FALSE2
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@2 // push constant 2
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
(Memory.deAlloc) // function Memory.deAlloc 2
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@1 // pop local 1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_81
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_81
0;JMP
(LBL_EQ_81)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_81)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Memory$IF_TRUE0
D;JNE
@Memory$IF_FALSE0
0;JMP
(Memory$IF_TRUE0) // label IF_TRUE0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Memory$IF_END0
0;JMP
(Memory$IF_FALSE0) // label IF_FALSE0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@1 // push local 1
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@1 // push local 1
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_82
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_82
0;JMP
(LBL_EQ_82)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_82)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Memory$IF_TRUE1
D;JNE
@Memory$IF_FALSE1
0;JMP
(Memory$IF_TRUE1) // label IF_TRUE1
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
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
@2 // push constant 2
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Memory$IF_END1
0;JMP
(Memory$IF_FALSE1) // label IF_FALSE1
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Memory$IF_END1) // label IF_END1
(Memory$IF_END0) // label IF_END0
@0 // push constant 0
D=A
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
(Output.init) // function Output.init 0
@16384 // push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 4
M=M-1
A=M
D=M
@Output.4
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_83
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
@String.new
0;JMP
(LBL_RET_83)
@SP // pop static 3
M=M-1
A=M
D=M
@Output.3
M=D
@LBL_RET_84
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.initMap
0;JMP
(LBL_RET_84)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_85
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.createShiftedMap
0;JMP
(LBL_RET_85)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Output.initMap) // function Output.initMap 0
@127 // push constant 127
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_86
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
@Array.new
0;JMP
(LBL_RET_86)
@SP // pop static 5
M=M-1
A=M
D=M
@Output.5
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_87
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_87)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_88
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_88)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@33 // push constant 33
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_89
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_89)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@34 // push constant 34
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@20 // push constant 20
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_90
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_90)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_91
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_91)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@36 // push constant 36
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_92
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_92)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@37 // push constant 37
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@49 // push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_93
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_93)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@38 // push constant 38
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_94
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_94)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@39 // push constant 39
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_95
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_95)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@40 // push constant 40
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_96
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_96)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@41 // push constant 41
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_97
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_97)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@42 // push constant 42
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_98
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_98)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@43 // push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_99
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_99)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@44 // push constant 44
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_100
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_100)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@45 // push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_101
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_101)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@46 // push constant 46
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_102
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_102)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@47 // push constant 47
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_103
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_103)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_104
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_104)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@49 // push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_105
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_105)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@50 // push constant 50
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_106
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_106)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_107
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_107)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@52 // push constant 52
D=A
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@26 // push constant 26
D=A
@SP
A=M
M=D
@SP
M=M+1
@25 // push constant 25
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@60 // push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_108
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_108)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@53 // push constant 53
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_109
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_109)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_110
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_110)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@55 // push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@49 // push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_111
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_111)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@56 // push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_112
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_112)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@57 // push constant 57
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@62 // push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_113
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_113)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@58 // push constant 58
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_114
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_114)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_115
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_115)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@60 // push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_116
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_116)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@61 // push constant 61
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_117
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_117)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@62 // push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_118
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_118)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@64 // push constant 64
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_119
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_119)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_120
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_120)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@65 // push constant 65
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_121
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_121)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@66 // push constant 66
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_122
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_122)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@67 // push constant 67
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_123
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_123)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@68 // push constant 68
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_124
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_124)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@69 // push constant 69
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_125
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_125)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@70 // push constant 70
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_126
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_126)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@71 // push constant 71
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@44 // push constant 44
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_127
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_127)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@72 // push constant 72
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_128
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_128)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@73 // push constant 73
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_129
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_129)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@74 // push constant 74
D=A
@SP
A=M
M=D
@SP
M=M+1
@60 // push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_130
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_130)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@75 // push constant 75
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_131
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_131)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@76 // push constant 76
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_132
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_132)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@77 // push constant 77
D=A
@SP
A=M
M=D
@SP
M=M+1
@33 // push constant 33
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_133
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_133)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@78 // push constant 78
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@55 // push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1
@55 // push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_134
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_134)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@79 // push constant 79
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_135
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_135)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@80 // push constant 80
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_136
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_136)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@81 // push constant 81
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@59 // push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_137
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_137)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@82 // push constant 82
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_138
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_138)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@83 // push constant 83
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_139
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_139)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@84 // push constant 84
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
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
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_140
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_140)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@85 // push constant 85
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_141
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_141)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@86 // push constant 86
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_142
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_142)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@87 // push constant 87
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_143
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_143)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@88 // push constant 88
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_144
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_144)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@89 // push constant 89
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_145
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_145)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@90 // push constant 90
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@49 // push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@35 // push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_146
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_146)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@91 // push constant 91
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_147
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_147)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@92 // push constant 92
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
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
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_148
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_148)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@93 // push constant 93
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_149
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_149)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@94 // push constant 94
D=A
@SP
A=M
M=D
@SP
M=M+1
@8 // push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_150
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_150)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@95 // push constant 95
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_151
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_151)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@96 // push constant 96
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_152
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_152)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@97 // push constant 97
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_153
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_153)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@98 // push constant 98
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_154
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_154)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@99 // push constant 99
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_155
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_155)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@100 // push constant 100
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@60 // push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_156
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_156)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@101 // push constant 101
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_157
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_157)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@102 // push constant 102
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@38 // push constant 38
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_158
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_158)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@103 // push constant 103
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@62 // push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_159
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_159)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@104 // push constant 104
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@55 // push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_160
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_160)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@105 // push constant 105
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_161
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_161)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@106 // push constant 106
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@56 // push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_162
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_162)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@107 // push constant 107
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_163
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_163)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@108 // push constant 108
D=A
@SP
A=M
M=D
@SP
M=M+1
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_164
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_164)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@109 // push constant 109
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@29 // push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@43 // push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1
@43 // push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1
@43 // push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1
@43 // push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_165
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_165)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@110 // push constant 110
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@29 // push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_166
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_166)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@111 // push constant 111
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_167
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_167)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@112 // push constant 112
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_168
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_168)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@113 // push constant 113
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@62 // push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_169
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_169)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@114 // push constant 114
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@29 // push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1
@55 // push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_170
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_170)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@115 // push constant 115
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_171
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_171)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@116 // push constant 116
D=A
@SP
A=M
M=D
@SP
M=M+1
@4 // push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@28 // push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_172
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_172)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@117 // push constant 117
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@54 // push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_173
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_173)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@118 // push constant 118
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_174
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_174)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@119 // push constant 119
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_175
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_175)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@120 // push constant 120
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@30 // push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_176
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_176)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@121 // push constant 121
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@62 // push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@24 // push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_177
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_177)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@122 // push constant 122
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@27 // push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@51 // push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_178
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_178)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@123 // push constant 123
D=A
@SP
A=M
M=D
@SP
M=M+1
@56 // push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@56 // push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_179
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_179)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@124 // push constant 124
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_180
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_180)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@125 // push constant 125
D=A
@SP
A=M
M=D
@SP
M=M+1
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@56 // push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_181
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_181)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@126 // push constant 126
D=A
@SP
A=M
M=D
@SP
M=M+1
@38 // push constant 38
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
@25 // push constant 25
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_182
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
@12
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.create
0;JMP
(LBL_RET_182)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Output.create) // function Output.create 1
@SP
A=M
M=0
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_183
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
@Array.new
0;JMP
(LBL_RET_183)
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
@Output.5 // push static 5
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@4 // push argument 4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@4 // push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@5 // push argument 5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@5 // push constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@6 // push argument 6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@7 // push argument 7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@8 // push argument 8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@8 // push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@9 // push argument 9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@9 // push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@10 // push argument 10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@11 // push argument 11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
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
(Output.createShiftedMap) // function Output.createShiftedMap 4
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@127 // push constant 127
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_184
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
@Array.new
0;JMP
(LBL_RET_184)
@SP // pop static 6
M=M-1
A=M
D=M
@Output.6
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // pop local 2
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
(Output$WHILE_EXP0) // label WHILE_EXP0
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@127 // push constant 127
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_185
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_185
0;JMP
(LBL_LT_185)
@SP
A=M-1
M=-1
(LBL_NOT_LT_185)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Output$WHILE_END0
D;JNE
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Output.5 // push static 5
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_186
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
@Array.new
0;JMP
(LBL_RET_186)
@1 // pop local 1
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Output.6 // push static 6
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
(Output$WHILE_EXP1) // label WHILE_EXP1
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_187
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_187
0;JMP
(LBL_LT_187)
@SP
A=M-1
M=-1
(LBL_NOT_LT_187)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END1
M=M-1
A=M
D=M
@Output$WHILE_END1
D;JNE
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
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
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@256 // push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_188
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_188)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@3 // push local 3
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@Output$WHILE_EXP1
0;JMP
(Output$WHILE_END1) // label WHILE_END1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_189
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_189
0;JMP
(LBL_EQ_189)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_189)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // pop local 2
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
@Output$IF_END0
0;JMP
(Output$IF_FALSE0) // label IF_FALSE0
@2 // push local 2
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@2 // pop local 2
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
(Output$IF_END0) // label IF_END0
@Output$WHILE_EXP0
0;JMP
(Output$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Output.getMap) // function Output.getMap 1
@SP
A=M
M=0
@SP
M=M+1
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
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_190
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_190
0;JMP
(LBL_LT_190)
@SP
A=M-1
M=-1
(LBL_NOT_LT_190)
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
@126 // push constant 126
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_191
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_191
0;JMP
(LBL_GT_191)
@SP
A=M-1
M=-1
(LBL_NOT_GT_191)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // pop argument 0
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
(Output$IF_FALSE0) // label IF_FALSE0
@Output.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Output$IF_TRUE1
D;JNE
@Output$IF_FALSE1
0;JMP
(Output$IF_TRUE1) // label IF_TRUE1
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
@Output.5 // push static 5
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@Output$IF_END1
0;JMP
(Output$IF_FALSE1) // label IF_FALSE1
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
@Output.6 // push static 6
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
(Output$IF_END1) // label IF_END1
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
(Output.drawChar) // function Output.drawChar 4
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@LBL_RET_192
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
@Output.getMap
0;JMP
(LBL_RET_192)
@2 // pop local 2
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
@Output.1 // push static 1
D=M
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
(Output$WHILE_EXP0) // label WHILE_EXP0
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@11 // push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_193
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_193
0;JMP
(LBL_LT_193)
@SP
A=M-1
M=-1
(LBL_NOT_LT_193)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Output$WHILE_END0
D;JNE
@Output.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
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
@Output.4 // push static 4
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@256 // push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@Output$IF_END0
0;JMP
(Output$IF_FALSE0) // label IF_FALSE0
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
@Output.4 // push static 4
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
(Output$IF_END0) // label IF_END0
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
@Output.4 // push static 4
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@32 // push constant 32
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
@1 // push local 1
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // pop local 1
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
@Output$WHILE_EXP0
0;JMP
(Output$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Output.moveCursor) // function Output.moveCursor 0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_194
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_194
0;JMP
(LBL_LT_194)
@SP
A=M-1
M=-1
(LBL_NOT_LT_194)
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
@22 // push constant 22
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_195
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_195
0;JMP
(LBL_GT_195)
@SP
A=M-1
M=-1
(LBL_NOT_GT_195)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_196
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_196
0;JMP
(LBL_LT_196)
@SP
A=M-1
M=-1
(LBL_NOT_LT_196)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@63 // push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_197
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_197
0;JMP
(LBL_GT_197)
@SP
A=M-1
M=-1
(LBL_NOT_GT_197)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@20 // push constant 20
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_198
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
@Sys.error
0;JMP
(LBL_RET_198)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Output$IF_FALSE0) // label IF_FALSE0
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
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_199
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_199)
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@352 // push constant 352
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_200
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_200)
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@Output.0 // push static 0
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
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
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
@Output.0 // push static 0
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
@LBL_RET_201
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_201)
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_202
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_202
0;JMP
(LBL_EQ_202)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_202)
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_203
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
@Output.drawChar
0;JMP
(LBL_RET_203)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Output.printChar) // function Output.printChar 0
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
@LBL_RET_204
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.newLine
0;JMP
(LBL_RET_204)
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_205
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_205
0;JMP
(LBL_EQ_205)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_205)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@LBL_RET_206
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.println
0;JMP
(LBL_RET_206)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Output$IF_END0
0;JMP
(Output$IF_FALSE0) // label IF_FALSE0
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
@LBL_RET_207
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.backSpace
0;JMP
(LBL_RET_207)
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_208
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_208
0;JMP
(LBL_EQ_208)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_208)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Output$IF_TRUE1
D;JNE
@Output$IF_FALSE1
0;JMP
(Output$IF_TRUE1) // label IF_TRUE1
@LBL_RET_209
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.backSpace
0;JMP
(LBL_RET_209)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Output$IF_END1
0;JMP
(Output$IF_FALSE1) // label IF_FALSE1
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
@LBL_RET_210
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
@Output.drawChar
0;JMP
(LBL_RET_210)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Output.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Output$IF_TRUE2
D;JNE
@Output$IF_FALSE2
0;JMP
(Output$IF_TRUE2) // label IF_TRUE2
@Output.0 // push static 0
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
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@Output.1 // push static 1
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
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
(Output$IF_FALSE2) // label IF_FALSE2
@Output.0 // push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_211
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_211
0;JMP
(LBL_EQ_211)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_211)
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@Output$IF_TRUE3
D;JNE
@Output$IF_FALSE3
0;JMP
(Output$IF_TRUE3) // label IF_TRUE3
@LBL_RET_212
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.println
0;JMP
(LBL_RET_212)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Output$IF_END3
0;JMP
(Output$IF_FALSE3) // label IF_FALSE3
@Output.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
(Output$IF_END3) // label IF_END3
(Output$IF_END1) // label IF_END1
(Output$IF_END0) // label IF_END0
@0 // push constant 0
D=A
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
(Output.printString) // function Output.printString 2
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@LBL_RET_213
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
@String.length
0;JMP
(LBL_RET_213)
@1 // pop local 1
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
(Output$WHILE_EXP0) // label WHILE_EXP0
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_214
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_214
0;JMP
(LBL_LT_214)
@SP
A=M-1
M=-1
(LBL_NOT_LT_214)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Output$WHILE_END0
D;JNE
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
@LBL_RET_215
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.charAt
0;JMP
(LBL_RET_215)
@LBL_RET_216
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
@Output.printChar
0;JMP
(LBL_RET_216)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
@Output$WHILE_EXP0
0;JMP
(Output$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Output.printInt) // function Output.printInt 0
@Output.3 // push static 3
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@LBL_RET_217
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.setInt
0;JMP
(LBL_RET_217)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Output.3 // push static 3
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_218
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
@Output.printString
0;JMP
(LBL_RET_218)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Output.println) // function Output.println 0
@Output.1 // push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1
@352 // push constant 352
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
@Output.0 // push static 0
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
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
@Output.1 // push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1
@8128 // push constant 8128
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_219
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_219
0;JMP
(LBL_EQ_219)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_219)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
(Output$IF_FALSE0) // label IF_FALSE0
@0 // push constant 0
D=A
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
(Output.backSpace) // function Output.backSpace 0
@Output.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Output$IF_TRUE0
D;JNE
@Output$IF_FALSE0
0;JMP
(Output$IF_TRUE0) // label IF_TRUE0
@Output.0 // push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_220
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_220
0;JMP
(LBL_GT_220)
@SP
A=M-1
M=-1
(LBL_NOT_GT_220)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Output$IF_TRUE1
D;JNE
@Output$IF_FALSE1
0;JMP
(Output$IF_TRUE1) // label IF_TRUE1
@Output.0 // push static 0
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
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@Output.1 // push static 1
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
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
@Output$IF_END1
0;JMP
(Output$IF_FALSE1) // label IF_FALSE1
@31 // push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 0
M=M-1
A=M
D=M
@Output.0
M=D
@Output.1 // push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_221
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_221
0;JMP
(LBL_EQ_221)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_221)
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Output$IF_TRUE2
D;JNE
@Output$IF_FALSE2
0;JMP
(Output$IF_TRUE2) // label IF_TRUE2
@8128 // push constant 8128
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
(Output$IF_FALSE2) // label IF_FALSE2
@Output.1 // push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1
@321 // push constant 321
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
@SP // pop static 1
M=M-1
A=M
D=M
@Output.1
M=D
(Output$IF_END1) // label IF_END1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
@Output$IF_END0
0;JMP
(Output$IF_FALSE0) // label IF_FALSE0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // pop static 2
M=M-1
A=M
D=M
@Output.2
M=D
(Output$IF_END0) // label IF_END0
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_222
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
@Output.drawChar
0;JMP
(LBL_RET_222)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Screen.init) // function Screen.init 1
@SP
A=M
M=0
@SP
M=M+1
@16384 // push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop static 1
M=M-1
A=M
D=M
@Screen.1
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // pop static 2
M=M-1
A=M
D=M
@Screen.2
M=D
@17 // push constant 17
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_223
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
@Array.new
0;JMP
(LBL_RET_223)
@SP // pop static 0
M=M-1
A=M
D=M
@Screen.0
M=D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@Screen.0 // push static 0
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Screen$WHILE_EXP0) // label WHILE_EXP0
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
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_224
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_224
0;JMP
(LBL_LT_224)
@SP
A=M-1
M=-1
(LBL_NOT_LT_224)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
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
@Screen.0 // push static 0
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
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Screen.clearScreen) // function Screen.clearScreen 1
@SP
A=M
M=0
@SP
M=M+1
(Screen$WHILE_EXP0) // label WHILE_EXP0
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
@8192 // push constant 8192
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_225
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_225
0;JMP
(LBL_LT_225)
@SP
A=M-1
M=-1
(LBL_NOT_LT_225)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
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
@Screen.1 // push static 1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Screen.updateLocation) // function Screen.updateLocation 0
@Screen.2 // push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
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
@Screen.1 // push static 1
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
@Screen.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@Screen$IF_END0
0;JMP
(Screen$IF_FALSE0) // label IF_FALSE0
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
@Screen.1 // push static 1
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
@Screen.1 // push static 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // not
D=M-1
A=D
M=!M
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(Screen$IF_END0) // label IF_END0
@0 // push constant 0
D=A
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
(Screen.setColor) // function Screen.setColor 0
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
@SP // pop static 2
M=M-1
A=M
D=M
@Screen.2
M=D
@0 // push constant 0
D=A
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
(Screen.drawPixel) // function Screen.drawPixel 3
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_226
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_226
0;JMP
(LBL_LT_226)
@SP
A=M-1
M=-1
(LBL_NOT_LT_226)
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
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_227
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_227
0;JMP
(LBL_GT_227)
@SP
A=M-1
M=-1
(LBL_NOT_GT_227)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_228
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_228
0;JMP
(LBL_LT_228)
@SP
A=M-1
M=-1
(LBL_NOT_LT_228)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_229
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_229
0;JMP
(LBL_GT_229)
@SP
A=M-1
M=-1
(LBL_NOT_GT_229)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
@7 // push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_230
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
@Sys.error
0;JMP
(LBL_RET_230)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_FALSE0) // label IF_FALSE0
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
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_231
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_231)
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
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_232
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_232)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@1 // pop local 1
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
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_233
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_233)
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@2 // pop local 2
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@LBL_RET_234
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_234)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Screen.drawConditional) // function Screen.drawConditional 0
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
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
@LBL_RET_235
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(LBL_RET_235)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Screen$IF_END0
0;JMP
(Screen$IF_FALSE0) // label IF_FALSE0
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
@LBL_RET_236
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(LBL_RET_236)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_END0) // label IF_END0
@0 // push constant 0
D=A
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
(Screen.drawLine) // function Screen.drawLine 11
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_237
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_237
0;JMP
(LBL_LT_237)
@SP
A=M-1
M=-1
(LBL_NOT_LT_237)
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_238
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_238
0;JMP
(LBL_GT_238)
@SP
A=M-1
M=-1
(LBL_NOT_GT_238)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_239
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_239
0;JMP
(LBL_LT_239)
@SP
A=M-1
M=-1
(LBL_NOT_LT_239)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_240
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_240
0;JMP
(LBL_GT_240)
@SP
A=M-1
M=-1
(LBL_NOT_GT_240)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
@8 // push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_241
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
@Sys.error
0;JMP
(LBL_RET_241)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_FALSE0) // label IF_FALSE0
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@LBL_RET_242
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
@Math.abs
0;JMP
(LBL_RET_242)
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@LBL_RET_243
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
@Math.abs
0;JMP
(LBL_RET_243)
@2 // pop local 2
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
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_244
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_244
0;JMP
(LBL_LT_244)
@SP
A=M-1
M=-1
(LBL_NOT_LT_244)
@6 // pop local 6
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
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_245
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_245
0;JMP
(LBL_LT_245)
@SP
A=M-1
M=-1
(LBL_NOT_LT_245)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_246
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_246
0;JMP
(LBL_LT_246)
@SP
A=M-1
M=-1
(LBL_NOT_LT_246)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Screen$IF_TRUE1
D;JNE
@Screen$IF_FALSE1
0;JMP
(Screen$IF_TRUE1) // label IF_TRUE1
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
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop argument 0
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
@4 // push local 4
D=A
@LCL
A=D+M
D=M
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
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // pop argument 3
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
@3
D=A
@ARG
M=M-D
(Screen$IF_FALSE1) // label IF_FALSE1
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Screen$IF_TRUE2
D;JNE
@Screen$IF_FALSE2
0;JMP
(Screen$IF_TRUE2) // label IF_TRUE2
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@2 // pop local 2
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
@1 // pop local 1
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
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@8 // pop local 8
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
@8
D=A
@LCL
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_247
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_247
0;JMP
(LBL_GT_247)
@SP
A=M-1
M=-1
(LBL_NOT_GT_247)
@7 // pop local 7
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
@7
D=A
@LCL
M=M-D
@Screen$IF_END2
0;JMP
(Screen$IF_FALSE2) // label IF_FALSE2
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
@1 // pop local 1
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@8 // pop local 8
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
@8
D=A
@LCL
M=M-D
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
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_248
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_248
0;JMP
(LBL_GT_248)
@SP
A=M-1
M=-1
(LBL_NOT_GT_248)
@7 // pop local 7
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
@7
D=A
@LCL
M=M-D
(Screen$IF_END2) // label IF_END2
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_249
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_249)
@3 // push local 3
D=A
@LCL
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
@5 // pop local 5
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
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_250
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_250)
@9 // pop local 9
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
@9
D=A
@LCL
M=M-D
@2 // push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // push local 3
D=A
@LCL
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
@LBL_RET_251
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_251)
@10 // pop local 10
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
@10
D=A
@LCL
M=M-D
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_252
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawConditional
0;JMP
(LBL_RET_252)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$WHILE_EXP0) // label WHILE_EXP0
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@8 // push local 8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_253
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_253
0;JMP
(LBL_LT_253)
@SP
A=M-1
M=-1
(LBL_NOT_LT_253)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_254
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_254
0;JMP
(LBL_LT_254)
@SP
A=M-1
M=-1
(LBL_NOT_LT_254)
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@Screen$IF_TRUE3
D;JNE
@Screen$IF_FALSE3
0;JMP
(Screen$IF_TRUE3) // label IF_TRUE3
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@9 // push local 9
D=A
@LCL
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
@5 // pop local 5
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
@Screen$IF_END3
0;JMP
(Screen$IF_FALSE3) // label IF_FALSE3
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@10 // push local 10
D=A
@LCL
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
@5 // pop local 5
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
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE4
M=M-1
A=M
D=M
@Screen$IF_TRUE4
D;JNE
@Screen$IF_FALSE4
0;JMP
(Screen$IF_TRUE4) // label IF_TRUE4
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
@Screen$IF_END4
0;JMP
(Screen$IF_FALSE4) // label IF_FALSE4
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
(Screen$IF_END4) // label IF_END4
(Screen$IF_END3) // label IF_END3
@1 // push local 1
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@1 // pop local 1
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_255
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawConditional
0;JMP
(LBL_RET_255)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Screen.drawRectangle) // function Screen.drawRectangle 9
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_256
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_256
0;JMP
(LBL_GT_256)
@SP
A=M-1
M=-1
(LBL_NOT_GT_256)
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
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_257
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_257
0;JMP
(LBL_GT_257)
@SP
A=M-1
M=-1
(LBL_NOT_GT_257)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_258
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_258
0;JMP
(LBL_LT_258)
@SP
A=M-1
M=-1
(LBL_NOT_LT_258)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_259
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_259
0;JMP
(LBL_GT_259)
@SP
A=M-1
M=-1
(LBL_NOT_GT_259)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_260
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_260
0;JMP
(LBL_LT_260)
@SP
A=M-1
M=-1
(LBL_NOT_LT_260)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_261
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_261
0;JMP
(LBL_GT_261)
@SP
A=M-1
M=-1
(LBL_NOT_GT_261)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
@9 // push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_262
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
@Sys.error
0;JMP
(LBL_RET_262)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_FALSE0) // label IF_FALSE0
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
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_263
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_263)
@3 // pop local 3
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
@3
D=A
@LCL
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
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_264
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_264)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@7 // pop local 7
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
@7
D=A
@LCL
M=M-D
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_265
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_265)
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_266
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_266)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@8 // pop local 8
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
@8
D=A
@LCL
M=M-D
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // not
D=M-1
A=D
M=!M
@6 // pop local 6
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
@8 // push local 8
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@5 // pop local 5
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
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_267
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_267)
@3 // push local 3
D=A
@LCL
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
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // push local 3
D=A
@LCL
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
@2 // pop local 2
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
(Screen$WHILE_EXP0) // label WHILE_EXP0
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
@3 // push argument 3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_268
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_268
0;JMP
(LBL_GT_268)
@SP
A=M-1
M=-1
(LBL_NOT_GT_268)
@SP // not
D=M-1
A=D
M=!M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
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
@2 // push local 2
D=A
@LCL
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
@1 // pop local 1
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_269
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_269
0;JMP
(LBL_EQ_269)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_269)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Screen$IF_TRUE1
D;JNE
@Screen$IF_FALSE1
0;JMP
(Screen$IF_TRUE1) // label IF_TRUE1
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
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@LBL_RET_270
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_270)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Screen$IF_END1
0;JMP
(Screen$IF_FALSE1) // label IF_FALSE1
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
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_271
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_271)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
(Screen$WHILE_EXP1) // label WHILE_EXP1
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_272
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_272
0;JMP
(LBL_LT_272)
@SP
A=M-1
M=-1
(LBL_NOT_LT_272)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END1
M=M-1
A=M
D=M
@Screen$WHILE_END1
D;JNE
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@LBL_RET_273
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_273)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
@Screen$WHILE_EXP1
0;JMP
(Screen$WHILE_END1) // label WHILE_END1
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_274
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_274)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_END1) // label IF_END1
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@32 // push constant 32
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
@2 // push local 2
D=A
@LCL
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
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Screen.drawHorizontal) // function Screen.drawHorizontal 11
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_275
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.min
0;JMP
(LBL_RET_275)
@7 // pop local 7
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
@7
D=A
@LCL
M=M-D
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_276
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.max
0;JMP
(LBL_RET_276)
@8 // pop local 8
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
@8
D=A
@LCL
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_277
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_277
0;JMP
(LBL_GT_277)
@SP
A=M-1
M=-1
(LBL_NOT_GT_277)
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
@256 // push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_278
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_278
0;JMP
(LBL_LT_278)
@SP
A=M-1
M=-1
(LBL_NOT_LT_278)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@512 // push constant 512
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_279
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_279
0;JMP
(LBL_LT_279)
@SP
A=M-1
M=-1
(LBL_NOT_LT_279)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@8 // push local 8
D=A
@LCL
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
@SP // neg
D=M-1
A=D
M=-M
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_280
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_280
0;JMP
(LBL_GT_280)
@SP
A=M-1
M=-1
(LBL_NOT_GT_280)
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_281
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.max
0;JMP
(LBL_RET_281)
@7 // pop local 7
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
@7
D=A
@LCL
M=M-D
@8 // push local 8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_282
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.min
0;JMP
(LBL_RET_282)
@8 // pop local 8
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
@8
D=A
@LCL
M=M-D
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_283
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_283)
@1 // pop local 1
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
@7 // push local 7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_284
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_284)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@9 // pop local 9
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
@9
D=A
@LCL
M=M-D
@8 // push local 8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_285
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_285)
@2 // pop local 2
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
@8 // push local 8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_286
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_286)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@10 // pop local 10
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
@10
D=A
@LCL
M=M-D
@9 // push local 9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // not
D=M-1
A=D
M=!M
@5 // pop local 5
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
@10 // push local 10
D=A
@LCL
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@Screen.0 // push static 0
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@4 // pop local 4
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
@4
D=A
@LCL
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
@32 // push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_287
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_287)
@1 // push local 1
D=A
@LCL
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // push local 1
D=A
@LCL
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
@6 // pop local 6
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
@6 // push local 6
D=A
@LCL
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
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@6 // push local 6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_288
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_288
0;JMP
(LBL_EQ_288)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_288)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Screen$IF_TRUE1
D;JNE
@Screen$IF_FALSE1
0;JMP
(Screen$IF_TRUE1) // label IF_TRUE1
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
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@LBL_RET_289
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_289)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Screen$IF_END1
0;JMP
(Screen$IF_FALSE1) // label IF_FALSE1
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
@5 // push local 5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_290
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_290)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
(Screen$WHILE_EXP0) // label WHILE_EXP0
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
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_291
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_291
0;JMP
(LBL_LT_291)
@SP
A=M-1
M=-1
(LBL_NOT_LT_291)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@LBL_RET_292
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_292)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_293
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(LBL_RET_293)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_END1) // label IF_END1
(Screen$IF_FALSE0) // label IF_FALSE0
@0 // push constant 0
D=A
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
(Screen.drawSymetric) // function Screen.drawSymetric 0
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
@3 // push argument 3
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
@2 // push argument 2
D=A
@ARG
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
@2 // push argument 2
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
@LBL_RET_294
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(LBL_RET_294)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
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
@3 // push argument 3
D=A
@ARG
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
@2 // push argument 2
D=A
@ARG
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
@2 // push argument 2
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
@LBL_RET_295
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(LBL_RET_295)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
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
@2 // push argument 2
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
@3 // push argument 3
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
@3 // push argument 3
D=A
@ARG
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
@LBL_RET_296
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(LBL_RET_296)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
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
@2 // push argument 2
D=A
@ARG
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
@3 // push argument 3
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
@3 // push argument 3
D=A
@ARG
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
@LBL_RET_297
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
@3
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(LBL_RET_297)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Screen.drawCircle) // function Screen.drawCircle 3
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_298
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_298
0;JMP
(LBL_LT_298)
@SP
A=M-1
M=-1
(LBL_NOT_LT_298)
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
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_299
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_299
0;JMP
(LBL_GT_299)
@SP
A=M-1
M=-1
(LBL_NOT_GT_299)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_300
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_300
0;JMP
(LBL_LT_300)
@SP
A=M-1
M=-1
(LBL_NOT_LT_300)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_301
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_301
0;JMP
(LBL_GT_301)
@SP
A=M-1
M=-1
(LBL_NOT_GT_301)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Screen$IF_TRUE0
D;JNE
@Screen$IF_FALSE0
0;JMP
(Screen$IF_TRUE0) // label IF_TRUE0
@12 // push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_302
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
@Sys.error
0;JMP
(LBL_RET_302)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_FALSE0) // label IF_FALSE0
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
@2 // push argument 2
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_303
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_303
0;JMP
(LBL_LT_303)
@SP
A=M-1
M=-1
(LBL_NOT_LT_303)
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
@2 // push argument 2
D=A
@ARG
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
@511 // push constant 511
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_304
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_304
0;JMP
(LBL_GT_304)
@SP
A=M-1
M=-1
(LBL_NOT_GT_304)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@2 // push argument 2
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_305
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_305
0;JMP
(LBL_LT_305)
@SP
A=M-1
M=-1
(LBL_NOT_LT_305)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@2 // push argument 2
D=A
@ARG
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
@255 // push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_306
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_306
0;JMP
(LBL_GT_306)
@SP
A=M-1
M=-1
(LBL_NOT_GT_306)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@Screen$IF_TRUE1
D;JNE
@Screen$IF_FALSE1
0;JMP
(Screen$IF_TRUE1) // label IF_TRUE1
@13 // push constant 13
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_307
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
@Sys.error
0;JMP
(LBL_RET_307)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$IF_FALSE1) // label IF_FALSE1
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // pop local 1
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
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@2 // push argument 2
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
@2 // pop local 2
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_308
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
@4
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawSymetric
0;JMP
(LBL_RET_308)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Screen$WHILE_EXP0) // label WHILE_EXP0
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_309
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_309
0;JMP
(LBL_GT_309)
@SP
A=M-1
M=-1
(LBL_NOT_GT_309)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Screen$WHILE_END0
D;JNE
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_310
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_310
0;JMP
(LBL_LT_310)
@SP
A=M-1
M=-1
(LBL_NOT_LT_310)
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@Screen$IF_TRUE2
D;JNE
@Screen$IF_FALSE2
0;JMP
(Screen$IF_TRUE2) // label IF_TRUE2
@2 // push local 2
D=A
@LCL
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
@LBL_RET_311
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_311)
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@3 // push constant 3
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
@2 // pop local 2
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
@Screen$IF_END2
0;JMP
(Screen$IF_FALSE2) // label IF_FALSE2
@2 // push local 2
D=A
@LCL
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
@1 // push local 1
D=A
@LCL
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
@LBL_RET_312
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_312)
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@5 // push constant 5
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
@2 // pop local 2
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
@1 // push local 1
D=A
@LCL
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
@1 // pop local 1
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
(Screen$IF_END2) // label IF_END2
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_313
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
@4
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.drawSymetric
0;JMP
(LBL_RET_313)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@Screen$WHILE_EXP0
0;JMP
(Screen$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(String.new) // function String.new 0
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_314
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
@Memory.alloc
0;JMP
(LBL_RET_314)
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_315
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_315
0;JMP
(LBL_LT_315)
@SP
A=M-1
M=-1
(LBL_NOT_LT_315)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@14 // push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_316
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
@Sys.error
0;JMP
(LBL_RET_316)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_317
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_317
0;JMP
(LBL_GT_317)
@SP
A=M-1
M=-1
(LBL_NOT_GT_317)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@String$IF_TRUE1
D;JNE
@String$IF_FALSE1
0;JMP
(String$IF_TRUE1) // label IF_TRUE1
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
@LBL_RET_318
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
@Array.new
0;JMP
(LBL_RET_318)
@1 // pop this 1
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
@1
D=A
@THIS
M=M-D
(String$IF_FALSE1) // label IF_FALSE1
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
@0 // pop this 0
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
@0
D=A
@THIS
M=M-D
@0 // push constant 0
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
@ THIS // push pointer 0
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
(String.dispose) // function String.dispose 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
@0 // push this 0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_319
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_319
0;JMP
(LBL_GT_319)
@SP
A=M-1
M=-1
(LBL_NOT_GT_319)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@1 // push this 1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_320
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
@Array.dispose
0;JMP
(LBL_RET_320)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
@ THIS // push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_321
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
@Memory.deAlloc
0;JMP
(LBL_RET_321)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(String.length) // function String.length 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
(String.charAt) // function String.charAt 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_322
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_322
0;JMP
(LBL_LT_322)
@SP
A=M-1
M=-1
(LBL_NOT_LT_322)
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_323
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_323
0;JMP
(LBL_GT_323)
@SP
A=M-1
M=-1
(LBL_NOT_GT_323)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_324
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_324
0;JMP
(LBL_EQ_324)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_324)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@15 // push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_325
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
@Sys.error
0;JMP
(LBL_RET_325)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
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
@1 // push this 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
(String.setCharAt) // function String.setCharAt 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_326
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_326
0;JMP
(LBL_LT_326)
@SP
A=M-1
M=-1
(LBL_NOT_LT_326)
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
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_327
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_327
0;JMP
(LBL_GT_327)
@SP
A=M-1
M=-1
(LBL_NOT_GT_327)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
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
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_328
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_328
0;JMP
(LBL_EQ_328)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_328)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_329
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
@Sys.error
0;JMP
(LBL_RET_329)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
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
@1 // push this 1
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
@2 // push argument 2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@0 // push constant 0
D=A
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
(String.appendChar) // function String.appendChar 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
@0 // push this 0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_330
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_330
0;JMP
(LBL_EQ_330)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_330)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@17 // push constant 17
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_331
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
@Sys.error
0;JMP
(LBL_RET_331)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
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
@1 // push this 1
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@ THIS // push pointer 0
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
(String.eraseLastChar) // function String.eraseLastChar 0
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_332
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_332
0;JMP
(LBL_EQ_332)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_332)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@18 // push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_333
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
@Sys.error
0;JMP
(LBL_RET_333)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
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
@0 // push constant 0
D=A
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
(String.intValue) // function String.intValue 5
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_334
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_334
0;JMP
(LBL_EQ_334)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_334)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@0 // push constant 0
D=A
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
(String$IF_FALSE0) // label IF_FALSE0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // push this 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@45 // push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_335
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_335
0;JMP
(LBL_EQ_335)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_335)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@String$IF_TRUE1
D;JNE
@String$IF_FALSE1
0;JMP
(String$IF_TRUE1) // label IF_TRUE1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@4 // pop local 4
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
@4
D=A
@LCL
M=M-D
@1 // push constant 1
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
(String$IF_FALSE1) // label IF_FALSE1
(String$WHILE_EXP0) // label WHILE_EXP0
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_336
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_336
0;JMP
(LBL_LT_336)
@SP
A=M-1
M=-1
(LBL_NOT_LT_336)
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // and
M=M-1
A=M
D=M
A=A-1
M=D&M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@String$WHILE_END0
D;JNE
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
@1 // push this 1
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@48 // push constant 48
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
@2 // pop local 2
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
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_337
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_337
0;JMP
(LBL_LT_337)
@SP
A=M-1
M=-1
(LBL_NOT_LT_337)
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@9 // push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_338
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_338
0;JMP
(LBL_GT_338)
@SP
A=M-1
M=-1
(LBL_NOT_GT_338)
@SP // or
M=M-1
A=M
D=M
A=A-1
M=D|M
@SP // not
D=M-1
A=D
M=!M
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@String$IF_TRUE2
D;JNE
@String$IF_FALSE2
0;JMP
(String$IF_TRUE2) // label IF_TRUE2
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_339
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_339)
@2 // push local 2
D=A
@LCL
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
@1 // pop local 1
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
(String$IF_FALSE2) // label IF_FALSE2
@String$WHILE_EXP0
0;JMP
(String$WHILE_END0) // label WHILE_END0
@4 // push local 4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@String$IF_TRUE3
D;JNE
@String$IF_FALSE3
0;JMP
(String$IF_TRUE3) // label IF_TRUE3
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // neg
D=M-1
A=D
M=-M
@1 // pop local 1
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
(String$IF_FALSE3) // label IF_FALSE3
@1 // push local 1
D=A
@LCL
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
(String.setInt) // function String.setInt 4
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
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
@SP // pop pointer 0
M=M-1
@SP
A=M
D=M
@THIS
M=D
@0 // push this 0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_340
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_340
0;JMP
(LBL_EQ_340)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_340)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@String$IF_TRUE0
D;JNE
@String$IF_FALSE0
0;JMP
(String$IF_TRUE0) // label IF_TRUE0
@19 // push constant 19
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_341
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
@Sys.error
0;JMP
(LBL_RET_341)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE0) // label IF_FALSE0
@6 // push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_342
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
@Array.new
0;JMP
(LBL_RET_342)
@2 // pop local 2
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_343
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_343
0;JMP
(LBL_LT_343)
@SP
A=M-1
M=-1
(LBL_NOT_LT_343)
@SP // if-goto IF_TRUE1
M=M-1
A=M
D=M
@String$IF_TRUE1
D;JNE
@String$IF_FALSE1
0;JMP
(String$IF_TRUE1) // label IF_TRUE1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@3 // pop local 3
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
@3
D=A
@LCL
M=M-D
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
@SP // neg
D=M-1
A=D
M=-M
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
(String$IF_FALSE1) // label IF_FALSE1
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
@1 // pop local 1
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
(String$WHILE_EXP0) // label WHILE_EXP0
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_344
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_344
0;JMP
(LBL_GT_344)
@SP
A=M-1
M=-1
(LBL_NOT_GT_344)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@String$WHILE_END0
D;JNE
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
@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_345
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(LBL_RET_345)
@1 // pop local 1
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
@2 // push local 2
D=A
@LCL
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
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_346
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(LBL_RET_346)
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@1 // push local 1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@String$WHILE_EXP0
0;JMP
(String$WHILE_END0) // label WHILE_END0
@3 // push local 3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // if-goto IF_TRUE2
M=M-1
A=M
D=M
@String$IF_TRUE2
D;JNE
@String$IF_FALSE2
0;JMP
(String$IF_TRUE2) // label IF_TRUE2
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
@2 // push local 2
D=A
@LCL
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
@45 // push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
(String$IF_FALSE2) // label IF_FALSE2
@0 // push this 0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_347
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_347
0;JMP
(LBL_LT_347)
@SP
A=M-1
M=-1
(LBL_NOT_LT_347)
@SP // if-goto IF_TRUE3
M=M-1
A=M
D=M
@String$IF_TRUE3
D;JNE
@String$IF_FALSE3
0;JMP
(String$IF_TRUE3) // label IF_TRUE3
@19 // push constant 19
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_348
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
@Sys.error
0;JMP
(LBL_RET_348)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(String$IF_FALSE3) // label IF_FALSE3
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_349
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_349
0;JMP
(LBL_EQ_349)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_349)
@SP // if-goto IF_TRUE4
M=M-1
A=M
D=M
@String$IF_TRUE4
D;JNE
@String$IF_FALSE4
0;JMP
(String$IF_TRUE4) // label IF_TRUE4
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@1 // push this 1
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
@48 // push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@String$IF_END4
0;JMP
(String$IF_FALSE4) // label IF_FALSE4
@0 // push constant 0
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
(String$WHILE_EXP1) // label WHILE_EXP1
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
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_350
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_350
0;JMP
(LBL_LT_350)
@SP
A=M-1
M=-1
(LBL_NOT_LT_350)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END1
M=M-1
A=M
D=M
@String$WHILE_END1
D;JNE
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
@1 // push this 1
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
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@2 // push local 2
D=A
@LCL
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
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
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
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@SP // pop pointer 1
M=M-1
@SP
A=M
D=M
@THAT
M=D
@R5 // push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@0 // pop that 0
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
@String$WHILE_EXP1
0;JMP
(String$WHILE_END1) // label WHILE_END1
(String$IF_END4) // label IF_END4
@2 // push local 2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_351
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
@Array.dispose
0;JMP
(LBL_RET_351)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(String.newLine) // function String.newLine 0
@128 // push constant 128
D=A
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
(String.backSpace) // function String.backSpace 0
@129 // push constant 129
D=A
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
(String.doubleQuote) // function String.doubleQuote 0
@34 // push constant 34
D=A
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
(Sys.init) // function Sys.init 0
@LBL_RET_352
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Memory.init
0;JMP
(LBL_RET_352)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_353
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Math.init
0;JMP
(LBL_RET_353)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_354
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Screen.init
0;JMP
(LBL_RET_354)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_355
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Output.init
0;JMP
(LBL_RET_355)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_356
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Keyboard.init
0;JMP
(LBL_RET_356)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_357
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Main.main
0;JMP
(LBL_RET_357)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_358
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Sys.halt
0;JMP
(LBL_RET_358)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
(Sys.halt) // function Sys.halt 0
(Sys$WHILE_EXP0) // label WHILE_EXP0
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // not
D=M-1
A=D
M=!M
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Sys$WHILE_END0
D;JNE
@Sys$WHILE_EXP0
0;JMP
(Sys$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Sys.wait) // function Sys.wait 1
@SP
A=M
M=0
@SP
M=M+1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_LT_359
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_359
0;JMP
(LBL_LT_359)
@SP
A=M-1
M=-1
(LBL_NOT_LT_359)
@SP // if-goto IF_TRUE0
M=M-1
A=M
D=M
@Sys$IF_TRUE0
D;JNE
@Sys$IF_FALSE0
0;JMP
(Sys$IF_TRUE0) // label IF_TRUE0
@1 // push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_360
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
@Sys.error
0;JMP
(LBL_RET_360)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
(Sys$IF_FALSE0) // label IF_FALSE0
(Sys$WHILE_EXP0) // label WHILE_EXP0
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_361
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_361
0;JMP
(LBL_GT_361)
@SP
A=M-1
M=-1
(LBL_NOT_GT_361)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END0
M=M-1
A=M
D=M
@Sys$WHILE_END0
D;JNE
@50 // push constant 50
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
(Sys$WHILE_EXP1) // label WHILE_EXP1
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
@0 // push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_GT_362
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_362
0;JMP
(LBL_GT_362)
@SP
A=M-1
M=-1
(LBL_NOT_GT_362)
@SP // not
D=M-1
A=D
M=!M
@SP // if-goto WHILE_END1
M=M-1
A=M
D=M
@Sys$WHILE_END1
D;JNE
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
@Sys$WHILE_EXP1
0;JMP
(Sys$WHILE_END1) // label WHILE_END1
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
@0 // pop argument 0
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
@Sys$WHILE_EXP0
0;JMP
(Sys$WHILE_END0) // label WHILE_END0
@0 // push constant 0
D=A
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
(Sys.error) // function Sys.error 0
@3 // push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_363
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
@String.new
0;JMP
(LBL_RET_363)
@69 // push constant 69
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_364
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_364)
@82 // push constant 82
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_365
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_365)
@82 // push constant 82
D=A
@SP
A=M
M=D
@SP
M=M+1
@LBL_RET_366
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
@2
D=D-A
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(LBL_RET_366)
@LBL_RET_367
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
@Output.printString
0;JMP
(LBL_RET_367)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
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
@LBL_RET_368
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
@Output.printInt
0;JMP
(LBL_RET_368)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@LBL_RET_369
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
@ARG
M=D
@SP // LCL=SP
D=M
@LCL
M=D
@Sys.halt
0;JMP
(LBL_RET_369)
@SP // pop temp 0
M=M-1
A=M
D=M
@R5
M=D
@0 // push constant 0
D=A
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
