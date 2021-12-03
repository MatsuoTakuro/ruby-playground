def greeting1
  puts 'Good Morning1'
  yield if block_given?
  puts 'Good Evening1'
end

greeting1

greeting1 do
  puts 'Hello1'
end

def greeting2
  puts 'Good Morning2'
  text = yield 'Hello2 '
  puts text
  puts 'Good Evening2'
end

greeting2 do |text|
  text * 2
end

def greeting3
  puts 'Good Morning3'
  text = yield 'Hello3', 12345
  puts text
  puts 'Good Evening3'
end

greeting3 do |text|
  text * 2
end

def greeting4
  puts 'Good Morning4'
  text = yield 'Hello4'
  puts text
  puts 'Good Evening4'
end

greeting4 do |text, other|
  text * 2 + other.inspect
end
