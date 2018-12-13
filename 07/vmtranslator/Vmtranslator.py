# -*- coding: utf-8 -*-
import sys

from CodeWriter import CodeWriter
from Parser import *

file_name = sys.argv[1]
# file_name = 'SimpleAdd.vm'
file = open(file_name, 'r')
output_file_name = file_name[0:len(file_name) - 3]
print('generate output file ', output_file_name)
output_hack_file = open(output_file_name + '.asm', 'w')
parser = Parser(file)
code_writer = CodeWriter(output_hack_file)

while parser.has_more_commands():
    vm_cmd = parser.advance()
    cmd_type = parser.command_type()
    if cmd_type == C_PUSH or cmd_type == C_POP:
        code_writer.write_push_pop(vm_cmd, parser.arg1, parser.arg2)
    elif cmd_type == C_ARITHMETIC:
        code_writer.write_arithmetic(vm_cmd, parser.arg1, parser.arg2)

