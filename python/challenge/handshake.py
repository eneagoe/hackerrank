def handshake(n):
    return n * (n - 1) // 2


if __name__ == '__main__':
    n = int(input())

    result = handshake(n)

    print(result)
