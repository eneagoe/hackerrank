add a b = a + b

main = do
  a <- readLn
  b <- readLn
  let sum = add a b
  print sum
