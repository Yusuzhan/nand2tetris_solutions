class VMWriter:
    def __init__(self, output_file):
        self.output_file = output_file
        self.class_name = ''

    def set_class_name(self, name):
        self.class_name = name

    def write_push(self, segment: str, index: int, var_name=None):
        """
        :param segment: CONST, ARG, LOCAL, STATIC, THIS, THAT, POINTERS, TEMP
        :param index:
        :return:
        """
        comment = ''
        if var_name is not None:
            comment = '    // %s' % var_name
        if segment == 'CONST':
            self.output_file.write('push constant %s %s\n' % (index, comment))
            pass
        elif (segment == 'LOCAL') | (segment == 'VAR'):
            self.output_file.write('push local %s %s\n' % (index, comment))
            pass
        elif segment == 'ARG':
            self.output_file.write('push argument %s %s\n' % (index, comment))
            pass
        elif segment == 'POINTER':
            self.output_file.write('push pointer %s %s\n' % (index, comment))
            pass
        elif segment == 'FIELD':
            self.output_file.write('push this %s %s\n' % (index + 1, comment))
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        return

    def write_pop(self, segment: str, index: int, var_name=None):
        '''

        :param segment: CONST, ARG, LOCAL, STATIC, THIS, THAT, POINTERS, TEMP
        :param index:
        :return:
        '''
        comment = ''
        if var_name is not None:
            comment = '    // %s' % var_name
        if segment == 'CONST':
            self.output_file.write('pop constant %s %s\n' % (index, comment))
            pass
        elif segment == 'LOCAL':
            self.output_file.write('pop local %s %s\n' % (index, comment))
            pass
        elif segment == 'TEMP':
            self.output_file.write('pop temp %s %s\n' % (index, comment))
        elif segment == 'ARG':
            self.output_file.write('pop argument %s %s\n' % (index, comment))
        elif segment == 'POINTER':
            self.output_file.write('pop pointer %s %s\n' % (index, comment))
            pass
        elif segment == 'THIS':
            self.output_file.write('pop this %s %s\n' % (index + 1, comment))
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        return

    def write_arithmetic(self, cmd: str):
        """
        ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT
        """
        if cmd == 'ADD':
            self.output_file.write("add\n")
            pass
        elif cmd == 'SUB':
            self.output_file.write("sub\n")
        elif cmd == 'NEG':
            self.output_file.write("neg\n")
        elif cmd == 'NOT':
            self.output_file.write("not\n")
        elif cmd == 'MUL':
            self.output_file.write("call Math.multiply 2\n")
            pass
        elif cmd == 'DVI':
            self.output_file.write("call Math.divide 2\n")
            pass
        elif cmd == 'EQ':
            self.output_file.write("eq \n")
            pass
        elif cmd == 'GT':
            self.output_file.write("gt \n")
            pass
        elif cmd == 'LT':
            self.output_file.write("lt \n")
            pass
        elif cmd == 'AND':
            self.output_file.write("and \n")
            pass
        elif cmd == '|':
            pass
        return

    def write_label(self, label):
        self.output_file.write('label %s\n' % label)
        return

    def write_goto(self, label: str):
        self.output_file.write('goto %s\n' % label)
        return

    def write_if(self, label: str):
        self.output_file.write('if-goto %s\n' % label)
        return

    def write_call(self, func_name: str, n_args: int):
        self.output_file.write('call %s %s\n' % (func_name, n_args))
        # if do_call:
        #     self.output_file.write('pop temp 0\n')
        return

    def write_functions(self, name: str, n_locals: int):
        self.output_file.write('\nfunction %s.%s %s\n' % (self.class_name, name, n_locals))
        return

    def write_return(self, void_func=False):
        if void_func:
            self.output_file.write('push constant 0\n')
        self.output_file.write('return\n')
        return

    def write_comment(self, comment):
        self.output_file.write('// %s\n' % comment)
        return

    def close(self):
        return
