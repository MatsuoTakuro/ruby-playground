require 'minitest/autorun'
require './ruby-book/lib/convert_length'

class ConvetLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37,    convert_length(1, 'm', 'in')
    assert_equal 0.38,     convert_length(15, 'in', 'm')
    assert_equal 106_70.73, convert_length(35_000, 'ft', 'm')
  end
end
