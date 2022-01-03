require './lib/bicycle'
require './lib/parts'
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

    recumbent_config =
      [
        %w[chain 9-speed],
        %w[tire_size 28],
        ['flag', 'tall and orange']
      ]

    road_parts = PartsFactory.build(road_config)
    puts road_parts.inspect

    puts '---------'
    mountain_parts = PartsFactory.build(mountain_config)
    puts mountain_parts.inspect

    puts '---------'
    recumbent_bike = Bicycle.new(
      size: 'L',
      parts: PartsFactory.build(recumbent_config)
    )
    puts recumbent_bike.spares
  end
end

Main.do_this
