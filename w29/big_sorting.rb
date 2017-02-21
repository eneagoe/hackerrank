#!/usr/bin/env ruby -w

n = gets.strip.to_i
unsorted = Array.new(n)
for unsorted_i in (0..n-1)
    unsorted[unsorted_i] = gets.strip.to_i
end
puts unsorted.sort
