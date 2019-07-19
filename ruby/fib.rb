def fibonacci(n)
  if n <= 1
    n
  else
    i, j = 0, 1
    i, j = j, i + j until (n = n - 1).zero?
    j
  end
end

n = gets.to_i
print(fibonacci(n))
