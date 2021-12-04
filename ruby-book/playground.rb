def greeting(&block)
  puts 'Good Morning'
  text =
    case block.arity
    when 1
      yield 'Hello'
    when 2
      yield 'Hel', 'lo'
    end
  puts text
  puts 'Good Evening'
end

greeting do |text|
  text * 2
end

greeting do |text1, text2|
  text1 * 2 + text2 * 2
end
