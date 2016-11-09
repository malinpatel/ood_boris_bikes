

class DockingStation

  attr_reader :bikes, :max_bikes

  def initialize
    @bikes = Array.new(20){Bike.new}
    @max_bikes = @bikes.size #20
  end

  def release_bike
    fail "Rack is empty" if @bikes.empty?
    return @bikes.pop
  end

  def return_bike(bike)
    fail "Rack is full" unless @bikes.size < @max_bikes
    @bikes.push bike
  end




end
