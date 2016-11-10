require_relative 'bike'
class DockingStation
attr_reader :bike

  def initialize
    @bike 
  end


  def release_bike
    fail "No bikes available" if @bike.nil?
    return @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
