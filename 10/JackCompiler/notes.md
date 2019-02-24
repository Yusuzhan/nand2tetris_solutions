## String

String的构造使用`String.new(lenght)`.

赋值使用如`x="cc...c"`可以通过OS程序`String.appendchar(nextChar)`来实现.

## 构造函数

构造函数使用`Memory.alloc(size)`来为新对象分配空间.

# 符号表实现

类的符号表包含:

1. static
2. field

函数/方法的符号表包含:

1. arg
2. var
