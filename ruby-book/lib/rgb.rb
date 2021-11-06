def to_hex(red, green, blue)
  [red, green, blue].inject('#') do |hex, n|
    hex.concat(n.to_s(16).rjust(2, '0'))
  end
end

puts to_hex(9, 10, 11)

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

p to_ints('#090a0b')
