n = int(input())
v = list(map(int, input().split()))
print(all(x > 0 for x in v) and any(str(x) == str(x)[::-1] for x in v))
