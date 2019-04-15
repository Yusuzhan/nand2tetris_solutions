def convert_to_16(v):
    b = bin(v)
    sum = 0
    index = len(b) - 1
    l = index
    while index >= 2:
        # print('%s - %s' % (index, int(b[index])))
        if int(b[index]) == 1:
            if l - index == 15:
                sum -= 2 ** 15
                pass
            else:
                sum += 2 ** (l - index)
        index -= 1
    return sum


print(convert_to_16(0b1111111100000000))
