from JackTokenizer import *


class CompilationEngine:
    def __init__(self, tokenizer, jack_file):
        self.tokenizer = tokenizer
        log_file_name = jack_file.name.replace('.jack', '_engine.xml')
        self.log_file = open(log_file_name, 'w')
        return

    def compile(self):
        self.compile_class(0)

    def advance(self):
        """return current token"""
        return self.tokenizer.advance()

    def next(self):
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
        # class
        advance = self.advance()
        self.compile_token(advance, indentation + 1)
        # class name
        advance = self.advance()
        self.compile_token(advance, indentation + 1)
        # {
        advance = self.advance()
        self.compile_token(advance, indentation + 1, "{")
        # classVarDec* subroutineDec*
        while advance.content != '}':
            advance = self.advance()
            if (advance.content == 'constructor'
                    or advance.content == 'function'
                    or advance.content == 'method'):
                self.compile_subroutine(advance, indentation + 1)
                continue
            elif advance.content == 'var':
                self.compile_class_var_dec(advance, indentation + 1)
                continue
            elif advance.content != '}':
                raise RuntimeError(advance, 'Only subroutine and variable can be declared here')
        # }
        advance = self.advance()
        self.compile_token(advance, indentation + 1)
        self.log_file.write('</class>\n')
        self.log_file.flush()
        return

    def compile_class_var_dec(self, token, indentation):
        """
        passing token as an argument, because the caller has already called the advance function once
        Compiles a static declaration or a field declaration.
        """
        return

    def compile_subroutine(self, token, indentation):
        """
        Compiles a complete method, function, or constructor.
        """
        self.log_node('subroutineDec', indentation)
        # function/method/constructor
        self.compile_token(token, indentation + 1)
        # void | type
        token = self.advance()
        self.compile_token(token, indentation + 1)
        # subroutine name
        token = self.advance()
        self.compile_token(token, indentation + 1)
        # (
        token = self.advance()
        self.compile_token(token, indentation + 1)
        # parameter list exists
        token = self.advance()
        self.compile_parameter_list(token, indentation + 1)
        # )
        self.compile_token(token, indentation + 1, ')')
        #  {
        token = self.advance()
        self.compile_subroutine_body(token, indentation + 1)
        self.log_node('/subroutineDec', indentation)
        return

    def compile_subroutine_body(self, token, indentation):
        self.log_node('subroutineBody', indentation)
        self.compile_token(token, indentation + 1, '{')
        while token.content != '}':
            token = self.advance()
            if token.content == 'var':
                print('var', token)
                # varDec
                pass
        self.compile_token(token, indentation + 1, '}')
        self.log_node('/subroutineBody', indentation)

    def compile_parameter_list(self, token, indentation):
        """Compiles a (possibly empty) parameter list, not including the enclosing ‘‘ () ’’."""
        self.log_node('parameterList', indentation)
        while token.content != ')':
            # p1 type
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            # p1 argument
            token = self.advance()
            self.compile_token(token, indentation + 1, [IDENTIFIER, KEYWORD])
            print('--->' + str(token))
            print('>>>' + str(self.next()))
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
                token = self.advance()
        self.log_node('/parameterList', indentation)

    def compile_var_dec(self):
        """  Compiles a var declaration."""
        return

    def compile_statements(self):
        """Compiles a sequence of statements, not including the enclosing ‘‘{}’’."""
        return

    def compile_do(self):
        return

    def compile_let(self):
        return

    def compile_while(self):
        return

    def compile_return(self):
        return

    def compile_if(self):
        return

    def compile_expression(self):
        return

    def compile_term(self):
        return

    def compile_expression_list(self):
        return
