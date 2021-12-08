split_proc = :split.to_proc
p split_proc

p split_proc.call('a-b-c-d d')
p 'a-b-c-d d'.split

p split_proc.call('a-b-c-d d', '-', 3)
p 'a-b-c-d d'.split('-', 3)

def generate_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end

values = []
sample_proc = generate_proc(values)
p values

sample_proc.call
p values

sample_proc.call
p values

sample_proc.call
p values

sample_proc.call
p values

def proc_return
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = ->(n) { return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

puts proc_return
puts lambda_return

# def proc_break
#   f = Proc.new { |n| break n * 10 }
#   ret = [1, 2, 3].map(&f)
#   "ret: #{ret}"
# end

def lambda_break
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

# puts proc_break
puts lambda_break
