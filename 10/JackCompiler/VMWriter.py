class VMWriter:
    def __init__(self, output_file):
        self.output_file = output_file
        self.class_name = ''

    def set_class_name(self, name):
        self.class_name = name

    def write_push(self, segment: str, index: int):
        return

    def write_arithmetic(self, cmd: str):
        """
        ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT
        """
        return

    def write_label(self, label: str):
        return

    def write_goto(self, label: str):
        return

    def write_if(self, label: str):
        return

    def write_call(self, func_name: str, n_args: int):
        return

    def write_functions(self, name: str, n_locals: int):
        self.output_file.write('function %s.%s %s' %(self.class_name, name, n_locals))
        return

    def close(self):
        return