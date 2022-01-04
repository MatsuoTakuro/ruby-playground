require 'minitest/autorun'

require './test/double/diameter_double'
require './test/interface/diameterizable_interface_test'

class DiameterDoubleTest
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end
