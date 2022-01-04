class Mechanic
  # Implement public interface of "prepare_trip"
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts "#{bicycle} has got arranged by the #{self.class.name.downcase} in charge."
  end
end
