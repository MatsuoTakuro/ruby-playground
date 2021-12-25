# frozen_string_literal: true

require './lib/gear'
require './lib/wheel'

puts Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches
