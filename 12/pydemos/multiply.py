mask = 0b1111111111111111
twoToThe = [
    0b0000000000000001,  # 0
    0b0000000000000010,  # 1
    0b0000000000000100,  # 2
    0b0000000000001000,  # 3
    0b0000000000010000,  # 4
    0b0000000000100000,  # 5
    0b0000000001000000,  # 6
    0b0000000010000000,  # 7
    0b0000000100000000,  # 8
    0b0000001000000000,  # 9
    0b0000010000000000,  # 10
    0b0000100000000000,  # 11
    0b0001000000000000,  # 12
    0b0010000000000000,  # 13
    0b0100000000000000,  # 14
    0b1000000000000000,  # 15
]


def bit(x, j):
    return x & twoToThe[j] > 0


def multiply(x, y):
    sum = 0
    index = 0
    shifted_x = x
    print('%s x %s' % (x, y))
    print('%s x %s' % (bin(x), bin(y)))
    while index < 16:
        if bit(y, index):
            print('index=%s -> sum=%s, shifted_x=%s sum=%s' % (index, sum, shifted_x, sum + shifted_x))
            sum += shifted_x
        shifted_x += shifted_x
        index += 1
    return sum


# print('result=%s' % multiply(1, 0b0100011001010000))
print('result=%s' % multiply(1, 0b1011100110110000))
