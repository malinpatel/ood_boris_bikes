require './lib/plane.rb'
require './lib/airport.rb'

describe Plane do
  subject (:plane) {described_class.new}
  let (:airport) {double :airport}

    describe '#take off' do
      it {is_expected.to respond_to :take_off}
    end

    it 'raises and error if already flying' do
      expect {plane.take_off}.to raise_error 'Plane cannot take off: already flying.'
    end

end
