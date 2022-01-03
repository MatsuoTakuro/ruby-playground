require 'minitest/autorun'
require './lib/gear'
require './lib/wheel'

class GearTest < MiniTest::Unit::TestCase
  def test_calculates_gear_inches
    gear = Gear.new(chainring: 52,
                    cog: 11,
                    rim: 26,
                    tire: 1.5)
    assert_in_delta(137.1, gear.gear_inches, 0.01)
  end
end
