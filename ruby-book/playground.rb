add_proc = proc { |a, b| a.to_i + b.to_i }
puts add_proc.call(10)
puts add_proc.call(10, 20)
puts add_proc.call(10, 20, 30)

add_lamda = ->(a, b) { a.to_i + b.to_i }
puts add_lamda.call(10)
puts add_lamda.call(10, 20)
puts add_lamda.call(10, 20, 30)
