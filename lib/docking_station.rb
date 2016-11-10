require_relative 'bike'
class DockingStation
attr_reader :bikes, :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    @bikes.pop unless empty?
  end

  def dock_bike(bike)
    @bikes << bike unless full?
  end

  private

  def full?
    fail "The dock is full." if @bikes.length >= @capacity
  end
  def empty?
    fail "No bikes available" if @bikes.empty?
  end

end
