require './lib/plane.rb'
require './lib/airport.rb'

describe Airport do

  subject(:airport) {described_class.new}
  let(:plane) {double :plane}

  describe 'Landing planes' do

    it 'instructs planes to take off' do
      expect(airport).to respond_to(:land).with(1).argument
    end

    # it 'should confirm a plane has landed' do
    #   airport.land(plane)
    #   expect(airport.airport).to eq([plane])
    # end

    it 'should prevent planes from landing when the airport is full' do
      airport.capacity.times {airport.land(plane)}
      expect{airport.land(plane)}.to raise_error("The airport is full, cannot land here!")
    end

  end

  describe 'Planes taking off' do

    it 'should tell planes to take off' do
      expect(airport).to respond_to(:take_off).with(1).argument
    end

    # it 'should confirm a plane has taken off' do
    #   airport.take_off(plane)
    #   expect(subject.take_off(plane)).to eq(plane)
    # end
  end

  # describe 'The capacity of the airports can be changed' do
  #   expect(subject.new(60).capacity).to eq(60)
  # end

end
