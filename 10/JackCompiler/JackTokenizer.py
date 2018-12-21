import re

# token type
from Token import Token

SYMBOL = 'SYMBOL'
STRING_CONST = 'STRING_CONST'
KEYWORD = 'KEYWORD'
INT_CONST = 'INT_CONST'
IDENTIFIER = 'IDENTIFIER'

KEYWORDS = ['class', 'constructor', 'function',
            'method', 'field', 'static', 'var',
            'int', 'char', 'boolean', 'void', 'true',
            'false', 'null', 'this', 'let', 'do',
            'if', 'else', 'while', 'return']

# symbol
SYMBOLS = ['{',
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
    line_num = 0
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
        # control line number
        if cur == '\n':
            line_num += 1
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
                token = Token()
            # char coming next is string constant
            string_constant = True
            i += 1
            continue
        if string_constant:
            if cur == '\"':
                # string constant may be empty string
                token.token_type = STRING_CONST
                tokens.append(token)
                token = Token()
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
                token = Token()
            i += 1
            continue
        if cur in SYMBOLS:
            if not token.is_empty():
                tokens.append(token)
            token = Token(SYMBOL, cur)
            tokens.append(token)
            token = Token()
            i += 1
            continue
        if cur != ' ' and cur != '\n':
            token.append(cur)
        if i == len(chars) - 1:
            if not token.is_empty():
                print('tk', token)
                tokens.append(token)
                token = Token()
            i += 1
            continue
        i += 1
    return tokens


class JackTokenizer:
    def __init__(self, jack_file):
        self.jack_file = jack_file
        self.cur_index = 0
        self.cur_token = ''
        self.tokens = tokenizer_engine(jack_file.read())

    def has_more_tokens(self):
        """
        Do we have more tokens in the input?
        :return: Boolean
        """
        return self.cur_index < len(self.tokens)

    def advance(self):
        """
        Gets the next token from the input and makes it the current token.
        This method should only be called if hasMoreTokens() is true.
        Initially there is no current token.
        """
        self.cur_token = self.tokens[self.cur_index]
        self.cur_index += 1
        return self.cur_token

    def token_type(self):
        if self.cur_token in SYMBOLS:
            return SYMBOL
        if self.cur_token in KEYWORDS:
            return KEYWORD
        return KEYWORD

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
