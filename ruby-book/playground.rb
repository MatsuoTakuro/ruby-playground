nums = [1, 2, 3, 4]
sum = nums.inject(0) { |result, n| result + n }
puts sum

range1 = 1..5
puts range1.include?(1)
puts range1.include?(2.2)
puts range1.include?(5)

range2 = 1...5
puts range2.include?(1)
puts range2.include?(2.2)
puts range2.include?(5)

p (1..5).to_a
p (1...5).to_a
