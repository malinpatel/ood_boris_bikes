require 'bike'

describe Bike do
    subject {bike_one = Bike.new}
    it {should respond_to (:working?) }


  it "should check if bike is working" do
  expect(subject.working?).to eq true
  end

end
