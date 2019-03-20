import matplotlib.pyplot as plt

plt.xlim(right=100, left=0)
plt.ylim(top=00, bottom=100)

xs = []
ys = []


def draw_pixel(x, y):
    xs.append(x)
    ys.append(y)


draw_pixel(0, 0)
draw_pixel(28, 30)
draw_pixel(29, 30)
draw_pixel(30, 30)
draw_pixel(30, 31)


plt.plot(xs, ys, 's')
plt.show()
