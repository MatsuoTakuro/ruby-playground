def method_1
  puts 'method_1 starts.'
  begin
    method_2
  rescue
    puts 'An exception was raised.'
  end
  puts 'method_1 ends.'
end

def method_2
  puts 'method_2 starts.'
  method_3
  puts 'method_2 ends.'
end

def method_3
  puts 'method_3 starts.'
  1 / 0
  puts 'method_3 ends.'
end

method_1
