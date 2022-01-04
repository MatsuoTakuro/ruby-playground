require './lib/bicycle'
require './test/stub/stubbed_bike'
require './test/subclass/bicycle_subclass_test'

class StubbedBikeTest < MiniTest::Unit::TestCase
  include BicycleSubclassTest

  def setup
    @object = StubbedBike.new
  end
end
