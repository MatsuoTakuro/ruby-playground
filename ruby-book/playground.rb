fs = %w[apple melon orange]
nums = [1, 2, 3]
catch :done do
  fs.each do |f|
    nums.shuffle.each do |n|
      puts "#{f}, #{n}"
      throw :done if f == 'orange' && n == 3
    end
  end
end
