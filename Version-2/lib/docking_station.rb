require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end
  def release_bike
    fail 'Sorry, no bikes available' if @bikes.empty?
    @bikes.pop
  end
  def dock(bike)
    fail 'You cannot dock a bike, the docking station is full' if @bikes.length >= 20
    @bikes.push(bike)
  end
end
