require 'docking_station'

RSpec.describe DockingStation do
  it { is_expected. to respond_to :release_bike }
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'releases working bikes' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end
    it 'releases docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
    it 'raises error when no bikes available' do
      expect { subject.release_bike }.to raise_error 'Sorry, no bikes available'
    end
  end

  it { is_expected. to respond_to(:dock).with(1).argument }
  it { is_expected. to respond_to(:bike) }

  describe '# dock' do
    it 'docks bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'raises error when docking station full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'You cannot dock a bike, the docking station is full'
    end
  end
end
