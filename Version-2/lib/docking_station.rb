require_relative 'bike'
class DockingStation
  attr_reader :bikes, :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end
  def release_bike
    fail 'Sorry, no bikes available' if empty?
    @bikes.pop
  end
  def dock(bike)
    fail 'You cannot dock a bike, the docking station is full' if full?
    @bikes.push(bike)
  end

  private
  def empty?
    @bikes.empty?
  end
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
