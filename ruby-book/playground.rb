puts Time.new(2017, 1, 31, 23, 30, 59)

require 'date'
puts Date.new(2017, 1, 31)
puts DateTime.new(2017, 1, 31, 23, 30, 59)

puts File.exist?('./ruby-book/lib/fizz_buzz.rb')
puts Dir.exist?('./ruby-book')

File.open('./ruby-book/lib/fizz_buzz.rb', 'r') do |f|
  puts f.readlines.count
end

File.open('./some.txt', 'w') do |f|
  f.puts 'Hello, world!'
end

require 'fileutils'
# FileUtils.mv('./some_mv.txt', './some_mv2.txt')

require 'pathname'
lib = Pathname.new('./ruby-book/lib')
puts lib.file?
puts lib.directory?
puts lib.join('some2.txt').to_s
