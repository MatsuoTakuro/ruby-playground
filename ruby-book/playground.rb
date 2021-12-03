def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
end

puts some_method(1)
puts some_method(0)
