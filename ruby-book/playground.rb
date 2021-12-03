File.open('some.txt', 'w') do |file|
  file << 'Hello'
  1 / 0
end
