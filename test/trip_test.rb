require 'minitest/autorun'

require './lib/trip'

class TripTest < MiniTest::Unit::TestCase
  def test_requests_trip_preparation
    @preparer = MiniTest::Mock.new
    # @trip = Trip.new(
    #   bicycles: %w[A_bike B_bike C_bike],
    #   customers: %w[A_san B_san C_san],
    #   vehicle: 'A_car'
    # )
    @trip = Trip.new
    @preparer.expect(:prepare_trip, nil, [@trip])

    @trip.prepare([@preparer])
    @preparer.verify
  end
end
