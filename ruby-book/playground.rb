module Loggable

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  log 'Defined Product class.'

  def self.create_products(names)
    log 'crete_products is called.'
  end

  def title
    puts 'A greate movie'
  end
end

class User
  include Loggable
  def name
    log 'name is called.'
    puts 'Alice'
  end
end

product = Product.new
product.title
Product.create_products([])
Product.log('Hello.')

user = User.new
user.name
