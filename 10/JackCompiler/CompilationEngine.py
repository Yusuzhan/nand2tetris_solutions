from JackTokenizer import *
from SymbolTable import SymbolTable, Symbol, ARG
from VMWriter import VMWriter

OP_SYMBOLS = {
    '+': 'ADD',
    '-': 'SUB',
    '*': 'MUL',
    '/': 'DIV',
    '&': 'AND',
    '|': 'OR',
    '<': 'LT',
    '>': 'GT',
    '=': 'EQ'
}

UNARY_OP_SYMBOL = {'-': 'NEG',
                   '~': 'NOT'}


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
        self.while_label_index = 0
        self.if_label_index = 0

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
        kind = token.content.upper()
        self.compile_token(token, indentation + 1)
        token = self.advance()
        var_type = token.content
        self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
        # var name
        token = self.advance()
        var_name = token.content
        self.compile_token(token, indentation + 1, [IDENTIFIER])
        self.symbol_table.define(var_name, var_type, kind)
        token = self.advance()
        while token.content == ',':
            self.compile_token(token, indentation + 1, ',')
            token = self.advance()
            var_name = token.content
            self.symbol_table.define(var_name, var_type, kind)
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
        function_type = token.content
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
        self.compile_subroutine_body(token, indentation + 1, subroutine_name, function_type)
        self.log_node('/subroutineDec', indentation)
        return

    def compile_subroutine_body(self, token, indentation, subroutine_name, function_type='function'):
        self.log_node('subroutineBody', indentation)
        self.compile_token(token, indentation + 1, '{')
        token = self.advance()
        n_locals = 0
        if token.content == 'var':
            n_locals = self.compile_var_dec(token, indentation + 1)
            token = self.advance()
        self.vm_writer.write_functions(subroutine_name, n_locals)

        # todo 处理constructor
        if function_type == 'constructor':
            self.vm_writer.write_push('CONST', self.symbol_table.var_count(FIELD))
            self.vm_writer.write_call('Memory.alloc', 1)
            self.vm_writer.write_pop('POINTER', 0, 'set this pointer')

        # if this token is '}' means the function has an empty body
        if token.content == '}':
            # TODO 空函数体的处理
            # empty body
            print('empty body', token)
            pass
        else:
            print('subroutine %s body is not empty' % subroutine_name)
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
                raise RuntimeError('unknown type in statements %s')
            if self.next() is not None and self.next().content == '}':
                break
            else:
                token = self.advance()
        self.log_node('/statements', indentation)
        return

    def compile_do(self, token: Token, indentation):
        self.log_node('doStatement', indentation)
        self.compile_token(token, indentation + 1, 'do')
        token = self.advance()
        print('do ' + token.content)
        self.compile_term(token, indentation + 1)
        token = self.advance()
        self.compile_token(token, indentation + 1, ';')
        # maybe a local subroutine or someone else's
        # token = self.advance()
        # self.compile_token(token, indentation + 1, [IDENTIFIER])
        # function_class_name = token.content
        # token = self.advance()
        # if token.content == '.':
        #     # someone else 's
        #     self.compile_token(token, indentation + 1, '.')
        #     token = self.advance()
        #     self.compile_token(token, indentation + 1, [IDENTIFIER])
        #     function_name = token.content
        #     token = self.advance()
        #     self.compile_token(token, indentation + 1, '(')
        #     token = self.advance()
        #     n_arg = self.compile_expression_list(token, indentation + 1)
        #     self.vm_writer.write_call(function_class_name + '.' + function_name, n_arg)
        #     # do calls must 'pop temp 0', because void functions always returns 0
        #     self.vm_writer.write_pop('TEMP', 0, 'do call')
        #     if token.content != ')':
        #         token = self.advance()
        #     self.compile_token(token, indentation + 1, ')')
        #     pass
        # else:
        #     self.compile_token(token, indentation + 1, '(')
        #     token = self.advance()
        #     self.compile_expression_list(token, indentation + 1)
        #     if token.content != ')':
        #         token = self.advance()
        #     self.compile_token(token, indentation + 1, ')')
        #     # local method
        #     pass
        # token = self.advance()
        # self.compile_token(token, indentation + 1, ';')
        self.log_node('/doStatement', indentation)
        return

    def compile_let(self, token: Token, indentation):
        """let length = Keyboard.readInt("HOW MANY NUMBERS? ");"""
        self.log_node('letStatement', indentation)
        # let
        self.compile_token(token, indentation + 1, 'let')
        #  length
        token = self.advance()
        print('LET:', token)
        self.compile_token(token, indentation + 1, [IDENTIFIER])
        var_name = token.content
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
        # todo 处理不同情况
        if self.symbol_table.kind_of(var_name) == VAR:
            self.vm_writer.write_pop('LOCAL', self.symbol_table.index_of(var_name), var_name)
            pass
        elif self.symbol_table.kind_of(var_name) == ARG:
            self.vm_writer.write_pop('ARG', self.symbol_table.index_of(var_name), var_name)
            pass
        elif self.symbol_table.kind_of(var_name) == FIELD:
            self.vm_writer.write_pop('THIS', self.symbol_table.index_of(var_name), var_name)
            pass
        # ;
        token = self.advance()
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/letStatement', indentation)
        return

    def compile_while(self, token: Token, indentation):
        while_label_pre = 'WHILE_%s' % self.while_label_index
        # label index++
        self.while_label_index += 1
        print('WHILE: %s' % while_label_pre)
        self.vm_writer.write_label('%s_EXP' % while_label_pre)
        self.log_node('whileStatement', indentation)
        self.compile_token(token, indentation + 1, 'while')
        token = self.advance()
        self.compile_token(token, indentation + 1, '(')
        token = self.advance()
        self.vm_writer.write_comment("calculating while condition expression")
        # expression
        self.compile_expression(token, indentation + 1)
        # )
        token = self.advance()
        self.compile_token(token, indentation + 1, ')')
        self.vm_writer.write_arithmetic('NOT')
        # checking condition expression
        self.vm_writer.write_if('%s_END' % while_label_pre)
        # {
        token = self.advance()
        self.compile_token(token, indentation + 1, '{')
        # statements
        token = self.advance()
        self.compile_statements(token, indentation + 1)
        # }
        token = self.advance()
        self.compile_token(token, indentation + 1, '}')
        self.vm_writer.write_goto('%s_EXP' % while_label_pre)
        self.vm_writer.write_label('%s_END' % while_label_pre)
        self.log_node('/whileStatement', indentation)
        return

    def compile_return(self, token: Token, indentation):
        self.log_node('returnStatement', indentation)
        self.compile_token(token, indentation + 1, 'return')
        token = self.advance()
        if token.content != ';':
            self.compile_expression(token, indentation + 1)
            token = self.advance()
            self.vm_writer.write_return()
        else:
            # for functions that return void, it must return an integer 0
            self.vm_writer.write_return(True)
            pass
        self.compile_token(token, indentation + 1, ';')
        self.log_node('/returnStatement', indentation)
        return

    def compile_if(self, token: Token, indentation):
        # if_label_pre = 'IF_%s' % self.if_label_index
        else_label = 'ELSE_%s' % self.if_label_index
        finish_label = 'FINISH_%s' % self.if_label_index
        # label index++
        self.if_label_index += 1

        print('IF:', token)
        self.log_node('ifStatement', indentation)
        self.compile_token(token, indentation + 1, 'if')
        token = self.advance()
        self.compile_token(token, indentation + 1, '(')
        self.vm_writer.write_comment("calculating if condition expression")
        token = self.advance()
        # expression
        self.compile_expression(token, indentation + 1)
        # )
        token = self.advance()
        self.compile_token(token, indentation + 1, ')')
        self.vm_writer.write_arithmetic('NOT')
        self.vm_writer.write_if(else_label)
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
            """
            if statements...
            (else vm code)
            goto FINISH // if statements finished, pass the else code
            lable ELSE
            else statements...
            label FINISH
            """
            self.vm_writer.write_goto(finish_label)
            self.vm_writer.write_label(else_label)
            token = self.advance()
            self.compile_token(token, indentation + 1, 'else')
            token = self.advance()
            self.compile_token(token, indentation + 1, '{')
            token = self.advance()
            self.compile_statements(token, indentation + 1)
            token = self.advance()
            self.compile_token(token, indentation + 1, '}')
            self.vm_writer.write_label(finish_label)
        else:
            """
            if statements...
            (no else vm code)
            label ELSE
            """
            self.vm_writer.write_label(else_label)
            pass
        self.log_node('/ifStatement', indentation)
        return

    def compile_expression(self, token, indentation):
        self.log_node('expression', indentation)
        self.compile_term(token, indentation + 1)
        while self.next() is not None and self.next().content in OP_SYMBOLS.keys():
            token = self.advance()
            print("op----")
            self.compile_token(token, indentation + 1, [SYMBOL])
            op_symbol = OP_SYMBOLS[token.content]
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
        elif token.content == 'true':
            self.compile_token(token, indentation + 1)
            self.vm_writer.write_push('CONST', 1)
            self.vm_writer.write_arithmetic('NEG')
            pass
        elif token.content == 'false':
            self.compile_token(token, indentation + 1)
            self.vm_writer.write_push('CONST', 0)
            pass
        elif token.content in ['true', 'false', 'null', 'this']:
            self.compile_token(token, indentation + 1)
            self.vm_writer.write_push('POINTER', 0)
            # self.vm_writer.write_comment('%s not implemented' % token.content)
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
        elif token.content in UNARY_OP_SYMBOL.keys():
            self.compile_token(token, indentation + 1)
            unary_op = UNARY_OP_SYMBOL[token.content]
            token = self.advance()
            self.compile_term(token, indentation + 1)
            self.vm_writer.write_arithmetic(unary_op)
        elif self.next().content == ';':
            # varname
            self.compile_token(token, indentation + 1)
            pass
        elif self.next().content == '(':
            # method call
            print('method call not implemented')
            pass
        elif self.next().content == '.':
            print('method call or function call')
            # static function call
            # class name
            function_class_name = token.content
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            self.compile_token(token, indentation + 1, '.')
            #  function name
            token = self.advance()
            function_name = token.content
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            token = self.advance()
            self.compile_token(token, indentation + 1, '(')
            token = self.advance()
            n_arg = self.compile_expression_list(token, indentation + 1)
            self.vm_writer.write_call(function_class_name + '.' + function_name, n_arg)
            if token.content != ')':
                token = self.advance()
            print('should be )', token)
            self.compile_token(token, indentation + 1, ')')
            pass
        elif token.token_type == IDENTIFIER:
            # varName
            self.compile_token(token, indentation + 1, [IDENTIFIER])
            # todo 处理不同情形
            if self.symbol_table.kind_of(token.content) == VAR:
                self.vm_writer.write_push('LOCAL', self.symbol_table.index_of(token.content))
            elif self.symbol_table.kind_of(token.content) == ARG:
                self.vm_writer.write_push('ARG', self.symbol_table.index_of(token.content), token.content)
                pass
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
