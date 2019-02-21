STATIC = 'STATIC'
FIELD = 'FIELD'
ARG = 'ARG'
VAR = 'VAR'


class SymbolTable:

    def __init__(self):
        # contains only STATIC and FIELD
        self.class_table = dict()
        # contains only ARG and VAR
        self.subroutine_table = dict()
        return

    def start_subroutine(self):
        return

    def define(self, name, symbol_type, kind):
        """
        Defines a new identifier of a given name, type and kind
        and assign it a running index.
        STATIC, FIELD class scope
        ARG, VAR subroutine scope
        :param name: String
        :param symbol_type: String
        :param kind: STATIC, FIELD, ARG, VAR
        :return: None
        """
        # if kind == STATIC:
        #
        #     pass
        # elif kind == FIELD:
        #     pass
        # elif kind == ARG:
        #     pass
        # elif kind == VAR:
        #     pass
        if kind in [STATIC, FIELD]:
            table = self.class_table
        else:
            table = self.subroutine_table
        index = self.var_count(kind)
        symbol = Symbol(name, symbol_type, kind, index)
        table[name] = symbol
        return

    def var_count(self, kind):
        count = 0
        temp = None
        if kind in [STATIC, FIELD]:
            temp = self.class_table
        else:
            temp = self.subroutine_table
        for (name, symbol) in temp.items():
            if temp[name].kind == kind:
                count += 1
        return count

    def get_symbol(self, name):
        for (k, symbol) in self.subroutine_table.items():
            if k == name:
                return symbol
        for (k, symbol) in self.class_table.items():
            if k == name:
                return symbol
        raise RuntimeError(name, 'not in symbol table')

    def kind_of(self, name):
        return self.get_symbol(name).kind

    def type_of(self, name):
        return self.get_symbol(name).symbol_type

    def index_of(self, name):
        return self.get_symbol(name).index


class Symbol:
    def __init__(self, name=None, symbol_type=None, kind=None, index=-1):
        self.name = name
        self.symbol_type = symbol_type
        self.kind = kind
        self.index = index
        return


# test script
table = SymbolTable()
table.define("height", "int", ARG)
table.define("weight", "int", ARG)
table.define("fooName", "String", VAR)
table.define("className", 'String', STATIC)

print(table.kind_of('className'))
print(table.index_of('weight'))
