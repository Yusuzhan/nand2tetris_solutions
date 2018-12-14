# -*- coding: utf-8 -*-
import sys
import codecs

from CodeWriter import CodeWriter
from Parser import *

file_name = sys.argv[1]
# file_name = 'SimpleAdd.vm'
file = open(file_name, 'r')
output_file_name = file_name[0:len(file_name) - 3]
print('generate output file ', output_file_name)
output_hack_file = codecs.open(output_file_name + '.asm', 'w', 'utf-8')
parser = Parser(file)
code_writer = CodeWriter(output_hack_file)

while parser.has_more_commands():
    vm_cmd = parser.advance()
    cmd_type = parser.command_type()
    print('command_type =', cmd_type)
    if cmd_type == C_PUSH or cmd_type == C_POP:
        code_writer.write_push_pop(vm_cmd, parser.arg1, parser.arg2)
    elif cmd_type == C_ARITHMETIC:
        code_writer.write_arithmetic(vm_cmd, parser.arg1, parser.arg2)


# SimpleAdd
# py Vmtranslator.py ../StackArithmetic/SimpleAdd/SimpleAdd.vm
# StackTest
# py Vmtranslator.py ../StackArithmetic/StackTest/StackTest.vm

# PopLocal
# py Vmtranslator.py ../MemoryAccess/BasicTest/PopLocal.vm
# AccessTemp
# py Vmtranslator.py ../MemoryAccess/MyTests/AccessTemp.vm
# BasicTest
# py Vmtranslator.py ../MemoryAccess/BasicTest/BasicTest.vm
