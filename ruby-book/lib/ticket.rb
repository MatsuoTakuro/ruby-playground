class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(depart_st_name)
    @stamped_at = depart_st_name
  end
end
