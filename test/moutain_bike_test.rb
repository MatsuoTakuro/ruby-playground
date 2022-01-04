require 'minitest/autorun'

require './lib/bicycle'
require './lib/mountain_bike'
require './test/interface/bicycle_interface_test'
require './test/subclass/bicycle_subclass_test'

class MountainBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  include BicycleSubclassTest
  def setup
    @bike = @object = MountainBike.new
  end
end
