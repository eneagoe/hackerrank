def sum_terms(n)
  # (1..n).reduce { |s, i| i**2 + 1 }
  n * (n + 1) * (2 * n + 1) / 6 + n
end
