@17 // push constant 17
D=A
@SP
A=M
M=D
@SP
M=M+1
@17 // push constant 17
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
@LBL_EQ_0
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_0
0;JMP
(LBL_EQ_0)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_0)
@17 // push constant 17
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
@SP // eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@LBL_EQ_1
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_1
0;JMP
(LBL_EQ_1)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_1)
@16 // push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@17 // push constant 17
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
@LBL_EQ_2
D;JEQ
@SP
A=M-1
M=0
@LBL_NOT_EQ_2
0;JMP
(LBL_EQ_2)
@SP
A=M-1
M=-1
(LBL_NOT_EQ_2)
@892 // push constant 892
D=A
@SP
A=M
M=D
@SP
M=M+1
@891 // push constant 891
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
@LBL_LT_3
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_3
0;JMP
(LBL_LT_3)
@SP
A=M-1
M=-1
(LBL_NOT_LT_3)
@891 // push constant 891
D=A
@SP
A=M
M=D
@SP
M=M+1
@892 // push constant 892
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
@LBL_LT_4
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_4
0;JMP
(LBL_LT_4)
@SP
A=M-1
M=-1
(LBL_NOT_LT_4)
@891 // push constant 891
D=A
@SP
A=M
M=D
@SP
M=M+1
@891 // push constant 891
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
@LBL_LT_5
D;JLT
@SP
A=M-1
M=0
@LBL_NOT_LT_5
0;JMP
(LBL_LT_5)
@SP
A=M-1
M=-1
(LBL_NOT_LT_5)
@32767 // push constant 32767
D=A
@SP
A=M
M=D
@SP
M=M+1
@32766 // push constant 32766
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
@LBL_GT_6
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_6
0;JMP
(LBL_GT_6)
@SP
A=M-1
M=-1
(LBL_NOT_GT_6)
@32766 // push constant 32766
D=A
@SP
A=M
M=D
@SP
M=M+1
@32767 // push constant 32767
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
@32766 // push constant 32766
D=A
@SP
A=M
M=D
@SP
M=M+1
@32766 // push constant 32766
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
@LBL_GT_8
D;JGT
@SP
A=M-1
M=0
@LBL_NOT_GT_8
0;JMP
(LBL_GT_8)
@SP
A=M-1
M=-1
(LBL_NOT_GT_8)
@57 // push constant 57
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
@53 // push constant 53
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
@112 // push constant 112
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
@82 // push constant 82
D=A
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
@SP // not
D=M-1
A=D
M=!M
