import re

from JackTokenizer import SYMBOLS, tokenizer_engine

text = """
let foo = 2;

let bar = "string";  
"""

print(tokenizer_engine(text))
