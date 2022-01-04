require 'minitest/autorun'

require './lib/mechanic'
require './test/interface/preparer_interface_test'

class MechanicTest < MiniTest::Unit::TestCase
  include PreparerInterfaceTest
  def setup
    @mechanic = @object = Mechanic.new
  end
end
