def skip_animals(animals, skip)
  animals.each_with_index.map { |animal, idx| "#{idx}:#{animal}" }.drop(skip)
end

puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2).inspect
