# frozen_string_literal: true

class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(**arg)
    @bicycles  = arg[:bicycles]
    @customers = arg[:customers]
    @vehicle   = arg[:vehicle]
  end

  # The "mechanism" argument can be any class.
  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end

  def buy_food(customers)
    customers.each do |customer|
      puts "#{customer} has an option to buy some food in this #{self.class.name.downcase}."
    end
  end
end

# all preparers is ducks reponsing to prepare_trip method
class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts "#{bicycle} has got arranged by the #{self.class.name.downcase} in charge."
  end
end

class TripCoordinator
  def prepare_trip(trip)
    trip.buy_food(trip.customers)
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    puts "#{vehicle} has got gased up by the #{self.class.name.downcase} in charge."
  end

  def fill_water_tank(vehicle)
    puts "The water tank of #{vehicle} has got filled with water by the #{self.class.name.downcase} in charge."
  end
end

trip = Trip.new(bicycles: %w[A_bike B_bike C_bike],
                customers: %w[A_san B_san C_san],
                vehicle: 'A_car')

trip.prepare([Mechanic.new, TripCoordinator.new, Driver.new])

# John = Mechanic.new
# Kevin = TripCoordinator.new
# Smith = Driver.new
