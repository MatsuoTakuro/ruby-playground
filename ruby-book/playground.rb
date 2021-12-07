def judge(age)
  adult = Proc.new { |n| n > 20 }
  child = Proc.new { |n| n < 20 }

  case age
    when adult
      'You are an adult.'
    when child
      'You are a child.'
    else
      'You are 20 years old.'
  end
end

puts judge(25)
puts judge(18)
puts judge(20)
