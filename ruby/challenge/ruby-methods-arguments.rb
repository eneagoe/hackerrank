def take(arr, len=1)
  n = arr.size - len
  arr.last(n)
end

puts take([1, 2, 3], 1).inspect
puts take([1, 2, 3], 2).inspect
puts take([1, 2, 3]).inspect
