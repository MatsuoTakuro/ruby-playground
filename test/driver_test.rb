require 'minitest/autorun'

require './lib/driver'
require './test/interface/preparer_interface_test'

class DriverTest < MiniTest::Unit::TestCase
  include PreparerInterfaceTest
  def setup
    @mechanic = @object = Driver.new
  end
end
