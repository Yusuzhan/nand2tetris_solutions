class Parser:
    """
    Parser: Handles the parsing of a single .vm file, and encapsulates access to the input code. It reads VM commands,
    pareses them, and provides convenient access to their components. In addition, it removes all white spaces and
    comments.
    """

    def __init__(self, file):
        self.file = file
        raw_lines = file.readlines()
        self.commands = list()
        for line in raw_lines:
            if line != '' and not line.startswith('//') and line != '\n':
                self.commands.append(line)
        self.cur = 0
        print('total=', len(raw_lines), ', cmd=', len(self.commands))

    def has_more_commands(self):
        """Are there more commands in the input?"""
        return self.cur < len(self.commands)

    def advance(self):
        """Reads the next command from the input and makes it the current command. Should be called only if
        hasMoreCommands() is true. Initially there is no current command. """
        line = self.commands[self.cur]
        self.cur += 1
        print('advance: ', line)
        return line

    def command_type(self):
        """
        Returns the type of the current VM command.
        C_ARITHMETIC is returned for all the arithmetic commands.
        :return:
        C_ARITHMETIC,
        C_PUSH,
        C_POP,
        C_LABEL,
        C_GOTO,
        C_IF,
        C_FUNCTION,
        C_RETURN,
        C_CALL
        """
        return 'C_ARITHMETIC'

    def arg1(self):
        """
        Returns the first argument of the current command.
        In the case of C_ARITHMETIC , the command itself ( add , sub , etc.) is returned.
        Should not be called if the current command is C_RETURN .
        """
        return 'todo'

    def arg2(self):
        """
        Returns the second argument of the current command.
        Should be called only if the current command is C_PUSH , C_POP , C_FUNCTION , or C_CALL
        """
        return 0
