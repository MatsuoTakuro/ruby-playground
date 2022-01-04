require 'minitest/autorun'

require './lib/trip_coordinator'
require './test/interface/preparer_interface_test'

class TripCoordinatorTest < MiniTest::Unit::TestCase
  include PreparerInterfaceTest
  def setup
    @mechanic = @object = TripCoordinator.new
  end
end
