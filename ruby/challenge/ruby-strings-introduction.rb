def single_quote
  'Hello World and others!'
end

def double_quote
  "Hello World and others!"
end

def here_doc
  <<-HELLO
Hello World and others!
  HELLO
end

puts single_quote
puts double_quote
puts here_doc
