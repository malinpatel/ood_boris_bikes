require './lib/airport.rb'


class Plane
  def take_off
    raise 'Plane cannot take off: already flying.'
  end

  def airport
    raise 'Plane cannot be at airport: already flying.'
  end
end
