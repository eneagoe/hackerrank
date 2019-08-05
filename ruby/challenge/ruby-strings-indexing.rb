def serial_average(s)
  /(?<code>\w{3})-(?<x>[\d|\.]+)-(?<y>[\d|\.]+)/ =~ s
  avg = ((Float(x) + Float(y)) / 2).round(2)
  "#{code}-%.2f" % avg
end

puts serial_average('002-10.00-20.00')
puts serial_average('102-11.50-23.80')
