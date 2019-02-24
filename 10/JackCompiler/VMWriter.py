class VMWriter:
    def __init__(self, output_file):
        self.output_file = output_file
        self.class_name = ''

    def set_class_name(self, name):
        self.class_name = name

    def write_push(self, segment: str, index: int):
        '''

        :param segment: CONST, ARG, LOCAL, STATIC, THIS, THAT, POINTERS, TEMP
        :param index:
        :return:
        '''
        if segment == 'CONST':
            self.output_file.write('push constant %s\n' % (index))
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
            pass
        elif segment == 'CONST':
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
        if cmd == '+':
            self.output_file.write("add\n")
            pass
        elif cmd == '-':
            self.output_file.write("sub is not implemented yet\n")
        elif cmd == '*':
            self.output_file.write("call Math.multiply 2\n")
            pass
        elif cmd == '/':
            self.output_file.write("call Math.divide 2\n")
            pass
        elif cmd == '==':
            pass
        elif cmd == '>':
            pass
        elif cmd == '<':
            pass
        elif cmd == '&':
            pass
        elif cmd == '|':
            pass
        return

    def write_label(self, label: str):
        return

    def write_goto(self, label: str):
        return

    def write_if(self, label: str):
        return

    def write_call(self, func_name: str, n_args: int, do_call=False):
        self.output_file.write('call %s %s\n' % (func_name, n_args))
        if do_call:
            self.output_file.write('pop temp 0\n')
        return

    def write_functions(self, name: str, n_locals: int):
        self.output_file.write('function %s.%s %s\n' % (self.class_name, name, n_locals))
        return

    def write_return(self, void_func):
        self.output_file.write('push constant 0\n')
        self.output_file.write('return\n\n')
        return

    def close(self):
        return