

class DockingStation

  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    fail "EmptyRackError" if @bike.nil?
    bike = @bike
    @bike = nil
    return bike
  end

  def return_bike(bike)
    @bike = bike
  end




end
