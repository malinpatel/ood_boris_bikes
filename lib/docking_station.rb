

class DockingStation

  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    fail "Rack is empty" if @bike.nil?
    bike = @bike
    @bike = nil
    return bike
  end

  def return_bike(bike)
    fail "Rack is full" unless @bike.nil?
    @bike = bike
  end




end
