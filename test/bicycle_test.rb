require 'minitest/autorun'

require './lib/bicycle'
require './test/stub/stubbed_bike'
require './test/interface/bicycle_interface_test'

class BicycleTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  def setup
    @bike = @object = Bicycle.new({ tire_size: 0 })
    @stubbed_bike = StubbedBike.new
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) { @bike.default_tire_size }
  end

  def test_includes_local_spares_in_spares
    assert_equal @stubbed_bike.spares, {
      tire_size: 0,
      chain: '10-speed',
      saddle: 'painful'
    }
  end
end
