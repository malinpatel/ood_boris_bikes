require 'docking_station'
require 'bike'

describe DockingStation do


    subject {docking_station = DockingStation.new}
    my_bike = Bike.new

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
      subject.release_bike
      expect(subject.bike).to eq nil
    end

    it "should store the correct bike in the rack when returned" do
      subject.release_bike
      subject.return_bike(my_bike)
      expect(subject.bike).to eq my_bike
    end

  describe "Check if dock is full" do
    my_bike = Bike.new

    it "should raise an error if the dock is empty" do
      expect(subject.release_bike.instance_of?(Bike)).to eq true
      expect{subject.release_bike}.to raise_error("Rack is empty")
    end

    it "should raise an error when returning a bike to a full dock" do
      expect{subject.return_bike(my_bike)}.to raise_error("Rack is full")
    end

  end

end
