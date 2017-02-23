#!/usr/bin/env ruby -w

require 'prime'

first, last = gets.strip.split(' ')
first = first.to_i
last = last.to_i

prime_digit_primes = 0
prime_digit_primes += 1 if first == 1
prime_digit_primes += 1 if (first..last).cover?(5)

first += 1 if first.even?
(first..last).step(2) do |i|
  n = i
  next if n % 5 == 0
  f = while n > 0
        n, r = n.divmod(10)
        break true if r == 0 || r == 1 || r == 4 || r == 6 || r == 8 || r == 9
      end
  next if f

  prime_digit_primes += 1 if i.prime?
end

puts prime_digit_primes
