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

    it "should return an array of Bikes when bikes is called" do
      # subject.release_bike
      expect(subject).to respond_to(:bikes)
      expect(subject.bikes.instance_of?(Array)).to eq true
    end

    it "should store the correct bike in the rack when returned" do
      subject.release_bike
      subject.return_bike(my_bike)
      expect(subject.bikes[-1]).to eq my_bike
    end

  describe "Limit catching" do
    my_bike = Bike.new

    it "should raise an error if the dock is empty" do
      expect{
        (DockingStation::DEFAULT_CAPACITY + 1).times{ subject.release_bike }
      }.to raise_error("Rack is empty")
    end

    it "should raise an error when returning a bike to a full dock" do
      expect{
        subject.return_bike(my_bike)
      }.to raise_error("Rack is full")

    end

  end

  describe "Docking Station with more than 20 racks" do
    number_of_racks = 30
    subject {dock = DockingStation.new(number_of_racks)}

    it "should have more than 20 racks" do
      expect(subject).to respond_to(:capacity)
      expect(subject.capacity).to eq number_of_racks
    end

    it "should accept 30 bikes when the dock is empty" do
      subject.instance_variable_set(:@bikes, [])
      30.times do subject.return_bike(Bike.new) end
    end
  end


end
