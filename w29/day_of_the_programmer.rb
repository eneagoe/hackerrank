#!/usr/bin/env ruby -w

def leap_year?(year)
  if year <= 1917
    year % 4 == 0
  else
    year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  end
end

y = gets.strip.to_i

if y != 1918
  days = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31
else
  days = 31 + 14 + 31 + 30 + 31 + 30 + 31 + 31
end
days += 1 if leap_year?(y)

programmer_day = 256 - days

puts [programmer_day, '09', y].join('.')
