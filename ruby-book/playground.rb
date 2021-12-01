module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# puts 'Alice'.shuffle

class User
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name
# puts user.shuffle
# puts 'Alice'.shuffle
