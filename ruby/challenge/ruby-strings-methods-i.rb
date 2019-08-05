def process_text(sentences)
  sentences.map { |s| s.strip.chomp }.join(" ")
end
