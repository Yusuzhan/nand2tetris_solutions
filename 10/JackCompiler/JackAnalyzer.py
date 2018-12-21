# -*- coding: utf-8 -*-
import sys
import codecs
import os

from CompilationEngine import CompilationEngine
from JackTokenizer import *


def compile_jack_file(jack_file):
    tokenizer = JackTokenizer(jack_file)
    compiler = CompilationEngine(tokenizer, jack_file)
    compiler.compile()


path = sys.argv[1]
if os.path.isdir(path):
    jack_file_name_list = list(filter(lambda f: f.endswith('.jack'), os.listdir(path)))
    print(jack_file_name_list)
    short_file_name = path.split('/')[-1]
    for jack_file_name in jack_file_name_list:
        jack_file = open(path + '/' + jack_file_name, 'r')
        compile_jack_file(jack_file)

"""
# ArrayTest
py JackAnalyzer.py ../../10/ArrayTest
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\ArrayTest\MainT.xml" "C:\workspace\others\nand2tetris_solutions\10\ArrayTest\Main_tokens.xml"

# ExpressionLessSquare
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\MainT.xml" "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\Main_tokens.xml"
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\SquareT.xml" "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\Square_tokens.xml"
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\SquareGameT.xml" "C:\workspace\others\nand2tetris_solutions\10\ExpressionLessSquare\SquareGame_tokens.xml"

# Square
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\Square\MainT.xml" "C:\workspace\others\nand2tetris_solutions\10\Square\Main_tokens.xml"
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\Square\SquareT.xml" "C:\workspace\others\nand2tetris_solutions\10\Square\Square_tokens.xml"
TextComparer.bat "C:\workspace\others\nand2tetris_solutions\10\Square\SquareGameT.xml" "C:\workspace\others\nand2tetris_solutions\10\Square\SquareGame_tokens.xml"
"""
