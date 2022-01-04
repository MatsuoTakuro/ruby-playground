class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(**arg)
    @bicycles  = arg[:bicycles]
    @customers = arg[:customers]
    @vehicle   = arg[:vehicle]
  end

  def prepare(preparers)
    preparers.each do |preparer|
      # define public interface of "prepare_trip"
      preparer.prepare_trip(self)
    end
  end

  def buy_food(customers)
    customers.each do |customer|
      puts "#{customer} has an option to buy some food in this #{self.class.name.downcase}."
    end
  end
end
