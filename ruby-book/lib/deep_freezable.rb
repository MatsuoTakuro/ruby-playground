module DeepFreezable
  def deep_freeze(array_or_hash)
    array_or_hash.each(&:freeze)
    array_or_hash.freeze
  end
end
