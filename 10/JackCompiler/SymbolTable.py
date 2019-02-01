from symtable import Symbol


class SymbolTable:
    STATIC = 'STATIC'
    FIELD = 'FIELD'
    ARG = 'ARG'
    VAR = 'VAR'
    """
    kind = STATIC | FIELD | ARG | VAR
    """

    def __init__(self):
        self.table = {}
        return

    def define(self, name: str, symbol_type: str, kind: str, scope: str):
        symbol = Symbol(name, symbol_type, kind)
        if self.table[scope] is None:
            self.table[scope] = list
        self.table[scope].add(symbol)
        print('symbol table: ' + str(self.table))

    def define(self, symbol: Symbol, scope: str):
        if self.table[scope] is None:
            self.table[scope] = list
        self.table[scope].add(symbol)
        return

    def var_count(self, scope: str):
        return

    def kind_of(self) -> str:
        return self.STATIC

    def type_of(self) -> str:
        return 'foo'

    def index_of(self) -> int:
        return 0


class Symbol:
    def __init__(self, name, symbol_type, kind):
        self.name = name
        self.symbol_type = symbol_type
        self.kind = kind
        return
