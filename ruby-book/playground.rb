class Product
  @name = 'Product'

  def self.name
    @name
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class DVD < Product
  @name = 'DVD'

  def self.name
    @name
  end

  def upcase_name
    @name.upcase
  end
end

puts Product.name
puts DVD.name

product = Product.new('An great movie')
puts product.name

dvd = DVD.new('An awesome film')
puts dvd.name
puts dvd.upcase_name

puts Product.name
puts DVD.name
