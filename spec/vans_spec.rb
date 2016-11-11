require 'docking_station'

describe Van do

it "should not collect a working bike" do
  bike = Bike.new
  expect{subject.collect_broken_bike(bike)}.to raise_error("This bike still works")
end

it "should collect a broken bike" do
  bike = Bike.new
  bike.report_broken
  expect(subject.collect_broken_bike(bike)).to eq bike
end

end
