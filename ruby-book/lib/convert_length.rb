UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze # Ratios converted to meters
def convert_length(length, from: :unit, to: :unit)
  (length / UNITS[from] * UNITS[to]).round(2)
end
