require 'plane.rb'

class Airport

attr_accessor :planes, :capacity

DEFAULT_CAPACITY = 50

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    fail "No space to land, need a plane to take off first." if full?
    fail "Cannot land plane: weather is stormy." if stormy?
    @planes << plane unless full?
  end

  def take_off(plane)
    fail "Cannot take off: weather is stormy." if stormy?
  end

private

  def full?
     @planes.length >= @capacity
  end

  def stormy?
    rand(1..6) > 4
  end

end
