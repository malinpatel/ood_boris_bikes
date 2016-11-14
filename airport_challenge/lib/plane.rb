require './lib/airport.rb'


class Plane

  def initialize
    @flying = true
  end

  def take_off
    raise 'Plane cannot take off: already flying.' unless @flying
    @flying = false
  end

  def land
  end

  def airport
    raise 'Plane cannot be at airport: already flying.'
  end
end
