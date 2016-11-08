require 'docking_station'

describe DockingStation do

  describe "Check if a bike is released" do
  subject {docking_station = DockingStation.new}
    it {is_expected.to respond_to (:release_bike) }
  end

  describe "Check if bike is working" do
    subject {bike_one = Bike.new}
    it {is_expected.to respond_to (:working?)}
  end
  


end
