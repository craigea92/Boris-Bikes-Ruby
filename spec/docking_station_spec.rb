require 'docking_station'

describe DockingStation do
    
    describe 'initialization' do
        subject { DockingStation.new }
        let(:bike) { Bike.new }
        it 'defaults capacity' do
          described_class::DEFAULT_CAPACITY.times do
            subject.dock(bike)
          end
            expect{ subject.dock(bike) }.to raise_error 'Docking Station Full'
        end
        
        it 'has a variable capacity' do
            docking_station = DockingStation.new(50)
            50.times { docking_station.dock Bike.new }
            expect{ docking_station.dock Bike.new }.to raise_error 'Docking Station Full'
        end
    end

    describe '#releases' do
        it 'a bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end

        it 'raises an error when there are no bikes available' do
            expect { subject.release_bike }.to raise_error 'No Bikes Available'
        end
    end

    describe '#docks' do
        it 'a bike' do
            bike = Bike.new
            expect(subject.dock(bike)).to eq [bike]
        end

        it 'raises an error when full' do
            subject.capacity.times { subject.dock Bike.new }
            expect { subject.dock Bike.new }.to raise_error 'Docking Station Full'
        end
    end
end
