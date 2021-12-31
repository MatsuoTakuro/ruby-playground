# frozen_string_literal: true

class Trip
  attr_reader :bicycles, :customers, :vehicle

  # The "mechanism" argument can be any class.
  def prepare(preparers)
    preparers.each do |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    end
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts bicycle
  end
end

class TripCoordinator
  def buy_food(customers)
    puts customers
  end
end

class Driver
  def gas_up(vehicle)
    puts vehicle
  end

  def fill_water_tank(vehicle)
    puts vehicle
  end
end
