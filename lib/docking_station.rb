require_relative 'bike'
class DockingStation
attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = 1
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    return @bikes
  end

  def dock_bike(bike)
    fail "The dock is full." if @bikes.length >= @capacity
    @bikes << bike
  end

end
