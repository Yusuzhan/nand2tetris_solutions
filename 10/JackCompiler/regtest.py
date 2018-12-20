import re

from JackTokenizer import SYMBOLS, tokenizer_engine

text = """
a  = "a b c";
"""

print(tokenizer_engine(text))
