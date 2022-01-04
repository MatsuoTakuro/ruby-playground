class Driver
  # Implement public interface of "prepare_trip"
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
