

class DockingStation

  attr_reader :bikes, :max_bikes

  def initialize
    @bikes = Array.new(20){Bike.new}
    @max_bikes = @bikes.size #20
  end

  def release_bike
    fail "Rack is empty" if empty?
    return @bikes.pop
  end

  def return_bike(bike)
    fail "Rack is full" if full?
    @bikes.push bike
  end

  private
  def full?
     @bikes.size >= @max_bikes
  end

  def empty?
    @bikes.empty?
  end


end
