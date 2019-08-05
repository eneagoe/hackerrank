def full_name(first_name, *middle_names, last_name)
  [first_name, *middle_names, last_name].join(' ')
end

puts full_name('Harsha', 'Bhogle')
puts full_name('Pradeep', 'Suresh', 'Satyanarayana')
puts full_name('Horc', 'G.', 'M.', 'Moon')
