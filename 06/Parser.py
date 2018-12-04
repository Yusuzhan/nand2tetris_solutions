import sys

C_PREFIX = 0b1110000000000000
NOT_DEF = "command not def"
A_COMMAND = 'A_COMMAND'
C_COMMAND = 'C_COMMAND'
L_COMMAND = 'L_COMMAND'
# symbols
symbol_table = {
    'SP': 0,
    'LCL': 1,
    'ARG': 2,
    'THIS': 3,
    'THAT': 4,
    'R0': 0,
    'R1': 1,
    'R2': 2,
    'R3': 3,
    'R4': 4,
    'R5': 5,
    'R6': 6,
    'R7': 7,
    'R8': 8,
    'R9': 9,
    'R10': 10,
    'R11': 11,
    'R12': 12,
    'R13': 13,
    'R14': 14,
    'R15': 15,
    'SCREEN': 16384,  # 0x4000
    'KBD': 24576  # 0x6000
}

asmname = sys.argv[1]
print('file name is ', asmname)
# asmname = 'MaxL.asm'
print(sys.argv[0])
asmfile = open(asmname, 'r')
raw_lines = asmfile.readlines()
commands = list()
for line in raw_lines:
    if line != '' and not line.startswith('//') and line != '\n':
        commands.append(line)
lineNum = len(commands)
var_index = 16
cur = -1
validCount = -1


# Parser


def has_more_lines():
    return cur + 1 < lineNum


def advance():
    global cur
    cur = cur + 1
    current_line = commands[cur]
    return current_line.split('//')[0].strip()


def command_type(cmd):
    global validCount
    if cmd.startswith('@'):
        validCount += 1
        return A_COMMAND
    elif cmd.startswith('('):
        return L_COMMAND
    else:
        validCount += 1
        return C_COMMAND


def save_var_symbol(cmd):
    global var_index
    var_name = cmd[1:]
    symbol_table[var_name] = var_index
    print('add VAR', var_name, var_index, 'to table')
    var_index += 1
    return bin(symbol_table[var_name])[2:].zfill(16)


def label_symbol(cmd):
    global cur
    label = cmd[1:len(cmd) - 1]
    if symbol_table.get(label) is None:
        print('add ', label, validCount + 1, ' to symbol table')
        symbol_table[label] = validCount + 1


def dest(cmd):
    if cmd.startswith('M='):
        return 'M'
    elif cmd.startswith('D='):
        return 'D'
    elif cmd.startswith('MD='):
        return 'MD'
    elif cmd.startswith('A='):
        return 'A'
    elif cmd.startswith('AM='):
        return 'AM'
    elif cmd.startswith('AD='):
        return 'AD'
    elif cmd.startswith('AMD='):
        return 'AMD'
    else:
        return 'null'


def comp(cmd):
    if cmd.find('=0') > -1 or cmd.find('0;') > -1:
        return '0'
    elif cmd.find('=1') > -1:
        return '1'
    elif cmd.find('=-1') > -1:
        return '-1'
    # starts with D
    elif cmd.find('=D&A') > -1:
        return 'D&A'
    elif cmd.find('=D&M') > -1:
        return 'D&M'
    elif cmd.find('=D+A') > -1:
        return 'D+A'
    elif cmd.find('=D+M') > -1:
        return 'D+M'
    elif cmd.find('=D-A') > -1:
        return 'D-A'
    elif cmd.find('=D-M') > -1:
        return 'D-M'
    elif cmd.find('=D+1') > -1:
        return 'D+1'
    elif cmd.find('=D-1') > -1:
        return 'D-1'
    elif cmd.find('=D|A') > -1:
        return 'D|A'
    elif cmd.find('=D|M') > -1:
        return 'D|M'
    elif cmd.find('=D') > -1 or cmd.find('D;') > -1:
        return 'D'
    # starts with A
    elif cmd.find('=A+1') > -1:
        return 'A+1'
    elif cmd.find('=A-1') > -1:
        return 'A-1'
    elif cmd.find('=A-D') > -1:
        return 'A-D'
    elif cmd.find('=A') > -1 or cmd.find('A;') > -1:
        return 'A'
    # starts with M
    elif cmd.find('=M+1') > -1:
        return 'M+1'
    elif cmd.find('=M-1') > -1:
        return 'M-1'
    elif cmd.find('=M-D') > -1:
        return 'M-D'
    elif cmd.find('=M') > -1 or cmd.find('M;') > -1:
        return 'M'
    # starts with !
    elif cmd.find('=!D') > -1:
        return '!D'
    elif cmd.find('=!A') > -1:
        return '!A'
    elif cmd.find('=!M') > -1:
        return '!M'
    # starts with -
    elif cmd.find('=-D') > -1:
        return '-D'
    elif cmd.find('=-A') > -1:
        return '-A'
    elif cmd.find('=-M') > -1:
        return '-M'
    return NOT_DEF


def jump(cmd):
    if cmd.find('JGT') > -1:
        return 'JGT'
    if cmd.find('JEQ') > -1:
        return 'JEQ'
    if cmd.find('JGE') > -1:
        return 'JGE'
    if cmd.find('JLT') > -1:
        return 'JLT'
    if cmd.find('JNE') > -1:
        return 'JNE'
    if cmd.find('JLE') > -1:
        return 'JLE'
    if cmd.find('JLE') > -1:
        return 'JLE'
    if cmd.find('JMP') > -1:
        return 'JMP'
    return "null"


# CODE


def gen_a(cmd):
    """
    16 bits
    """
    tar = cmd[1:]
    if tar.isdigit():
        return bin(int(tar))[2:].zfill(16)
    else:
        if not symbol_table.get(tar) is None:
            return bin(symbol_table.get(tar))[2:].zfill(16)
        else:  # save new variable into table
            return save_var_symbol(cmd)


def gen_dest(str):
    """
    3 bits
    """
    if str == 'M':
        return 0b001
    elif str == "D":
        return 0b010
    elif str == "MD":
        return 0b011
    elif str == "A":
        return 0b100
    elif str == "AM":
        return 0b101
    elif str == "AD":
        return 0b110
    elif str == "AMD":
        return 0b111
    elif str == "null":
        return 0b000


def gen_comp(arg):
    if arg == '0':
        return 0b0101010
    elif arg == '1':
        return 0b0111111
    elif arg == '-1':
        return 0b0111010
    elif arg == 'D':
        return 0b0001100
    elif arg == 'A':
        return 0b0110000
    elif arg == 'M':
        return 0b1110000
    elif arg == '!D':
        return 0b0001101
    elif arg == '!A':
        return 0b0110011
    elif arg == '!M':
        return 0b1110001
    elif arg == '-D':
        return 0b0001111
    elif arg == '-A':
        return 0b0110011
    elif arg == '-M':
        return 0b1110011
    elif arg == 'D+1':
        return 0b0011111
    elif arg == 'A+1':
        return 0b0110111
    elif arg == 'M+1':
        return 0b1110111
    elif arg == 'D-1':
        return 0b0001110
    elif arg == 'A-1':
        return 0b0110010
    elif arg == 'M-1':
        return 0b1110010
    elif arg == 'D+A':
        return 0b0000010
    elif arg == 'D+M':
        return 0b1000010
    elif arg == 'D-A':
        return 0b0010011
    elif arg == 'D-M':
        return 0b1010011
    elif arg == 'A-D':
        return 0b0000111
    elif arg == 'M-D':
        return 0b1000111
    elif arg == 'D&A':
        return 0b0000000
    elif arg == 'D&M':
        return 0b1000000
    elif arg == 'D|A':
        return 0b0010101
    elif arg == 'D|M':
        return 0b1010101


def gen_jump(arg):
    if arg == 'JGT':
        return 0b001
    elif arg == 'JEQ':
        return 0b010
    elif arg == 'JGE':
        return 0b011
    elif arg == 'JLT':
        return 0b100
    elif arg == 'JNE':
        return 0b101
    elif arg == 'JLE':
        return 0b110
    elif arg == 'JMP':
        return 0b111
    else:
        return 0b000


# D=M
# 1111 1100 0001 0000
# bin(C_PREFIX | c_comp << 6 | c_dest << 3 | c_jump)

# for cmd in commands:
hackname = asmname.split('.')[0] + ".hack"
outFile = open(hackname, 'w')

# pass 1
while has_more_lines():
    cmd = advance()
    type = command_type(cmd)
    if type == L_COMMAND:
        label_symbol(cmd)
# pass 2
cur = -1
validCount = -1
while has_more_lines():
    cmd = advance()
    type = command_type(cmd)
    if type == A_COMMAND:
        outFile.write(gen_a(cmd) + "\n")
    elif type == C_COMMAND:
        bincode = bin(C_PREFIX | gen_comp(comp(cmd)) << 6 | gen_dest(dest(cmd)) << 3 | gen_jump(jump(cmd)))[2:]
        outFile.write(bincode + "\n")
