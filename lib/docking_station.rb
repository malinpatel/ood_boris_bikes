require_relative 'bike'
class DockingStation
attr_reader :bikes

  def release_bike
    Bike.new
  end

  def dock_bike(bike_name)
    @bikes = bike_name
  end

end
