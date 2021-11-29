require 'minitest/autorun'
require './ruby-book/lib/team'
require './ruby-book/lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freezable
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
end
