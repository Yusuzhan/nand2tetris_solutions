import re

# token type

count = 0


class Token:
    def __init__(self, token_type='', content='', line_num=0):
        global count
        self.token_type = token_type
        self.content = content
        self.line_num = line_num
        self.id = count
        count += 1

    def is_empty(self):
        return self.content == ''

    def append(self, c):
        self.content += c

    def get_token_type(self):
        if self.token_type != '':
            pass
        elif self.content in KEY_WORDS:
            self.token_type = KEYWORD
        elif self.content.isdigit():
            self.token_type = INT_CONST
        else:
            self.token_type = IDENTIFIER
        return self.token_type

    def __repr__(self):
        return 'T' + str(self.id) + '(' + self.token_type + ', ' \
               + self.content + ', l=' + str(self.line_num) + ')'


SYMBOL = 'symbol'
STRING_CONST = 'stringConstant'
KEYWORD = 'keyword'
INT_CONST = 'integerConstant'
IDENTIFIER = 'identifier'

KEY_WORDS = ['class', 'constructor', 'function',
             'method', 'field', 'static', 'var',
             'int', 'char', 'boolean', 'void', 'true',
             'false', 'null', 'this', 'let', 'do',
             'if', 'else', 'while', 'return']

# symbol
SYMBOLS = ['{',
           '|',
           '}',
           '(',
           ')',
           '[',
           ']',
           '.',
           ',',
           ';',
           '+',
           '-',
           '*',
           '/',
           '&',
           ',',
           '<',
           '>',
           '=',
           '~']

# keywords
CLASS = 'CLASS'
METHOD = 'METHOD'
FUNCTION = 'FUNCTION'
CONSTRUCTOR = 'CONSTRUCTOR'
INT = 'INT'
BOOLEAN = 'BOOLEAN'
CHAR = 'CHAR'
VOID = 'VOID'
VAR = 'VAR'
STATIC = 'STATIC'
FIELD = 'FIELD'
LET = 'LET'
DO = 'DO'
IF = 'IF'
ELSE = 'ELSE'
WHILE = 'WHILE'
RETURN = 'RETURN'
TRUE = 'TRUE'
FALSE = 'FALSE'
NULL = 'NULL'
THIS = 'THIS'


def tokenizer_engine(content):
    """
    comments grammar error is caught here
    """
    chars = list(content)
    token = Token()
    tokens = list()
    line_num = 1
    single_line_comment = False
    multiline_comment = False
    string_constant = False
    i = 0
    while i < len(chars):
        cur = chars[i]
        next1 = ''
        if i + 1 < len(chars):
            next1 = chars[i + 1]
        next2 = ''
        if i + 2 < len(chars):
            next2 = chars[i + 2]
            # enter single line comment
        if cur == '/' and next1 == '/' and not multiline_comment:
            # single comment in multiline comment is ignored
            single_line_comment = True
            i += 2
            continue
        # leave single line comment
        if single_line_comment:
            if cur == '\n':
                single_line_comment = False
            i += 1
            continue
        # enter multi line comment
        if cur == '/' and next1 == '*':
            multiline_comment = True
            i += 2
            continue
        # leave multi line comment
        if multiline_comment:
            if cur == '*' and next1 == '/':
                multiline_comment = False
                i += 2
            i += 1
            continue
        if cur == '\"' and not string_constant:
            # append the previous token
            if not token.is_empty():
                tokens.append(token)
                token = Token(line_num=line_num)
            # char coming next is string constant
            string_constant = True
            i += 1
            continue
        if string_constant:
            if cur == '\"':
                # string constant may be empty string
                token.token_type = STRING_CONST
                tokens.append(token)
                token = Token(line_num=line_num)
                string_constant = False
            else:
                # append char to string constant
                token.append(cur)
            i += 1
            continue
        # \n
        # space
        # valid
        if cur == ' ' or cur == '\t':
            if not token.is_empty():
                tokens.append(token)
                token = Token(line_num=line_num)
            i += 1
            continue
        if cur in SYMBOLS:
            if not token.is_empty():
                tokens.append(token)
            token = Token(SYMBOL, cur, line_num=line_num)
            tokens.append(token)
            token = Token(line_num=line_num)
            i += 1
            continue
        if cur != ' ' and cur != '\n':
            token.append(cur)
        if cur == '\n':
            line_num += 1
            if not token.is_empty():
                tokens.append(token)
            token = Token(line_num=line_num)
        if i == len(chars) - 1:
            if not token.is_empty():
                print('append last token', token)
                tokens.append(token)
            i += 1
            continue
        i += 1
    return tokens


class JackTokenizer:
    def __init__(self, jack_file):
        self.jack_file = jack_file
        self.cur_index = 0
        self.cur_token = None
        self.tokens = tokenizer_engine(jack_file.read())
        output_file_name = jack_file.name.replace('.jack', '_tokens.xml')
        self.output_file = open(output_file_name, 'w')
        self.log_head(self.output_file)

    def log_head(self, file):
        self.output_file.write('<tokens>\n')

    def log_token(self, token, file):
        txt = token.content
        if txt == '<':
            txt = '&lt;'
        elif txt == '>':
            txt = '&gt;'
        elif txt == '\"':
            txt = '&quot;'
        elif txt == '&':
            txt = '&amp;'
        file.write('\t<{0}> {1} </{0}>\n'.format(token.token_type, txt))

    def log_tail(self, file):
        file.write('</tokens>')
        file.flush()

    def has_more_tokens(self):
        """
        Do we have more tokens in the input?
        :return: Boolean
        """
        rs = self.cur_index < len(self.tokens)
        if not rs:
            self.log_tail(self.output_file)
        return rs

    def advance(self):
        """
        Gets the next token from the input and makes it the current token.
        This method should only be called if hasMoreTokens() is true.
        Initially there is no current token.
        """
        self.cur_token = self.tokens[self.cur_index]
        self.cur_token.get_token_type()
        self.log_token(self.cur_token, self.output_file)
        self.cur_index += 1
        return self.cur_token

    def token_type(self):
        return self.cur_token.get_token_type()

    def keyword(self):
        return CLASS

    def symbol(self):
        return ';'

    def indentifier(self):
        return 'varName_foo'

    def int_val(self):
        return 1024

    def string_val(self):
        return 'string_bar'
