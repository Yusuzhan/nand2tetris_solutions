# -*- coding: utf-8 -*-
class CodeWriter:
    """

    """

    def __init__(self, output_file):
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
        self.output_file.write('// ' + cmd + '\n')
        if arg1() == 'add':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=M+D' + '\n')
        if arg1() == 'sub':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=M-D' + '\n')
        if arg1() == 'and':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=D&M' + '\n')
        if arg1() == 'or':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M-1' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('A=A-1' + '\n')
            self.output_file.write('M=D|M' + '\n')
        if arg1() == 'neg':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('D=M-1' + '\n')
            self.output_file.write('A=D' + '\n')
            self.output_file.write('M=-M' + '\n')
        if arg1() == 'not':
            self.output_file.write('@SP' + '\n')
            self.output_file.write('D=M-1' + '\n')
            self.output_file.write('A=D' + '\n')
            self.output_file.write('M=!M' + '\n')
        elif arg1() == 'eq':
            lbl_num = self.gen_label_index()
            lbl_eq = 'LBL_EQ_' + lbl_num
            lbl_not_eq = 'LBL_NOT_EQ_' + lbl_num
            self.output_file.write('@SP' + '\n')
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
            self.output_file.write('@SP' + '\n')
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
            self.output_file.write('@SP' + '\n')
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
        self.output_file.write('// ' + cmd + '\n')
        if segment() == 'constant':
            self.output_file.write('@' + index() + '\n')
            self.output_file.write('D=A' + '\n')
            self.output_file.write('@SP' + '\n')
            self.output_file.write('A=M' + '\n')
            self.output_file.write('M=D' + '\n')
            self.output_file.write('@SP' + '\n')
            self.output_file.write('M=M+1' + '\n')
        elif segment() == 'local':
            # LCL = LCL + index
            self.output_file.write('@' + index() + '\n')
            self.output_file.write('D=A' + '\n')
            self.output_file.write('@LCL' + '\n')
            self.output_file.write('M=D+M' + '\n')
            # D = MEM[stack - 1]
            self.output_file.write('@SP' + '\n')
            self.output_file.write('D=M' + '\n')
            self.output_file.write('M=M-1' + '\n')
            # MEM[LCL] = D
            self.output_file.write('@LCL' + '\n')
            self.output_file.write('M=D' + '\n')
            # LCL = LCL - index
            self.output_file.write('@' + index() + '\n')
            self.output_file.write('D=A' + '\n')
            self.output_file.write('@LCL' + '\n')
            self.output_file.write('M=M-D' + '\n')

    def close(self):
        self.output_file.close()
