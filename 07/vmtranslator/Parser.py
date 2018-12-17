# -*- coding: utf-8 -*-
C_ARITHMETIC = 'C_ARITHMETIC'
C_PUSH = 'C_PUSH'
C_POP = 'C_POP'
C_LABEL = 'C_LABEL'
C_GOTO = 'C_GOTO'
C_IF = 'C_IF'
C_FUNCTION = 'C_FUNCTION'
C_RETURN = 'C_RETURN'
C_CALL = 'C_CALL'


class Parser:
    """
    Parser: Handles the parsing of a single .vm file, and encapsulates access to the input code. It reads VM commands,
    pareses them, and provides convenient access to their components. In addition, it removes all white spaces and
    comments.
    """

    def __init__(self, file):
        self.file = file
        self.commands = list()
        self.cur = 0
        self.cur_line = ''
        raw_lines = file.readlines()
        for line in raw_lines:
            if line != '' and not line.startswith('//') and line != '\n':
                self.commands.append(line)

        print('total=', len(raw_lines), ', cmd=', len(self.commands))

    def has_more_commands(self):
        """Are there more commands in the input?"""
        return self.cur < len(self.commands)

    def advance(self):
        """Reads the next command from the input and makes it the current command. Should be called only if
        hasMoreCommands() is true. Initially there is no current command. """
        self.cur_line = self.commands[self.cur].replace('\n', '')
        self.cur += 1
        print('\033[0;33;41m' + self.cur_line + '\033[0m')
        return self.cur_line

    def command_type(self):
        """
        Returns the type of the current VM command.
        C_ARITHMETIC is returned for all the arithmetic commands.
        :return:
        C_ARITHMETIC, # done
        C_PUSH, # done
        C_POP, # done
        C_LABEL,
        C_GOTO,
        C_IF,
        C_FUNCTION,
        C_RETURN,
        C_CALL
        """
        type = self.cur_line.replace('\n', '').strip().split(' ')[0]
        if (
                type == 'add' or
                type == 'sub' or
                type == 'neg' or
                type == 'eq' or
                type == 'gt' or
                type == 'lt' or
                type == 'and' or
                type == 'or' or
                type == 'not'
        ):
            return C_ARITHMETIC
        elif type == 'push':
            return C_PUSH
        elif type == 'pop':
            return C_POP
        elif type == 'label':
            return C_LABEL
        elif type == 'if-goto':
            return C_IF
        elif type == 'goto':
            return C_GOTO
        elif type == 'function':
            return C_FUNCTION
        elif type == 'return':
            return C_RETURN
        elif type == 'call':
            return C_CALL
        else:
            return 'NOT_DEF'

    def arg1(self):
        """
        Returns the first argument of the current command.
        In the case of C_ARITHMETIC , the command itself ( add , sub , etc.) is returned.
        Should not be called if the current command is C_RETURN .
        """
        if self.command_type() == C_ARITHMETIC:
            return self.cur_line.split(' ')[0]
        else:
            return self.cur_line.split(' ')[1]

    def arg2(self):
        """
        Returns the second argument of the current command.
        Should be called only if the current command is C_PUSH , C_POP , C_FUNCTION , or C_CALL
        :return int
        """
        return self.cur_line.split(' ')[2]
