class Gate
  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [150, 190].freeze

  def initialize(st_name)
    @st_name = st_name
  end

  def enter(ticket)
    ticket.stamp(@st_name)
  end

  def exit?(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@st_name)
    distance = (to - from).abs
    FARES[distance - 1]
  end
end
