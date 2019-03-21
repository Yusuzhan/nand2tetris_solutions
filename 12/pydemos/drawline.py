import matplotlib.pyplot as plt

plt.xlim(right=200, left=0)
plt.ylim(top=00, bottom=200)

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


def draw_line_down(x, y, x2, y2):
    a = 0
    b = 0
    dx = x2 - x
    dy = y2 - y
    t = a * dy - b * dx
    while a <= dx and b <= dy:
        draw_pixel(x + a, y + b)
        if t < 0:
            a += 1
            t += dy
        else:
            b += 1
            t -= dx


def draw_line_up(x, y, x2, y2):
    a = 0
    b = 0
    dx = x2 - x
    dy = y2 - y
    t = a * dy - b * dx
    while a <= dx and b >= dy:
        draw_pixel(x + a, y + b)
        if t > 0:
            t += dy
            a += 1
        else:
            b -= 1
            t += dx


# draw_line_improved(0, 0, 30, 20)
draw_line_down(50, 50, 80, 100)
# draw_line_improved(50, 50, 100, 80)
# draw_line_down(50, 50, 50, 100)
draw_line_up(0, 200, 100, 70)
draw_line_up(0, 200, 100, 90)

draw_pixel(100, 70)

plt.plot(xs, ys, 's')
plt.show()
