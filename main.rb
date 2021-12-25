# frozen_string_literal: true

require './lib/gear'
require './lib/wheel'

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(52, 11, @wheel).gear_inches

puts Gear.new(52, 11).ratio
