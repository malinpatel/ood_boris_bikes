require 'docking_station'

describe DockingStation do

  it 'has a default capacity' do
    expect(subject.capacity).to eq 20
  end

  describe '#dock_bike' do
    it "creates an instance of class Bike, and checks it is working" do
      bike = subject.dock_bike double :bike
      expect(bike.pop).to be_working
    end

    it 'checks that it docks a bike' do
      bike = double :bike
      expect(subject.dock_bike(bike)).to eq([bike])
    end

    it 'stops bikes being docked if the dock is full' do
      subject.capacity.times {subject.dock_bike double :bike}
      expect{subject.dock_bike(double :bike)}.to raise_error("The dock is full.")
    end
  end

  describe '#release_bike' do
    it 'only releases bike when there is a bike available' do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end
  end




end
