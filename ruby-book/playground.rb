module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

puts AwesomeApi.base_url
puts AwesomeApi.debug_mode
