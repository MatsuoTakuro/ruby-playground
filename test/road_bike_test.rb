require 'minitest/autorun'

require './lib/bicycle'
require './lib/road_bike'
require './test/interface/bicycle_interface_test'
require './test/subclass/bicycle_subclass_test'

class RoadBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  include BicycleSubclassTest
  def setup
    @bike = @object = RoadBike.new(tape_color: 'red')
  end

  def test_puts_tape_color_in_local_spares
    assert_equal 'red', @bike.local_spares[:tape_color]
  end
end
