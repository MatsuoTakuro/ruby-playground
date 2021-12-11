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

require 'csv'
CSV.open('./ruby-book/lib/sample.csv', 'w') do |csv|
  csv << %w[Name Email Age]
  csv << ['Alice1', 'alice1@example.com', 21]
  csv << ['Alice2', 'alice2@example.com', 22]
end

CSV.foreach('./ruby-book/lib/sample.csv', col_sep: ',') do |row|
  puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
end

CSV.foreach('./ruby-book/lib/sample.tsv', col_sep: ' ') do |row|
  puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
end

require 'json'
user = { name: 'Alice', email: 'alice@example.com', age: 20 }
user_json = user.to_json
puts "json:\n#{user_json}"
puts "json to hash:\n#{JSON.parse(user_json)}"

require 'yaml'
yaml = <<~TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

users = YAML.load(yaml)
puts "yaml to hash:\n#{users}"
users['alice']['gender'] = :female
puts "yaml:\n#{YAML.dump(users)}"
