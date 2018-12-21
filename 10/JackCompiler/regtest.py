import re

from JackTokenizer import SYMBOLS, tokenizer_engine

text = """

var foo = 7788; 
"""

print(tokenizer_engine(text))
