require 'minitest/autorun'

require './lib/wheel'
require './test/interface/diameterizable_interface_test'

class WheelTest < MiniTest::Unit::TestCase
  include DiameterizableInterfaceTest
  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end

  def test_implements_the_diameterizable_interface
    assert_respond_to(@wheel, :width)
  end

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)
    assert_in_delta(29, wheel.width, 0.01)
  end
end
