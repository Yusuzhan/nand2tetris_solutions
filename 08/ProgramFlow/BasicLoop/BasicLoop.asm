@0 // push constant 0    
D=A
@SP
A=M
M=D
@SP
M=M+1
@0 // pop local 0         // initializes sum = 0
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
(BasicLoop$LOOP_START) // label LOOP_START
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
@SP // add
M=M-1
A=M
D=M
A=A-1
M=M+D
@0	 // pop local 0	        // sum = sum + counter
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
@0 // pop argument 0      // counter--
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
@SP // if-goto LOOP_START  // If counter > 0, goto LOOP_START
M=M-1
A=M
D=M
@BasicLoop$LOOP_START
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
