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
      @bike
    end
  end

  def dock?(bike)
    if @bike == bike
      raise "Sorry, dock occupied."
    else
      bike
    end
  end
end
