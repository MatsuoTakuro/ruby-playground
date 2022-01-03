require './lib/bicycle'
require './lib/parts'
require './lib/part'

chain         = Part.new(name: 'chain',         description: '10-speed')
road_tire     = Part.new(name: 'road_tire',     description: '23')
tape          = Part.new(name: 'tape',          description: 'red')
mountain_tire = Part.new(name: 'mountain_tire', description: '2.1')
rear_shock    = Part.new(name: 'rear_shock',    description: 'Fox')
front_shock   = Part.new(name: 'front_shock',   description: 'Manitou', needs_spare: false)

road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(size: 'L', parts: road_bike_parts)
puts road_bike.size
puts road_bike.spares

mountain_bike_parts = Parts.new([chain, mountain_tire, rear_shock, front_shock])
mountain_bike = Bicycle.new(size: 'L', parts: mountain_bike_parts)
puts mountain_bike.size
puts mountain_bike.spares
puts mountain_bike.spares.size
puts mountain_bike.parts.size
