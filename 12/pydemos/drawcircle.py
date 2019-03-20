import matplotlib.pyplot as plt

plt.xlim(right=30, left=0)
plt.ylim(top=0, bottom=30)

xs = []
ys = []


def draw_pixel(x, y):
    xs.append(x)
    ys.append(y)


def draw_circle(x, y, r):
    return


draw_circle(0, 0, 30, 20)

plt.plot(xs, ys, 'ro')
plt.show()
