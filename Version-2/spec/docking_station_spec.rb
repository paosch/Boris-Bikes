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
    it 'raises error when no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  it { is_expected. to respond_to(:dock).with(1).argument }
  it { is_expected. to respond_to(:bike) }
  it 'docks bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end
