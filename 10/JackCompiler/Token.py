count = 0


class Token:
    def __init__(self, token_type='', content=''):
        global count
        self.token_type = token_type
        self.content = content
        self.id = count
        count += 1

    def is_empty(self):
        return self.content == ''

    def append(self, c):
        self.content += c

    def __str__(self):
        return '(' + self.token_type + ', ' + self.content + ')'

    def __repr__(self):
        return 'Token' + str(self.id) + '(' + self.token_type + ', ' + self.content + ')'
