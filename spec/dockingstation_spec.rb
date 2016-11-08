require 'docking_station'

RSpec.describe DockingStation do
  describe "when first created" do
    it { should respond_to (release_bike) }
  end
end
