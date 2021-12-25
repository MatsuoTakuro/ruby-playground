# frozen_string_literal: true

class ObscuringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end

  # Anti pattern; this method depends on the structure of "data"!
  def diameters
    data.collect do |cell|
      # cell[0] and cell[1] must be "rim" and "tire", respectively!
      cell[0] + (cell[1] * 2)
    end
  end
end
