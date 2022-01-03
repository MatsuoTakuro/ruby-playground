require './lib/bicycle'
require './lib/parts'
require './lib/part'
require './lib/parts_factory'

class Main
  include PartsFactory

  def self.do_this
    road_config =
      [
        %w[chain 10-speed],
        %w[tire_size 23],
        %w[tape_color red]
      ]

    mountain_config =
      [
        %w[chain 10-speed],
        %w[tire_size 2.1],
        ['front_shock', 'Maintou', false],
        %w[rear_shock Fox]
      ]

    road_parts = PartsFactory.build(road_config)
    puts road_parts
    mountain_parts = PartsFactory.build(mountain_config)
    puts mountain_parts
  end
end

Main.do_this
