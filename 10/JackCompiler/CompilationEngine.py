from JackTokenizer import *
from SymbolTable import SymbolTable, Symbol, ARG
from VMWriter import VMWriter

OP_SYMBOLS = [
    '+',
    '-',
    '*',
    '/',
    '&',
    '|',
    '<',
    '>',
    '='
]

UNARY_OP_SYMBOL = ['-', '~']


class CompilationEngine:
    def __init__(self, tokenizer: JackTokenizer, jack_file):
        self.tokenizer = tokenizer
        self.class_name = ''
        log_file_name = jack_file.name.replace('.jack', '_engine.xml')
        self.log_file = open(log_file_name, 'w')
        log_file_name = jack_file.name.replace('.jack', '.vm')
        self.output_file = open(log_file_name, 'w')
        self.symbol_table = SymbolTable()
        self.vm_writer = VMWriter(self.output_file)

    def compile(self):
        self.compile_class(0)

    def advance(self):
        """return current token"""
        return self.tokenizer.advance()

    def next(self) -> Token:
        return self.tokenizer.next()

    def compile_token(self, token, indentation, limits=None):
        if limits is not None:
            if isinstance(limits, list) and token.token_type not in limits:
                raise RuntimeError(token, 'can be only', limits)
            if isinstance(limits, str) and token.content != limits:
                raise RuntimeError(token, 'can be only', limits)
        self.log(token, indentation)

    def log_node(self, msg, indentation):
        space = ''
        for i in range(0, indentation):
            space += '  '
        self.log_file.write('{1}<{0}>\n'.format(msg, space))

    def log(self, token, indentation):
        txt = token.content
        if txt == '<':
            txt = '&lt;'
        elif txt == '>':
            txt = '&gt;'
        elif txt == '\"':
            txt = '&quot;'
        elif txt == '&':
            txt = '&amp;'
        space = ''
        for i in range(0, indentation):
            space += '  '  # 2 spaces
        self.log_file.write('{2}<{0}> {1} </{0}>\n'.format(token.token_type, txt, space))

    def compile_class(self, indentation):
        """
        Compiles a complete class.
        """
        self.log_file.write('<class>\n')
        # 'class'
        advance = self.advance()
        self.compile_token(advance, indentation + 1)
        # class name
        advance = self.advance()
        self.compile_token(advance, indentation + 1)
        # set class name to vm-writer
        self.vm_writer.set_class_name(advance.content)
        # {
        advance = self.advance()
        self.compile_token(advance, indentation + 1, "{")
        # classVarDec* subroutineDec*
        advance = self.advance()
        while advance.content != '}':
            if (advance.content == 'constructor'
                    or advance.content == 'function'
                    or advance.content == 'method'):
                self.compile_subroutine(advance, indentation + 1)
            elif advance.content in ['field', 'static']:
                self.compile_class_var_dec(advance, indentation + 1)
            elif advance.content != '}':
                raise RuntimeError(
                    advance, 'Only subroutine and variable can be declared here')
            advance = self.advance()
            print('CLASS', advance)
        # }
        self.compile_token(advance, indentation + 1, '}')
        self.log_file.write('</class>\n')
        self.log_file.flush()
        print("compilation success")
        return

    def compile_class_var_dec(self, token, indentation):
        """
        passing token as an argument, because the caller has already called the advance function once
        Compiles a static declaration or a field declaration.
        """
        self.log_node('classVarDec', indentation)
        # static or field
        # todo
        kind = token.content
        self.compile_token(token, indentation + 1)
        token = self.advance()
        self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        # var name
        token = self.advance()
        self.compile_token(token, indentation + 1, [IDENTIFIER])
        token = self.advance()
        while token.content == ',':
            self.compile_token(token, indentation + 1, ',')
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            print("SHOULD BE ,", token)
        # ;
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/classVarDec', indentation)
        return

    def compile_subroutine(self, token, indentation):
        """
        Compiles a complete method, function, or constructor.
        """
        # reset symbol table for subroutine
        self.symbol_table.start_subroutine()

        self.log_node('subroutineDec', indentation)
        # function/method/constructor
        self.compile_token(token, indentation + 1)
        # void | type
        token = self.advance()
        self.compile_token(token, indentation + 1)
        # subroutine name
        token = self.advance()
        subroutine_name = token.content
        self.compile_token(token, indentation + 1)
        # (
        token = self.advance()
        self.compile_token(token, indentation + 1)
        # parameter list exists
        token = self.advance()
        self.compile_parameter_list(token, indentation + 1)
        if token.content != ')':
            token = self.advance()
        # )
        self.compile_token(token, indentation + 1, ')')
        #  {
        token = self.advance()
        self.compile_subroutine_body(token, indentation + 1, subroutine_name)
        self.log_node('/subroutineDec', indentation)
        return

    def compile_subroutine_body(self, token, indentation, subroutine_name):
        self.log_node('subroutineBody', indentation)
        self.compile_token(token, indentation + 1, '{')
        token = self.advance()
        n_locals = 0
        if token.content == 'var':
            n_locals = self.compile_var_dec(token, indentation + 1)
            token = self.advance()
        self.vm_writer.write_functions(subroutine_name, n_locals)
        # if this token is '}' means the function has an empty body
        if token.content == '}':
            # TODO 空函数体的处理
            # empty body
            print('empty body', token)
            pass
        else:
            print('not empty body', token)
            self.compile_statements(token, indentation + 1)
            token = self.advance()
        self.compile_token(token, indentation + 1, '}')
        self.log_node('/subroutineBody', indentation)

    def compile_parameter_list(self, token, indentation):
        """Compiles a (possibly empty) parameter list, not including the enclosing ‘‘ () ’’."""
        self.log_node('parameterList', indentation)
        while token.content != ')':
            param_symbol = Symbol()
            param_symbol.kind = ARG
            # parameter type
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            param_symbol.symbol_type = token.content
            # parameter name
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            param_symbol.name = token.content
            self.symbol_table.define_symbol(param_symbol)
            if self.next() is not None and self.next().content == ',':
                # compile ,
                token = self.advance()
                self.compile_token(token, indentation + 1)
                token = self.advance()
                continue
            elif self.next() is not None and self.next().content == ')':
                # this function does not consumes ')' so didn't call advance()
                break
            else:
                print('WHAT?', token)
                token = self.advance()
        self.log_node('/parameterList', indentation)
        return

    def compile_var_dec(self, token, indentation) -> int:
        """  Compiles a var declaration."""

        # var_symbol = Symbol()
        # # var
        # self.compile_token(token, indentation + 1, 'var')
        # var_symbol.kind = VAR
        # # var type
        # token = self.advance()
        # self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        # var_symbol.symbol_type = token.content
        # # var name
        # token = self.advance()
        # self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        # var_symbol.name = token.content
        # # , or ;
        # token = self.advance()
        # while token.content != ';':
        #     self.compile_token(token, indentation + 1, ',')
        #     token = self.advance()
        #     self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        #     token = self.advance()
        # self.compile_token(token, indentation + 1, ';')
        var_count = 0
        while token.content == 'var':
            self.log_node('varDec', indentation)
            var_count += 1
            var_symbol = Symbol()
            # var
            self.compile_token(token, indentation + 1, 'var')
            var_symbol.kind = VAR
            # var type
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            var_symbol.symbol_type = token.content
            # var name
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            var_symbol.name = token.content
            self.symbol_table.define_symbol(var_symbol)
            # next token may be ',' or ';'
            token = self.advance()
            # if next token is ','
            while token.content == ',':
                var_count += 1
                self.compile_token(token, indentation + 1, ',')
                # var name
                token = self.advance()
                self.compile_token(token, indentation + 1, [IDENTIFIER])
                # only name differs, types are the same
                self.symbol_table.define(token.content, var_symbol.symbol_type, VAR)
                token = self.advance()
            if token.content == ';':
                self.compile_token(token, indentation + 1, ';')
            if self.next().content == 'var':
                token = self.advance()
            self.log_node('/varDec', indentation)
        return var_count

    def compile_statements(self, token, indentation):
        """Compiles a sequence of statements, not including the enclosing ‘‘{}’’."""
        self.log_node('statements', indentation)
        while token.content != '}':
            print('compile statements:', token)
            if token.content == 'let':
                self.compile_let(token, indentation + 1)
                pass
            elif token.content == 'if':
                self.compile_if(token, indentation + 1)
                pass
            elif token.content == 'while':
                self.compile_while(token, indentation + 1)
                pass
            elif token.content == 'do':
                self.compile_do(token, indentation + 1)
                pass

            elif token.content == 'return':
                self.compile_return(token, indentation + 1)
                pass
            else:
                raise RuntimeError('unknown type in statements')
            if self.next() is not None and self.next().content == '}':
                break
            else:
                token = self.advance()
        self.log_node('/statements', indentation)
        return

    def compile_do(self, token: Token, indentation):
        self.log_node('doStatement', indentation)
        self.compile_token(token, indentation + 1, 'do')
        # maybe a local subroutine or someone else's
        token = self.advance()
        self.compile_token(token, indentation + 1, [IDENTIFIER])
        function_class_name = token.content
        token = self.advance()
        if token.content == '.':
            # someone else 's
            self.compile_token(token, indentation + 1, '.')
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            function_name = token.content
            token = self.advance()
            self.compile_token(token, indentation + 1, '(')
            token = self.advance()
            n_arg = self.compile_expression_list(token, indentation + 1)
            self.vm_writer.write_call(function_class_name + '.' + function_name, n_arg, True)
            if token.content != ')':
                token = self.advance()
            self.compile_token(token, indentation + 1, ')')
            pass
        else:
            self.compile_token(token, indentation + 1, '(')
            token = self.advance()
            self.compile_expression_list(token, indentation + 1)
            if token.content != ')':
                token = self.advance()
            self.compile_token(token, indentation + 1, ')')
            # local method
            pass
        token = self.advance()
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/doStatement', indentation)
        return

    def compile_let(self, token: Token, indentation):
        """let length = Keyboard.readInt("HOW MANY NUMBERS? ");"""
        print('LET:', token)
        self.log_node('letStatement', indentation)
        # let
        self.compile_token(token, indentation + 1, 'let')
        #  length
        token = self.advance()
        print('VAR_NAME', token)
        self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        # = or [
        token = self.advance()
        array = False
        if token.content == '[':
            array = True
            self.compile_token(token, indentation + 1, '[')
            token = self.advance()
            self.compile_expression(token, indentation + 1)
            token = self.advance()
            self.compile_token(token, indentation + 1, ']')
            token = self.advance()
        self.compile_token(token, indentation + 1, '=')
        # expression
        token = self.advance()
        self.compile_expression(token, indentation + 1)
        # ;
        token = self.advance()
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/letStatement', indentation)
        return

    def compile_while(self, token: Token, indentation):
        print('WHILE:', token)
        self.log_node('whileStatement', indentation)
        self.compile_token(token, indentation + 1, 'while')
        token = self.advance()
        self.compile_token(token, indentation + 1, '(')
        token = self.advance()
        # expression
        self.compile_expression(token, indentation + 1)
        # )
        token = self.advance()
        self.compile_token(token, indentation + 1, ')')
        # {
        token = self.advance()
        self.compile_token(token, indentation + 1, '{')
        # statements
        token = self.advance()
        self.compile_statements(token, indentation + 1)
        # }
        token = self.advance()
        print("after while statements", token)
        self.compile_token(token, indentation + 1, '}')
        self.log_node('/whileStatement', indentation)
        return

    def compile_return(self, token: Token, indentation):
        self.log_node('returnStatement', indentation)
        self.compile_token(token, indentation + 1, 'return')
        token = self.advance()
        if token.content != ';':
            self.compile_expression(token, indentation + 1)
            token = self.advance()
        else:
            # for functions that return void, it must return an integer 0
            self.vm_writer.write_return(True)
            pass
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/returnStatement', indentation)
        return

    def compile_if(self, token: Token, indentation):
        print('IF:', token)
        self.log_node('ifStatement', indentation)
        self.compile_token(token, indentation + 1, 'if')
        token = self.advance()
        self.compile_token(token, indentation + 1, '(')
        token = self.advance()
        # expression
        self.compile_expression(token, indentation + 1)
        # )
        token = self.advance()
        self.compile_token(token, indentation + 1, ')')
        # {
        token = self.advance()
        self.compile_token(token, indentation + 1, '{')
        # statements
        token = self.advance()
        self.compile_statements(token, indentation + 1)
        # }
        token = self.advance()
        self.compile_token(token, indentation + 1, '}')
        if self.next().content == 'else':
            token = self.advance()
            self.compile_token(token, indentation + 1, 'else')
            token = self.advance()
            self.compile_token(token, indentation + 1, '{')
            token = self.advance()
            self.compile_statements(token, indentation + 1)
            token = self.advance()
            self.compile_token(token, indentation + 1, '}')
            pass
        self.log_node('/ifStatement', indentation)
        return

    def compile_expression(self, token, indentation):
        self.log_node('expression', indentation)
        self.compile_term(token, indentation + 1)
        while self.next() is not None and self.next().content in OP_SYMBOLS:
            token = self.advance()
            self.compile_token(token, indentation + 1, [SYMBOL])
            op_symbol = token.content
            token = self.advance()
            self.compile_term(token, indentation + 1)
            # call op function after pushes the second parameter
            self.vm_writer.write_arithmetic(op_symbol)
        self.log_node('/expression', indentation)
        return

    def compile_term(self, token: Token, indentation):
        self.log_node('term', indentation)
        if token.token_type == INT_CONST:
            self.compile_token(token, indentation + 1, [INT_CONST])
            # todo
            self.vm_writer.write_push('CONST', token.content)
            pass
        elif token.token_type == STRING_CONST:
            self.compile_token(token, indentation + 1)
            # keyword constant
        elif token.content in ['true', 'false', 'null', 'this']:
            self.compile_token(token, indentation + 1)
            pass
        elif self.next().content == '[':
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            self.compile_token(token, indentation + 1, '[')
            token = self.advance()
            self.compile_expression(token, indentation + 1)
            token = self.advance()
            self.compile_token(token, indentation + 1, ']')
            pass
        elif token.content == '(':
            self.compile_token(token, indentation + 1, '(')
            token = self.advance()
            self.compile_expression(token, indentation + 1)
            if token.content != ')':
                token = self.advance()
            self.compile_token(token, indentation + 1, ')')
            pass
        elif token.content in UNARY_OP_SYMBOL:
            # todo test
            self.compile_token(token, indentation + 1)
            token = self.advance()
            self.compile_term(token, indentation + 1)
        elif self.next().content == ';':
            # varname
            self.compile_token(token, indentation + 1)
            pass
        elif self.next().content == '(':
            # method call

            pass
        elif self.next().content == '.':
            # static function call
            # class name
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            self.compile_token(token, indentation + 1, '.')
            # static function name
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            self.compile_token(token, indentation + 1, '(')
            token = self.advance()
            self.compile_expression_list(token, indentation + 1)
            if token.content != ')':
                token = self.advance()
            print('should be )', token)
            self.compile_token(token, indentation + 1, ')')
            pass
        elif token.token_type == IDENTIFIER:
            # varName
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            pass
        else:
            raise RuntimeError("Uncaught situation", token)
        self.log_node('/term', indentation)
        return

    def compile_expression_list(self, token: Token, indentation) -> int:
        self.log_node('expressionList', indentation)
        n_expression = 0
        while token.content != ')':
            n_expression += 1
            self.compile_expression(token, indentation + 1)
            if self.next() is not None and self.next().content == ',':
                # multiple expression list
                token = self.advance()
                self.compile_token(token, indentation + 1, ',')
                token = self.advance()
            elif self.next() is not None and self.next().content == ')':
                break
            else:
                print('UNEXPECTED token in compile_expression_list', token)
                token = self.advance()
        self.log_node('/expressionList', indentation)
        return n_expression
