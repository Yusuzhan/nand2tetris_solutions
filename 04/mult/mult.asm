  @i
  M=0
  @2
  M=0 // set R[2] to 0
(LOOP)
  @i
  D=M // D = i
  @1
  D=D-M // D = i - y
  @END
  D;JGE // if (i - y < 0) break
  @i
  M=M+1 // i++
  @0 
  D=M
  @2
  M=D+M
  @LOOP
  0;JMP
(END)
  @END
  0;JMP
