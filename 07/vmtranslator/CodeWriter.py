# -*- coding: utf-8 -*-
class CodeWriter:
    """

    """

    def __init__(self, source_file, output_file):
        self.source_file = source_file
        self.output_file = output_file
        self.label_index = 0

    def gen_label_index(self):
        index = self.label_index
        self.label_index += 1
        return str(index)

    def write_arithmetic(self, cmd, arg1, arg2):
        """
        Writes the assembly code that is the translation of the given arithmetic command.
        """
        if arg1() == 'add':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=M+D' + '\n')
        if arg1() == 'sub':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=M-D' + '\n')
        if arg1() == 'and':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=D&M' + '\n')
        if arg1() == 'or':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=D|M' + '\n')
        if arg1() == 'neg':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('D=M-1' + '\n')
            self.output_file.write('A=D' + '\n')
            self.output_file.write('M=-M' + '\n')
        if arg1() == 'not':
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('D=M-1' + '\n')
            self.output_file.write('A=D' + '\n')
            self.output_file.write('M=!M' + '\n')
        elif arg1() == 'eq':
            lbl_num = self.gen_label_index()
            lbl_eq = 'LBL_EQ_' + lbl_num
            lbl_not_eq = 'LBL_NOT_EQ_' + lbl_num
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('D=M-D\n'
                                   + '@' + lbl_eq + '\n'
                                   + 'D;JEQ\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=0\n'
                                   + '@' + lbl_not_eq + '\n'
                                   + '0;JMP\n'
                                   + '(' + lbl_eq + ')\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=-1\n'
                                   + '(' + lbl_not_eq + ')\n')
        elif arg1() == 'lt':
            lbl_num = self.gen_label_index()
            lbl_lt = 'LBL_LT_' + lbl_num
            lbl_not_lt = 'LBL_NOT_LT_' + lbl_num
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('D=M-D\n'
                                   + '@' + lbl_lt + '\n'
                                   + 'D;JLT\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=0\n'
                                   + '@' + lbl_not_lt + '\n'
                                   + '0;JMP\n'
                                   + '(' + lbl_lt + ')\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=-1\n'
                                   + '(' + lbl_not_lt + ')\n')
        elif arg1() == 'gt':
            lbl_num = self.gen_label_index()
            lbl_lt = 'LBL_GT_' + lbl_num
            lbl_not_lt = 'LBL_NOT_GT_' + lbl_num
            self.output_file.write('@SP' + ' // ' + cmd + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('D=M-D\n'
                                   + '@' + lbl_lt + '\n'
                                   + 'D;JGT\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=0\n'
                                   + '@' + lbl_not_lt + '\n'
                                   + '0;JMP\n'
                                   + '(' + lbl_lt + ')\n'
                                   + '@SP\n'
                                   + 'A=M-1\n'
                                   + 'M=-1\n'
                                   + '(' + lbl_not_lt + ')\n')

    def write_push_pop(self, cmd, segment, index):
        """
        Writes the assembly code that is the translation of the given command,
        where command is either C_PUSH or C_POP
        """
        print('write_push_pop cmd=', cmd)
        arg0 = cmd.replace('\n', '').strip().split(' ')[0]
        if segment() == 'temp':
            temp_register_name = 'R' + str(int(index()) + 5)  # temp segment starts from 5
            if arg0 == 'push':
                self.output_file.write('@' + temp_register_name + ' // ' + cmd + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('M=D' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('M=M+1' + '\n')
            else:
                self.output_file.write('@SP' + ' // ' + cmd + '\n')
                self.output_file.write('M=M-1' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@' + temp_register_name + '\n')
                self.output_file.write('M=D' + '\n')
        if segment() == 'static':
            static_register_name = self.source_file + '.' + index()  # temp segment starts from 5
            if arg0 == 'push':
                self.output_file.write('@' + static_register_name + ' // ' + cmd + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('M=D' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('M=M+1' + '\n')
            else:
                self.output_file.write('@SP' + ' // ' + cmd + '\n')
                self.output_file.write('M=M-1' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@' + static_register_name + '\n')
                self.output_file.write('M=D' + '\n')
        elif segment() == 'constant':
            self.output_file.write('@' + index() + ' // ' + cmd + '\n')
            self.output_file.write('D=A' + '\n')
            self.output_file.write('@SP' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('M=D' + '\n')
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M+1' + '\n')
        elif segment() == 'pointer':
            pointer_lbl = ''
            if index() == '0':
                pointer_lbl = 'THIS'
            else:
                pointer_lbl = 'THAT'
            if arg0 == 'pop':
                # pop pointer X
                # D=stack[sp]; sp=sp-1
                self.output_file.write('@SP // ' + cmd + '\n')
                self.output_file.write('M=M-1' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('D=M' + '\n')
                # THIS=D
                self.output_file.write('@' + pointer_lbl + '\n')
                self.output_file.write('M=D' + '\n')
            else:
                # push pointer X
                # D=THIS
                self.output_file.write('@ ' + pointer_lbl + ' // ' + cmd + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('M=D' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('M=M+1' + '\n')
        elif (segment() == 'local' or
              segment() == 'argument' or
              segment() == 'this' or
              segment() == 'that'):
            segment_lbl = ''
            if segment() == 'local':
                segment_lbl = 'LCL'
            elif segment() == 'argument':
                segment_lbl = 'ARG'
            elif segment() == 'this':
                segment_lbl = 'THIS'
            elif segment() == 'that':
                segment_lbl = 'THAT'
            if arg0 == 'pop':
                # LCL = LCL + index
                self.output_file.write('@' + index() + ' // ' + cmd + '\n')
                self.output_file.write('D=A' + '\n')
                self.output_file.write('@' + segment_lbl + '\n')
                self.output_file.write('M=D+M' + '\n')
                # sp = sp - 1; D = stack[sp]
                self.output_file.write('@SP' + '\n')
                self.output_file.write('M=M-1' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('D=M' + '\n')
                # MEM[LCL] = D
                self.output_file.write('@' + segment_lbl + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('M=D' + '\n')
                # LCL = LCL - index
                self.output_file.write('@' + index() + '\n')
                self.output_file.write('D=A' + '\n')
                self.output_file.write('@' + segment_lbl + '\n')
                self.output_file.write('M=M-D' + '\n')
            elif arg0 == 'push':
                self.output_file.write('@' + index() + ' // ' + cmd + '\n')
                self.output_file.write('D=A' + '\n')
                self.output_file.write('@' + segment_lbl + '\n')
                self.output_file.write('A=D+M' + '\n')
                self.output_file.write('D=M' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('A=M' + '\n')
                self.output_file.write('M=D' + '\n')
                self.output_file.write('@SP' + '\n')
                self.output_file.write('M=M+1' + '\n')

    def write_if(self, vm_cmd, arg1):
        """
        if-goto LOOP_START
        // sp=sp-1; D=stack[sp]
        @SP
        M=M-1
        A=M
        D=M
        // if D != 0; jump
        @LBL
        D;JNE
        """
        print('write if cmd=', vm_cmd)
        lbl_name = self.source_file + '$' + arg1()
        self.output_file.write('@SP' + ' // ' + vm_cmd + '\n')
        self.output_file.write('M=M-1' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@' + lbl_name + '\n')
        self.output_file.write('D;JNE' + '\n')

    def write_goto(self, vm_cmd, arg1):
        print('write goto cmd=', vm_cmd)
        lbl_name = self.source_file + '$' + arg1()
        self.output_file.write('@' + lbl_name + '\n')
        self.output_file.write('0;JMP' + '\n')

    def write_label(self, vm_cmd, arg1):
        print('write label cmd=', vm_cmd)
        lbl_name = self.source_file + '$' + arg1()
        self.output_file.write('(' + lbl_name + ')' ' // ' + vm_cmd + '\n')

    def write_function(self, vm_cmd, func_name, arg_num):
        print('write function cmd=', vm_cmd)
        self.output_file.write('(' + func_name() + ')' ' // ' + vm_cmd + '\n')
        # repeat arg_num times: init local variables to 0
        for i in range(0, int(arg_num())):
            self.output_file.write('@SP' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('M=0' + '\n')
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M+1' + '\n')

    def write_return(self, vm_cmd):
        print('write return cmd=', vm_cmd)
        # FRAME=LCL
        # RET=*(FRAME-5)
        # save RET to RAM[14]
        self.output_file.write('@5' + ' // ' + vm_cmd + '\n')
        self.output_file.write('D=A' + '\n')
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('A=M-D' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@14' + '\n')
        self.output_file.write('M=D' + '\n')
        # *ARG = pop()
        self.output_file.write('@SP // *ARG = pop()\n')
        self.output_file.write('M=M-1' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@ARG' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        # SP=ARG+1
        self.output_file.write('@ARG // SP = ARG + 1\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=D+1' + '\n')
        # THAT=*(FRAME-1)
        self.output_file.write('@LCL // THAT=*(FRAME-1)\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@1' + '\n')
        self.output_file.write('D=D-A' + '\n')
        self.output_file.write('A=D' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@THAT' + '\n')
        self.output_file.write('M=D' + '\n')
        # THIS=*(FRAME-2)
        self.output_file.write('@LCL // THIS=*(FRAME-2)\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@2' + '\n')
        self.output_file.write('D=D-A' + '\n')
        self.output_file.write('A=D' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@THIS' + '\n')
        self.output_file.write('M=D' + '\n')
        # ARG=*(FRAME-3)
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@3' + '\n')
        self.output_file.write('D=D-A' + '\n')
        self.output_file.write('A=D' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@ARG' + '\n')
        self.output_file.write('M=D' + '\n')
        # LCL=*(FRAME-4)
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@4' + '\n')
        self.output_file.write('D=D-A' + '\n')
        self.output_file.write('A=D' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('M=D' + '\n')
        # jump to return
        self.output_file.write('@14' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('0;JMP' + '\n')

    def write_call(self, vm_cmd, func_name, arg_num):
        print('write call cmd=', vm_cmd)
        ret_lbl = 'LBL_RET_' + self.gen_label_index()
        # sp=ret; sp=sp+1
        self.output_file.write('@' + ret_lbl + '\n')
        self.output_file.write('D=A' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=M+1' + '\n')
        # sp=LCL; sp=sp+1
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=M+1' + '\n')
        # ARG
        self.output_file.write('@ARG' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=M+1' + '\n')
        # THIS
        self.output_file.write('@THIS' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=M+1' + '\n')
        # THAT
        self.output_file.write('@THAT' + '\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('A=M' + '\n')
        self.output_file.write('M=D' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('M=M+1' + '\n')
        # ARG=SP-n-5
        self.output_file.write('@5 // ARG=SP-n-5 \n')
        self.output_file.write('D=A' + '\n')
        self.output_file.write('@SP' + '\n')
        self.output_file.write('D=M-D' + '\n')
        if int(arg_num()) > 0:
            self.output_file.write('@' + arg_num() + '\n')
            self.output_file.write('D=D-A' + '\n')
        self.output_file.write('@ARG' + '\n')
        self.output_file.write('M=D' + '\n')
        # LCL=SP
        self.output_file.write('@SP // LCL=SP\n')
        self.output_file.write('D=M' + '\n')
        self.output_file.write('@LCL' + '\n')
        self.output_file.write('M=D' + '\n')
        # goto function
        self.output_file.write('@' + func_name() + '\n')
        self.output_file.write('0;JMP' + '\n')
        self.output_file.write('(' + ret_lbl + ')' + '\n')

    @staticmethod
    def write_bootstrap(output_file):
        output_file.write('@261 // bootstrap\n')
        output_file.write('D=A' + '\n')
        output_file.write('@SP' + '\n')
        output_file.write('M=D' + '\n')
        output_file.write('@Sys.init' + '\n')
        output_file.write('0;JMP' + '\n')
        output_file.flush()

    def close(self):
        self.output_file.close()
