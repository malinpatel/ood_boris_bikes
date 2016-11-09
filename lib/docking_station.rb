

class DockingStation

  attr_reader :bikes, :max_bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = Array.new(DEFAULT_CAPACITY){Bike.new}
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
     @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end


end
