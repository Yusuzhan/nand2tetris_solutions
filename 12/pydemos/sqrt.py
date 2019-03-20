def sqrt(x):
    # compute the integer part of y = sqrt(x). Strategy:
    # Find an integer y such that y ^ 2 <= x < (y + 1) ^ 2 (for 0 <= x < 2 ^ n)
    # By performing a binary search in the range 0...2 ^ ( n / 2 ) - 1
    y = 0
    j = 7
    while j >= 0:
        print('j=%s' % j)
        print('2 ** 7 = %s' % (2 ** j))
        print('(y + 2 ^ j) ^ 2 = %s' % ((y + 2 ** j) ** 2))
        if (y + 2 ** j) ** 2 <= x:
            y += 2 ** j
        j -= 1
    return y


print(sqrt(3331))
