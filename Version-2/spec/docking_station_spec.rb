require 'docking_station'

RSpec.describe DockingStation do
  it { is_expected. to respond_to(:dock).with(1).argument }
  it { is_expected. to respond_to(:bike) }
  it { is_expected. to respond_to :release_bike }
  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'releases working bikes' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to be bike
    end
    it "it doesn't release broken bikes" do
      bike = double(:bike)
      allow(bike).to receive(:broken?).and_return(true)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'Sorry, this bike is broken'
    end
    it 'releases docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
    it 'raises error when no bikes available' do
      @bikes = []
      expect { subject.release_bike }.to raise_error 'Sorry, no bikes available'
    end
  end

  describe '# dock' do
    it 'docks bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'raises error when docking station full' do
      subject.capacity.times { subject.dock double :bike }
      expect { subject.dock double (:bike) }.to raise_error 'You cannot dock a bike, the docking station is full'
    end
  end

  describe 'initialization' do
    it 'capacity can be set on initialization' do
      station = DockingStation.new(50)
      50.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error 'You cannot dock a bike, the docking station is full'
    end
    it 'capacity defaults if no value given on initialization' do
      station = DockingStation.new
      described_class::DEFAULT_CAPACITY.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error 'You cannot dock a bike, the docking station is full'
    end
  end
end
