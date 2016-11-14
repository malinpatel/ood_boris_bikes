require './lib/plane.rb'
require './lib/airport.rb'

describe Plane do
  subject (:plane) {described_class.new}
  let (:airport) {double :airport}

    describe '#take off' do
      it 'raises an error if trying to take off while already flying' do
        expect{plane.take_off}.to raise_error 'Plane cannot take off: already flying.'
      end
    end

    describe '#airport' do
      it 'raises an error if already flying' do
        plane = Plane.new
        plane.flying
        expect{plane.airport}.to raise_error 'Plane cannot be at airport: already flying.'
      end
    end

    describe '#land' do
      it {is_expected.to respond_to :land}

      it  'raises an error if already landed' do
        plane.land
        expect {plane.land}.to raise_error 'Plane cannot land: plane already landed.'
      end
    end
end
