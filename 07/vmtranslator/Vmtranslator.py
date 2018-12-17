# -*- coding: utf-8 -*-
import sys
import codecs
import os

from CodeWriter import CodeWriter
from Parser import *


def handle_source_file(source_file, output_file, parser, code_writer):
    while parser.has_more_commands():
        vm_cmd = parser.advance()
        cmd_type = parser.command_type()
        print('command_type =', cmd_type)
        if cmd_type == C_PUSH or cmd_type == C_POP:
            code_writer.write_push_pop(vm_cmd, parser.arg1, parser.arg2)
        elif cmd_type == C_ARITHMETIC:
            code_writer.write_arithmetic(vm_cmd, parser.arg1, parser.arg2)
        elif cmd_type == C_LABEL:
            code_writer.write_label(vm_cmd, parser.arg1)
        elif cmd_type == C_IF:
            code_writer.write_if(vm_cmd, parser.arg1)
        elif cmd_type == C_GOTO:
            code_writer.write_goto(vm_cmd, parser.arg1)
        elif cmd_type == C_FUNCTION:
            code_writer.write_function(vm_cmd, parser.arg1, parser.arg2)
        elif cmd_type == C_RETURN:
            code_writer.write_return(vm_cmd)
        elif cmd_type == C_CALL:
            code_writer.write_call(vm_cmd, parser.arg1, parser.arg2)
        else:
            output_file.write('// ' + vm_cmd + ' not implemented yet \n')


def is_vm_file(file):
    return file.endswith('.vm')


path = sys.argv[1]
if os.path.isdir(path):
    # init output file
    short_file_name = path.split('/')[-1] + '.asm'
    output_asm_file = codecs.open(path + '/' + short_file_name, 'w', 'utf-8')
    # filter source code files
    vm_files = list(filter(is_vm_file, os.listdir(path)))
    print(vm_files)
    CodeWriter.write_bootstrap(output_asm_file)
    parser = Parser(None)
    code_writer = CodeWriter(short_file_name, output_asm_file)
    for source_file_name in vm_files:
        # init parser and code writer
        source_file = open(path + '/' + source_file_name, 'r')
        parser.set_source_file(source_file)
        code_writer.source_file = source_file_name.replace('.vm', '')
        handle_source_file(source_file, output_asm_file, parser, code_writer)

else:
    # single file
    file = open(full_file_name, 'r')
    output_file_name = full_file_name[0:len(full_file_name) - 3]
    short_file_name = full_file_name.split('/')[-1].replace('.vm', '')
    output_asm_file = codecs.open(output_file_name + '.asm', 'w', 'utf-8')
    parser = Parser(file)
    code_writer = CodeWriter(short_file_name, output_asm_file)
    handle_source_file(file, output_asm_file, parser, code_writer)

'''
# StackArithmetic

## SimpleAdd
py Vmtranslator.py ../StackArithmetic/SimpleAdd/SimpleAdd.vm

## StackTest
py Vmtranslator.py ../StackArithmetic/StackTest/StackTest.vm


# MemoryAccess

## BasicTest
py Vmtranslator.py ../MemoryAccess/BasicTest/BasicTest.vm

## PointerTest
py Vmtranslator.py ../MemoryAccess/PointerTest/PointerTest.vm

## StaticTest
py Vmtranslator.py ../MemoryAccess/StaticTest/StaticTest.vm

# ProgramFlow

## BasicLoop
python Vmtranslator.py ../../08/ProgramFlow/BasicLoop/BasicLoop.vm

## FibonacciSeries
python Vmtranslator.py ../../08/ProgramFlow/FibonacciSeries/FibonacciSeries.vm

## SimpleFunction
py Vmtranslator.py ../../08/FunctionCalls/SimpleFunction/SimpleFunction.vm

## NestedCall
py Vmtranslator.py ../../08/FunctionCalls/NestedCall/Sys.vm

## FibonacciElement
py Vmtranslator.py ../../08/FunctionCalls/FibonacciElement

## StaticsTest
py Vmtranslator.py ../../08/FunctionCalls/StaticsTest
'''
