# -*- coding: utf-8 -*-
import sys
import codecs
import os

from CompilationEngine import CompilationEngine
from JackTokenizer import *


def compile_jack_file(jack_file):
    tokenizer = JackTokenizer(jack_file)
    print(tokenizer.tokens)
    compiler = CompilationEngine()


path = sys.argv[1]
if os.path.isdir(path):
    jack_file_name_list = list(filter(lambda f: f.endswith('.jack'), os.listdir(path)))
    print(jack_file_name_list)
    short_file_name = path.split('/')[-1]
    for jack_file_name in jack_file_name_list:
        jack_file = open(path + '/' + jack_file_name, 'r')
        compile_jack_file(jack_file)
