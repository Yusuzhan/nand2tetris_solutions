def divide(x, y):
    print('%s divided by %s' % (x, y))
    if y > x:
        print('y=%s > x=%s, return 0' % (x, y))
        return 0
    q = divide(x, 2 * y)
    if (x - 2 * q * y) < y:
        print('x(%s) - 2 * q(%s) * y(%s) < y(%s) True return 2 * q = %s' % (x, q, y, y, (2 * q)))
        return q + q
    else:
        print('x(%s) - 2 * q(%s) * y(%s) < y(%s) False return 2 * q + 1 = %s' % (x, q, y, y, 2 * q + 1))
        return q + q + 1


divide(18000, 3)
