# In spec/docking_station_spec.rb
require_relative "../lib/docking_station.rb"

describe DockingStation do
  docking_station = DockingStation.new
  it 'responds to release_bike' do
    expect(docking_station).to respond_to :release_bike
    end
  it 'respond to dock?' do
    expect((docking_station).dock?("bike")).to eq "bike" 
  end

end
