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
      subject.release_bike
      expect(subject.bike).to eq nil
    end

  describe "Check if a bike is released" do
    my_bike = Bike.new
    it "should store the correct bike in the rack when returned" do
      subject.return_bike(my_bike)
      expect(subject.bike).to eq my_bike
    end

  end

  it "should raise an error if the dock is empty" do
    expect(subject.release_bike.instance_of?(Bike)).to eq true
    expect{subject.release_bike}.to raise_error("EmptyRackError")
  end
end
