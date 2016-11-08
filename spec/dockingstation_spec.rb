require 'docking_station'

describe DockingStation do

  describe "Check if a bike is released" do
  subject {docking_station = DockingStation.new}
    it {is_expected.to respond_to(:release_bike) }
    it { bike = Bike.new; expect(subject.return_bike(bike)).to eq bike}
    it {bike = Bike.new; subject.return_bike(bike); expect(subject.bike).to eq bike}

  end

  describe "Check if bike is working" do
    subject {bike_one = Bike.new}
    it {is_expected.to respond_to (:working?)}
  end

  # describe "Return a bike to the docking station" do
  #   subject {docking_station = DockingStation.new}
  #   it {is_expected.to respond_to (:return_bike) }
  # end

end
