class TripCoordinator
  # Implement public interface of "prepare_trip"
  def prepare_trip(trip)
    trip.buy_food(trip.customers)
  end
end
