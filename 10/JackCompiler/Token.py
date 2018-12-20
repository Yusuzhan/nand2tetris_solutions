class Token:
    def __init__(self, token_type='', content=''):
        self.token_type = token_type
        self.content = content

    def is_empty(self):
        return self.content == ''

    def append(self, c):
        self.content += c

    def __str__(self):
        return '(' + self.token_type + ', ' + self.content + ')'

    def __repr__(self):
        return '(' + self.token_type + ', ' + self.content + ')'
