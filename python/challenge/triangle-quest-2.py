for i in range(1, int(input()) + 1):
    print(sum(map(lambda x: x*10**(i - x), range(1, i + 1))) * 10**(i - 1) + sum(map(lambda x: x * 10**(x - 1), range(i - 1, 0, -1))))
