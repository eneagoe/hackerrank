def convert_temp(n, input_scale:, output_scale: 'celsius')
  n = case input_scale
      when 'celsius'
        n + 273.15
      when 'fahrenheit'
        5/9r * (n - 32) + 273.15
      else
        n
      end
  case output_scale
  when 'celsius'
    n - 273.15
  when 'fahrenheit'
    (n - 273.15) * 1.8 + 32
  else
    n
  end
end


puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
