require 'docking_station'
require 'bike'

describe DockingStation do


    subject {docking_station = DockingStation.new}

    it "should repsond to release_bike method" do
      expect(subject).to respond_to(:release_bike)
    end

    it "should release a bike" do
      expect(subject.release_bike.instance_of?(Bike)).to eq true
    end


    it "should resond to return_bike" do
      expect(subject).to respond_to(:return_bike)
    end

    it "should have one argument in return_bike" do
      expect(subject).to respond_to(:return_bike).with(1).argument
    end

    it "should respond to bike with nil" do
      expect(subject.bike).to eq nil
    end

describe "Check if a bike is released" do
    my_bike = Bike.new
    it "should store the correct bike in the rack when returned" do
      subject.return_bike(my_bike)
      expect(subject.bike).to eq my_bike
    end




      # it { bike = Bike.new; expect(subject.return_bike(bike)).to eq bike}
    # it {bike = Bike.new; subject.return_bike(bike); expect(subject.bike).to eq bike}

  end



  # describe "Return a bike to the docking station" do
  #   subject {docking_station = DockingStation.new}
  #   it {is_expected.to respond_to (:return_bike) }
  # end

end
