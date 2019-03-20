import matplotlib.pyplot as plt

plt.xlim(right=100, left=0)
plt.ylim(top=00, bottom=100)

xs = []
ys = []


def draw_pixel(x, y):
    xs.append(x)
    ys.append(y)


def draw_line(x, y, dx, dy):
    a = 0
    b = 0
    while a <= dx and b <= dy:
        draw_pixel(x + a, y + b)
        if a / dx < b / dy:
            a += 1
        else:
            b += 1


def draw_line_improved(x, y, dx, dy):
    a = 0
    b = 0
    t = a * dy - b * dx
    while a <= dx and b <= dy:
        draw_pixel(x + a, y + b)
        if t < 0:
            a += 1
            t += dy
        else:
            b += 1
            t -= dx


draw_line_improved(0, 0, 30, 20)
draw_line_improved(30, 20, 0, 20)


plt.plot(xs, ys, 's')
plt.show()
