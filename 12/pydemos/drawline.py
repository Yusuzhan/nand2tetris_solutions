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
    """
    draws downwards and vertical line
    """
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


def draw_line_horizontal(x, y, x2, y2):
    while x < x2:
        draw_pixel(x, y)
        x += 1
    return


def draw_line_vertical(x, y, x2, y2):
    while y < y2:
        draw_pixel(x, y)
        y += 1
    return


# downwards
# draw_line_down(50, 50, 80, 100)

# upwards
# draw_line_up(0, 200, 100, 70)

# vertical
draw_line_vertical(0, 0, 0, 70)

# horizontal
draw_line_horizontal(0, 0, 100, 0)

draw_line_horizontal(0, 70, 100, 70)
draw_line_vertical(100, 0, 100, 70)
draw_line_down(0, 0, 100, 70)
draw_line_up(0, 70, 100, 0)

plt.plot(xs, ys, 's')
plt.show()
