def sort_key(c):
    if c.islower():
        return ord(c)
    elif c.isupper():
        return ord(c) * 100
    elif c.isdigit():
        if int(c) % 2 == 0:
            return ord(c) * 1000
        return ord(c) * 500


s = list(input())
s.sort(key=sort_key)

print("".join(s))
