import matplotlib.pyplot as plt
import math

plt.xlim(right=256, left=0)
plt.ylim(top=0, bottom=256)

xs = []
ys = []


def draw_pixel(x, y):
    xs.append(x)
    ys.append(y)


def draw_circle(x, y, r):
    for dy in range(- r, r + 1):
        dx = math.sqrt(r ** 2 - dy ** 2)
        print(dx)
        print('drawing line from (%s, %s) to (%s, %s)' % (x - dx, y + dy, x + dx, y + dy))
        draw_line_horizontal(x - dx, y + dy, x + dx, y + dy)


def draw_line_horizontal(x, y, x2, y2):
    if y < 0:
        return
    while x <= x2:
        if x > 0:
            draw_pixel(x, y)
        x += 1
    return


# draw_circle(0, 0, 30)
draw_circle(100, 100, 8)

draw_line_horizontal(0, 0, 100, 0)

plt.plot(xs, ys, 'ro')
plt.show()
