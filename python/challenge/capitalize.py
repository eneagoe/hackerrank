def solve(s):
    cap = ""

    for i, c in enumerate(s):
        if i == 0 or s[i - 1] == " ":
            cap += c.upper()
        else:
            cap += c

    return cap


if __name__ == '__main__':
    print(solve(input()))
