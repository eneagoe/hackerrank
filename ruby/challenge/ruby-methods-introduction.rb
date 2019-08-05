def prime?(n)
  return false if n == 1
  return true if n == 2
  return false if (n % 2).zero?

  i = 3
  while i * i <= n
    return false if (n % i).zero?

    i += 2
  end

  true
end

puts prime?(3)
puts prime?(17)
puts prime?(22)
