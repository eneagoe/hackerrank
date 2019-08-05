# print an array of the first n palindromic prime numbers
require 'prime'

n = gets.to_i

puts Prime.lazy.select { |p| p.to_s == p.to_s.reverse }.take(n).force.inspect
