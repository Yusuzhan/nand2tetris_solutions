from Parser import Parser

file = open('SimpleAdd.vm', 'r')
parser = Parser(file)

while parser.has_more_commands():
    line = parser.advance()
