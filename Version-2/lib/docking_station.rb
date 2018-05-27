require_relative 'bike'
class DockingStation
  attr_reader :bikes, :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.length >= @capacity
  end
end
