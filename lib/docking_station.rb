class Bike
  def working?
    true
  end
end


class DockingStation
  attr_reader :bike
  def release_bike
    if @bike == nil
      raise Exception.new ("Sorry, no bikes available")
    else
      Bike.new
    end
  end

  def dock?(bike)
    @bike = bike
  end
end
