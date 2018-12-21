import re

from JackTokenizer import SYMBOLS, tokenizer_engine

text = """
let foo = 2;

let bar = "string";  
"""

print(tokenizer_engine(text))
array = [1, 2]
foo = 'foo'
print(isinstance(array, list))
print(isinstance(foo, str))
