require './lib/plane.rb'
require './lib/airport.rb'

describe Airport do

  subject(:airport) {described_class.new(weather)}
  let(:plane) {double :plane}
  let(:weather) {double :weather}

  describe 'landing' do
    context 'when not stormy' do
      before do
        allow(weather).to receive(:stormy?).and_return false
      end
        it 'instructs planes to take off' do
          expect(airport).to respond_to(:land).with(1).argument
        end
          context 'when airport is full' do
            it 'prevents planes from landing' do
              airport.capacity.times {airport.land(plane)}
              expect{airport.land(plane)}.to raise_error("Cannot land plane: no space.")
            end
          end
        end
      end
      context 'when stormy' do
        before do
          allow(weather).to receive(:stormy?).and_return true
        end
        it 'prevents planes landing' do
          expect{airport.land(plane)}.to raise_error("Cannot land plane: weather is stormy.")
      end
    end


  describe 'taking off' do
      context 'when weather is not stormy' do

        before do
          allow(weather).to receive(:stormy?).and_return false
        end

          it 'tells planes to take off' do
            expect(airport).to respond_to(:take_off).with(1).argument
          end

          it 'returns a plane that took off' do
            airport.land(plane)
            expect(airport.take_off(plane)).to eq plane
          end

          it 'takes off planes only from the airport they are at' do
            airport_2 = Airport.new(Weather.new)
            airport_2.land(plane)
            expect {airport.take_off(plane)}.to raise_error("Cannot take off plane: plane not at this airport.")
          end

          it 'flying planes cannot take off' do
            airport.land(plane)
            flying_plane = airport.take_off(plane)
            expect {flying_plane.take_off(plane)}.to raise_error("Plane cannot take off: already flying.")
          end

      end

        context 'when weather is stormy' do
          before do
            allow(weather).to receive(:stormy?).and_return true
          end
            it 'raises an error' do
            expect{airport.take_off(plane)}.to raise_error("Cannot take off: weather is stormy.")
            end
        end
end
end
