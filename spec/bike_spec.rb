require 'bike'

describe Bike do
    subject {bike_one = Bike.new}
    it {should respond_to (:working?) }


  it "should check if bike is working" do
  expect(subject.working?).to eq true
  end

  describe "checks if bike can be broken" do
    subject{Bike.new}

    it "should start working" do
      expect(subject.working?).to eq true
    end

    it "should be broken" do
      expect(subject.break!).to eq false
    end

    it "should now not be working" do
      subject.break!
      expect(subject.working?).to eq false
    end

  end

end
