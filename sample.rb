class Gear
  attr_reader :teeth_on_chainring, :teeth_on_cog, :dia_rim, :thickness_tire

  def initialize(teeth_on_chainring, teeth_on_cog, dia_rim, thickness_tire)
    @teeth_on_chainring = teeth_on_chainring
    @teeth_on_cog = teeth_on_cog
    @dia_rim = dia_rim
    @thickness_tire = thickness_tire
  end

  def ratio
    teeth_on_chainring / teeth_on_cog.to_f
  end

  def gear_inches
    ratio * (dia_rim + (thickness_tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(52, 11, 24, 1.25).gear_inches

puts Gear.new(52, 11).ratio
