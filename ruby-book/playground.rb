def greeting_ja(&block)
  texts = ['Ohayo', 'Konnichiwa', 'Konbanwa']
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['Good Morning', 'Hello', 'Good Evening']
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en(&:upcase)
