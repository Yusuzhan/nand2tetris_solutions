# -*- coding: utf-8 -*-
file = open('test.txt', 'w')
read = open('test.txt', 'r')
file.write('first line')
file.flush()
rs = len(read.readlines())
print(rs)












