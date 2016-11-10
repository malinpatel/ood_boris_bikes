require_relative 'bike'
class DockingStation
attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "The dock is full." if @bikes.length >= @capacity
    @bikes << bike
  end

end
