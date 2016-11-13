require './lib/plane.rb'
require './lib/airport.rb'

describe Airport do

  subject(:airport) {described_class.new}
  let(:plane) {double :plane}

  describe 'Landing planes' do

    it 'instructs planes to take off' do
      allow(airport).to receive(:stormy?).and_return false
      expect(airport).to respond_to(:land).with(1).argument
    end

    it 'should prevent planes from landing when the airport is full' do
      allow(airport).to receive(:stormy?).and_return false
      airport.capacity.times {airport.land(plane)}
      expect{airport.land(plane)}.to raise_error("No space to land, need a plane to take off first.")
    end

    it 'prevents planes landing when stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect{airport.land(plane)}.to raise_error("Cannot land plane: weather is stormy.")
    end

  end

  describe 'Planes taking off' do

    it 'should tell planes to take off' do
      allow(airport).to receive(:stormy?).and_return false
      expect(airport).to respond_to(:take_off).with(1).argument
    end

    it 'raises an error when trying to land the plane when stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect{airport.take_off(plane)}.to raise_error("Cannot take off: weather is stormy.")
    end

  # describe 'The capacity of the airports can be changed' do
  #   expect(subject.new(60).capacity).to eq(60)
  # end
  end
end 
