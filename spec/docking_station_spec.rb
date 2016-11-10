require 'docking_station'

describe DockingStation do
  

  it "creates an instance of class Bike, and checks it is working" do
    bike = subject.dock_bike(Bike.new)
    expect(bike).to be_working
  end

  it 'checks that it docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'only releases bike when there is a bike available' do
    expect{subject.release_bike}.to raise_error("No bikes available")
  end

end
