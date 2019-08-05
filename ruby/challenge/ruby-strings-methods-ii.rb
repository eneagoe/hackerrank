def mask_article(s, words)
  words.each do |word|
    s.gsub! word, strike(word)
  end
  s
end

def strike(s)
  ['<strike>', s, '</strike>'].join
end

puts strike("Meow!")
puts strike("Foolan Barik")
puts mask_article("Hello World! This is crap!", ["crap"])
