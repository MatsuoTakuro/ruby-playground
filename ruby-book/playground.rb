require 'singleton'

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    @base_url = ''
    @debug_mode = false
  end
end

# config = Configuration.new
config = Configuration.instance

config.base_url = 'http://example.com'
config.debug_mode = true

puts config.base_url
puts config.debug_mode

other = Configuration.instance
puts other.base_url
puts other.debug_mode

puts config.object_id
puts other.object_id
puts config.equal?(other)
