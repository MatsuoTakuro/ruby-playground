class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def stock?
    raise 'Must implement stock? in subclass'
  end

  def display_text
    stock = stock? ? 'exists' : 'none'
    puts "Item's name: #{@name}, price: #{@price}, stock: #{stock}"
  end
end

class DVD < Product
  def stock?
    true
  end
end

product = Product.new('A great film', 1000)

# product.display_text

dvd = DVD.new('An awesome film', 3000)
dvd.display_text
