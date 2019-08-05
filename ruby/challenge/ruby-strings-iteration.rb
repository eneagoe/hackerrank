def count_multibyte_char(s)
  s.each_char.count { |c| c.bytes.size > 1 }
end

puts count_multibyte_char('¥1000')
