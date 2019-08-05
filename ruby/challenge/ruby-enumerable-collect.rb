def rot13(secret_messages)
  secret_messages.map do |message|
    message.each_char.map do |c|
      if c =~ /[a-z]/
        c = ((c.ord + 13 - 'a'.ord) % 26 + 'a'.ord).chr
      elsif c =~ /[A-Z]/
        c = ((c.ord + 13 - 'A'.ord) % 26 + 'A'.ord).chr
      else
        c
      end
    end.join('')
  end
end

puts rot13(['Jul qvq gur puvpxra pebff gur ebnq?', 'Gb trg gb gur bgure fvqr!'])
