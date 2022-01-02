class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def spares
    {
      tire_size: tire_size,
      chain: chain
    }
      .merge(local_spares)
  end

  private

  def post_initialize(_args)
    nil
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError,
          "#{self.class} class cannot still respond to this method."
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  private

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    { tape_color: tape_color }
  end

  def default_tire_size
    '23'
  end
end

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  private

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def local_spares
    { rear_shock: rear_shock }
  end

  def default_tire_size
    '2.1'
  end
end

class RecumbentBike < Bicycle
  attr_reader :flag

  private

  def post_initialize(args)
    @flag = args[:flag]
  end

  def local_spares
    { flag: flag }
  end

  def default_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end
end

road_bike = RoadBike.new(size: 'M',
                         tape_color: 'Red')
road_bike.spares

mountain_bike = MountainBike.new(size: 'S',
                                 front_shock: 'Manitou',
                                 rear_shock: 'Fox')
mountain_bike.spares

bent_bike = RecumbentBike.new(size: 'L',
                              flag: 'tall and orange')
bent_bike.spares
