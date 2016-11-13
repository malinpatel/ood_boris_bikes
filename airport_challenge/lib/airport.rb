require 'plane.rb'

class Airport
#
# attr_accessor :airport, :capacity
#
# DEFAULT_CAPACITY = 50

  # def initialize(capacity = DEFAULT_CAPACITY)
  #   @airport = []
  #   @capacity = capacity
  # end

  def land(plane)
    # @airport << plane unless full?
  end

  def take_off(plane)
    # @flying = true
    # @airport.pop
  end
#
# private
#
#   def full?
#     fail "The airport is full, cannot land here!" if @airport.length >= @capacity
#   end

end
