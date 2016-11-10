require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to "release_bike" }
  it "creates an instance of class Bike, and checks it is working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bikes' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

end
