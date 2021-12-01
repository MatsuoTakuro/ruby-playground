retry_count = 0
begin
  puts 'process begins.'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retry this process #{retry_count}"
    retry
  else
    puts 'failed to retry it'
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "invalid country #{country}"
  end
end

puts currency_of(:japan)
puts currency_of(:italy)
