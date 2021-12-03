class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @coutry = country
    super("#{message}, #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new('Invalid country name; ', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end
