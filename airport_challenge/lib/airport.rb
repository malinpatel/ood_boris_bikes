require 'plane.rb'
require 'weather.rb'

class Airport

attr_accessor :planes, :capacity, :weather

DEFAULT_CAPACITY = 50

  def initialize(capacity = DEFAULT_CAPACITY,weather)
    @planes = []
    @capacity = capacity
    @weather = weather
  end

  def land(plane)
    fail "Cannot land plane: no space." if full?
    fail "Cannot land plane: weather is stormy." if stormy?
    @planes << plane unless full?
  end

  def take_off(plane)
    fail "Cannot take off: weather is stormy." if stormy?
    fail "Cannot take off plane: plane not at this airport." unless at_airport?(plane)
    plane
  end

private

  def full?
     @planes.length >= @capacity
  end

  def stormy?
    @weather.stormy?
  end

  def at_airport?(plane)
    @planes.include?(plane)
  end

end
